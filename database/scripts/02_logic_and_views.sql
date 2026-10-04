-- ================================================================
-- 02_logic_and_views.sql
-- Sistema de Gestión de Salón de Belleza - MySQL 8.0+
-- Actividades 1 y 2: vistas avanzadas y procedimiento transaccional
-- ================================================================

-- Seleccione la base de datos del proyecto antes de ejecutar el script.
-- USE nombre_de_su_base_de_datos;

-- ================================================================
-- ACTIVIDAD 1: VISTAS AVANZADAS PARA REPORTES
-- ================================================================

DROP VIEW IF EXISTS vw_historial_reservas;
DROP VIEW IF EXISTS vw_resumen_estilistas;

-- Vista 1: historial detallado de reservas.
-- Combina reservas, clientes, usuarios, estilistas, estados y servicios.
-- GROUP_CONCAT permite mostrar los servicios asociados en una sola fila.
CREATE OR REPLACE VIEW vw_historial_reservas AS
SELECT
    r.id_reserva,
    r.fecha_reserva,
    r.hora_inicio_estimada,
    r.monto_total,
    er.nombre_estado AS estado_reserva,
    c.id_cliente,
    CONCAT_WS(' ', uc.primer_nombre, uc.segundo_nombre,
                   uc.primer_apellido, uc.segundo_apellido) AS cliente,
    CONCAT_WS(' ', ue.primer_nombre, ue.segundo_nombre,
                   ue.primer_apellido, ue.segundo_apellido) AS estilista,
    GROUP_CONCAT(
        DISTINCT s.nombre_servicio
        ORDER BY s.nombre_servicio
        SEPARATOR ', '
    ) AS servicios,
    COUNT(DISTINCT dr.id_detalle) AS cantidad_servicios
FROM reservas AS r
INNER JOIN clientes AS c
    ON c.id_cliente = r.id_cliente
INNER JOIN usuarios AS uc
    ON uc.id_usuario = c.id_usuario
INNER JOIN estilistas AS e
    ON e.id_estilista = r.id_estilista
INNER JOIN usuarios AS ue
    ON ue.id_usuario = e.id_usuario
INNER JOIN estados_reserva AS er
    ON er.id_estado = r.id_estado
LEFT JOIN detalles_reserva AS dr
    ON dr.id_reserva = r.id_reserva
LEFT JOIN servicios AS s
    ON s.id_servicio = dr.id_servicio
GROUP BY
    r.id_reserva,
    r.fecha_reserva,
    r.hora_inicio_estimada,
    r.monto_total,
    er.nombre_estado,
    c.id_cliente,
    cliente,
    estilista;

-- Vista 2: resumen de desempeño por estilista.
-- Usa LEFT JOIN para incluir también estilistas sin reservas.
-- La tabla derivada evita duplicar el monto de una reserva al existir
-- varios detalles de servicios asociados.
CREATE OR REPLACE VIEW vw_resumen_estilistas AS
SELECT
    e.id_estilista,
    CONCAT_WS(' ', u.primer_nombre, u.segundo_nombre,
                   u.primer_apellido, u.segundo_apellido) AS estilista,
    e.estado_laboral,
    COALESCE(rtot.total_reservas, 0) AS total_reservas,
    COALESCE(rtot.reservas_finalizadas, 0) AS reservas_finalizadas,
    COALESCE(rtot.ingresos_generados, 0.00) AS ingresos_generados,
    COALESCE(rtot.promedio_reserva, 0.00) AS promedio_reserva
FROM estilistas AS e
INNER JOIN usuarios AS u
    ON u.id_usuario = e.id_usuario
LEFT JOIN (
    SELECT
        r.id_estilista,
        COUNT(*) AS total_reservas,
        SUM(CASE WHEN er.nombre_estado IN ('Completada', 'Finalizada')
                 THEN 1 ELSE 0 END) AS reservas_finalizadas,
        SUM(CASE WHEN er.nombre_estado IN ('Completada', 'Finalizada')
                 THEN r.monto_total ELSE 0 END) AS ingresos_generados,
        AVG(r.monto_total) AS promedio_reserva
    FROM reservas AS r
    INNER JOIN estados_reserva AS er
        ON er.id_estado = r.id_estado
    GROUP BY r.id_estilista
) AS rtot
    ON rtot.id_estilista = e.id_estilista;

-- Consultas de verificación de la Actividad 1:
-- SELECT * FROM vw_historial_reservas ORDER BY fecha_reserva, hora_inicio_estimada;
-- SELECT * FROM vw_resumen_estilistas ORDER BY ingresos_generados DESC;

-- ================================================================
-- ACTIVIDAD 2: PROCEDIMIENTO ALMACENADO TRANSACCIONAL
-- ================================================================

DROP PROCEDURE IF EXISTS sp_confirmar_reserva;

DELIMITER $$

-- Procedimiento: confirma una reserva de forma atómica.
-- Parámetros de entrada:
--   p_id_reserva: identificador de la reserva que se procesará.
--   p_id_estado_nuevo: estado que se asignará a la reserva.
-- Resultado: actualiza reservas, recalcula monto_total desde detalles_reserva
-- y registra una notificación para el usuario propietario de la reserva.
-- Ante cualquier error, revierte todas las operaciones con ROLLBACK.
CREATE PROCEDURE sp_confirmar_reserva(
    IN p_id_reserva BIGINT UNSIGNED,
    IN p_id_estado_nuevo BIGINT UNSIGNED
)
MODIFIES SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE v_reserva_existe INT DEFAULT 0;
    DECLARE v_estado_existe INT DEFAULT 0;
    DECLARE v_detalles INT DEFAULT 0;
    DECLARE v_id_cliente BIGINT UNSIGNED;
    DECLARE v_id_usuario BIGINT UNSIGNED;
    DECLARE v_monto_total DECIMAL(10,2) DEFAULT 0.00;

    -- Cualquier error SQL revierte la unidad de trabajo y propaga el mensaje.
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Validación 1: la reserva debe existir y se bloquea para evitar
    -- modificaciones concurrentes mientras se procesa.
    SELECT COUNT(*)
      INTO v_reserva_existe
      FROM reservas
     WHERE id_reserva = p_id_reserva;

    IF v_reserva_existe = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede confirmar: la reserva no existe.';
    END IF;

    -- Validación 2: el estado destino debe existir.
    SELECT COUNT(*)
      INTO v_estado_existe
      FROM estados_reserva
     WHERE id_estado = p_id_estado_nuevo;

    IF v_estado_existe = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede confirmar: el estado indicado no existe.';
    END IF;

    -- Recupera el cliente y el usuario que recibirá la notificación.
    SELECT r.id_cliente, c.id_usuario
      INTO v_id_cliente, v_id_usuario
      FROM reservas AS r
      INNER JOIN clientes AS c
        ON c.id_cliente = r.id_cliente
     WHERE r.id_reserva = p_id_reserva
     FOR UPDATE;

    -- Una reserva debe tener al menos un servicio para poder confirmarse.
    SELECT COUNT(*), COALESCE(SUM(precio_historico), 0.00)
      INTO v_detalles, v_monto_total
      FROM detalles_reserva
     WHERE id_reserva = p_id_reserva;

    IF v_detalles = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede confirmar: la reserva no tiene servicios.';
    END IF;

    -- Operación 1: actualizar estado y monto calculado.
    UPDATE reservas
       SET id_estado = p_id_estado_nuevo,
           monto_total = v_monto_total,
           updated_at = CURRENT_TIMESTAMP
     WHERE id_reserva = p_id_reserva;

    -- Operación 2: informar al usuario dentro de la misma transacción.
    INSERT INTO notificaciones (
        id_usuario, titulo, mensaje, leido, created_at, updated_at
    ) VALUES (
        v_id_usuario,
        'Reserva confirmada',
        CONCAT('La reserva #', p_id_reserva,
               ' fue confirmada por un monto de S/ ',
               FORMAT(v_monto_total, 2)),
        0,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

    COMMIT;
END$$

DELIMITER ;

-- Prueba válida: sustituir los valores por IDs existentes.
-- CALL sp_confirmar_reserva(1, 2);

-- Prueba inválida: debe generar un error y no modificar ninguna tabla.
-- CALL sp_confirmar_reserva(999999, 2);

-- Inspección del plan de ejecución de la consulta principal:
-- EXPLAIN ANALYZE
-- SELECT r.id_reserva, r.id_cliente, r.id_estilista,
--        r.id_estado, r.monto_total
--   FROM reservas AS r
--  WHERE r.id_reserva = 1;

-- Fin del script.
