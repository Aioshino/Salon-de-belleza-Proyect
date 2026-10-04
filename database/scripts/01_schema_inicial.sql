-- Script MySQL: estructura vacía de la base de datos
-- No contiene INSERT ni datos iniciales.
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE `administradores` (

  `id_administrador` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` BIGINT unsigned NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `administradores_id_usuario_unique` (`id_usuario`),
  CONSTRAINT `administradores_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_administradores_fecha` CHECK (`fecha_contratacion` >= '1900-01-01')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (

  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` INT NOT NULL,
  PRIMARY KEY (`key`),
  CONSTRAINT `chk_cache_expiration` CHECK (`expiration` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (

  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` INT NOT NULL,
  PRIMARY KEY (`key`),
  CONSTRAINT `chk_cache_locks_expiration` CHECK (`expiration` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (

  `id_cliente` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` BIGINT unsigned NOT NULL,
  `puntos_fidelidad` INT NOT NULL DEFAULT 0,
  `notas_preferencias` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `clientes_id_usuario_unique` (`id_usuario`),
  CONSTRAINT `clientes_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_clientes_puntos` CHECK (`puntos_fidelidad` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `cotizaciones`;
CREATE TABLE `cotizaciones` (

  `id_cotizacion` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` BIGINT unsigned NOT NULL,
  `id_estilista` BIGINT unsigned DEFAULT NULL,
  `id_reserva` BIGINT unsigned DEFAULT NULL,
  `id_estado` BIGINT unsigned NOT NULL DEFAULT 9,
  `fecha_solicitud` date NOT NULL,
  `monto_estimado` decimal(10,2) DEFAULT 0.00,
  `notas` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_cotizacion`),
  KEY `fk_cotizaciones_cliente` (`id_cliente`),
  KEY `fk_cotizaciones_estilista` (`id_estilista`),
  KEY `fk_cotizaciones_estado` (`id_estado`),
  KEY `fk_cotizaciones_reserva` (`id_reserva`),
  CONSTRAINT `fk_cotizaciones_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizaciones_estado` FOREIGN KEY (`id_estado`) REFERENCES `estados_reserva` (`id_estado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizaciones_estilista` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizaciones_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `chk_cotizaciones_monto` CHECK (`monto_estimado` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `detalles_cotizacion`;
CREATE TABLE `detalles_cotizacion` (

  `id_detalle_cotizacion` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_cotizacion` BIGINT unsigned NOT NULL,
  `id_servicio` BIGINT unsigned NOT NULL,
  `precio_cotizado` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_detalle_cotizacion`),
  KEY `fk_det_cotizacion` (`id_cotizacion`),
  KEY `fk_det_servicio` (`id_servicio`),
  CONSTRAINT `fk_det_cotizacion` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizaciones` (`id_cotizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_det_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_detalles_cotizacion_precio` CHECK (`precio_cotizado` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `detalles_reserva`;
CREATE TABLE `detalles_reserva` (

  `id_detalle` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_reserva` BIGINT unsigned NOT NULL,
  `id_servicio` BIGINT unsigned NOT NULL,
  `precio_historico` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `detalles_reserva_id_reserva_foreign` (`id_reserva`),
  KEY `detalles_reserva_id_servicio_foreign` (`id_servicio`),
  CONSTRAINT `detalles_reserva_id_reserva_foreign` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalles_reserva_id_servicio_foreign` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_detalles_reserva_precio` CHECK (`precio_historico` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (

  `id_especialidad` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE KEY `especialidades_nombre_especialidad_unique` (`nombre_especialidad`),
  CONSTRAINT `chk_especialidades_nombre` CHECK (CHAR_LENGTH(TRIM(`nombre_especialidad`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `estados_reserva`;
CREATE TABLE `estados_reserva` (

  `id_estado` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`),
  UNIQUE KEY `estados_reserva_nombre_estado_unique` (`nombre_estado`),
  CONSTRAINT `chk_estados_reserva_nombre` CHECK (CHAR_LENGTH(TRIM(`nombre_estado`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `estilista_especialidades`;
CREATE TABLE `estilista_especialidades` (

  `id_estilista` BIGINT unsigned NOT NULL,
  `id_especialidad` BIGINT unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estilista`,`id_especialidad`),
  KEY `estilista_especialidades_id_especialidad_foreign` (`id_especialidad`),
  CONSTRAINT `estilista_especialidades_id_especialidad_foreign` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estilista_especialidades_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_estilista_especialidades_ids` CHECK (`id_estilista` > 0 AND `id_especialidad` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `estilistas`;
CREATE TABLE `estilistas` (

  `id_estilista` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` BIGINT unsigned NOT NULL,
  `id_administrador_supervisor` BIGINT unsigned DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `estado_laboral` varchar(30) NOT NULL DEFAULT 'Activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estilista`),
  UNIQUE KEY `estilistas_id_usuario_unique` (`id_usuario`),
  KEY `estilistas_id_administrador_supervisor_foreign` (`id_administrador_supervisor`),
  CONSTRAINT `estilistas_id_administrador_supervisor_foreign` FOREIGN KEY (`id_administrador_supervisor`) REFERENCES `administradores` (`id_administrador`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `estilistas_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_estilistas_estado` CHECK (`estado_laboral` IN ('Activo','Inactivo','Vacaciones','Suspendido'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (

  `id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  CONSTRAINT `chk_failed_jobs_uuid` CHECK (CHAR_LENGTH(TRIM(`uuid`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `fechas_inactivas_estilista`;
CREATE TABLE `fechas_inactivas_estilista` (

  `id_inactividad` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_estilista` BIGINT unsigned NOT NULL,
  `fecha_inactiva` date NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_inactividad`),
  KEY `id_estilista` (`id_estilista`),
  CONSTRAINT `fechas_inactivas_estilista_ibfk_1` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_fechas_inactivas_fecha` CHECK (`fecha_inactiva` IS NOT NULL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `horarios_estilista`;
CREATE TABLE `horarios_estilista` (

  `id_horario` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_estilista` BIGINT unsigned NOT NULL,
  `dia_semana` varchar(20) NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `activo` TINYINT NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `horarios_estilista_id_estilista_foreign` (`id_estilista`),
  CONSTRAINT `horarios_estilista_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_horarios_estilista` CHECK (`hora_salida` > `hora_entrada` AND `activo` IN (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (

  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` INT NOT NULL,
  `pending_jobs` INT NOT NULL,
  `failed_jobs` INT NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` INT DEFAULT NULL,
  `created_at` INT NOT NULL,
  `finished_at` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_job_batches_counts` CHECK (`total_jobs` >= 0 AND `pending_jobs` >= 0 AND `failed_jobs` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (

  `id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` TINYINT unsigned NOT NULL,
  `reserved_at` INT unsigned DEFAULT NULL,
  `available_at` INT unsigned NOT NULL,
  `created_at` INT unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`),
  CONSTRAINT `chk_jobs_attempts` CHECK (`attempts` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (

  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_migrations_batch` CHECK (`batch` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `notificaciones`;
CREATE TABLE `notificaciones` (

  `id_notificacion` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` BIGINT unsigned NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `leido` TINYINT NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `notificaciones_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `notificaciones_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_notificaciones_leido` CHECK (`leido` IN (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (

  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `chk_password_reset_email` CHECK (CHAR_LENGTH(TRIM(`email`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (

  `id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` BIGINT unsigned NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`),
  CONSTRAINT `chk_personal_access_token` CHECK (CHAR_LENGTH(TRIM(`token`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `resenias`;
CREATE TABLE `resenias` (

  `id_resenia` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` BIGINT unsigned NOT NULL,
  `id_estilista` BIGINT unsigned NOT NULL,
  `id_reserva` BIGINT unsigned NOT NULL,
  `calificacion` INT NOT NULL,
  `comentario` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_resenia`),
  UNIQUE KEY `resenias_id_reserva_unique` (`id_reserva`),
  KEY `resenias_id_cliente_foreign` (`id_cliente`),
  KEY `resenias_id_estilista_foreign` (`id_estilista`),
  CONSTRAINT `resenias_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `resenias_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `resenias_id_reserva_foreign` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_resenias_calificacion` CHECK (`calificacion` BETWEEN 1 AND 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas` (

  `id_reserva` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` BIGINT unsigned NOT NULL,
  `id_estilista` BIGINT unsigned NOT NULL,
  `id_estado` BIGINT unsigned NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_inicio_estimada` time NOT NULL,
  `monto_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `reservas_id_cliente_foreign` (`id_cliente`),
  KEY `reservas_id_estilista_foreign` (`id_estilista`),
  KEY `reservas_id_estado_foreign` (`id_estado`),
  CONSTRAINT `reservas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `reservas_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados_reserva` (`id_estado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `reservas_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_reservas_monto` CHECK (`monto_total` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (

  `id_rol` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `roles_nombre_rol_unique` (`nombre_rol`),
  CONSTRAINT `chk_roles_nombre` CHECK (CHAR_LENGTH(TRIM(`nombre_rol`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (

  `id_servicio` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_administrador_gestionado` BIGINT unsigned NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion_estimada_minutos` INT NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `estado_servicio` TINYINT NOT NULL DEFAULT 1,
  `imagen_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  UNIQUE KEY `servicios_nombre_servicio_unique` (`nombre_servicio`),
  KEY `servicios_id_administrador_gestionado_foreign` (`id_administrador_gestionado`),
  CONSTRAINT `servicios_id_administrador_gestionado_foreign` FOREIGN KEY (`id_administrador_gestionado`) REFERENCES `administradores` (`id_administrador`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_servicios_valores` CHECK (`duracion_estimada_minutos` > 0 AND `precio` >= 0 AND `estado_servicio` IN (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (

  `id` varchar(255) NOT NULL,
  `user_id` BIGINT unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `chk_sessions_last_activity` CHECK (`last_activity` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (

  `id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  CONSTRAINT `chk_users_email` CHECK (CHAR_LENGTH(TRIM(`email`)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (

  `id_usuario` BIGINT unsigned NOT NULL AUTO_INCREMENT,
  `id_rol` BIGINT unsigned NOT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `contrasenia_hash` varchar(255) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) NOT NULL,
  `estado_usuario` TINYINT NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuarios_correo_electronico_unique` (`correo_electronico`),
  KEY `usuarios_id_rol_foreign` (`id_rol`),
  CONSTRAINT `usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_usuarios_estado` CHECK (`estado_usuario` IN (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
