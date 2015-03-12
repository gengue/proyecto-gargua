-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2015 a las 15:19:56
-- Versión del servidor: 5.5.41-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gargua_db`
--
CREATE DATABASE IF NOT EXISTS `gargua_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gargua_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilos_aprendizaje`
--

CREATE TABLE IF NOT EXISTS `estilos_aprendizaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estilo_aprendizaje` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones`
--

CREATE TABLE IF NOT EXISTS `lecciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_leccion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tema_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_leccion_tema1_idx` (`tema_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetos_aprendizaje`
--

CREATE TABLE IF NOT EXISTS `objetos_aprendizaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_leccion` int(11) NOT NULL,
  `id_estilo_aprendizaje` int(11) NOT NULL,
  `nombre_objetos_aprendizaje` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_objetos_aprendizaje_leccion1_idx` (`id_leccion`),
  KEY `fk_objetos_aprendizaje_estilo_aprendizaje1_idx` (`id_estilo_aprendizaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_tema` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `unidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tema_unidad1_idx` (`unidad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_unidad` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_unidad_curso1_idx` (`curso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido_usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `password_usuario` blob,
  `nivel_secundaria_usuario` enum('SEXTO','SEPTIMO','OCTAVO','NOVENO','DECIMO','UNDECIMO') COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rol_usuario` enum('ESTUDIANTE','TURISTA') COLLATE utf8_spanish2_ci NOT NULL,
  `id_estilo_aprendizaje` int(11) NOT NULL,
  `estado_usuario` enum('ACTIVO','INACTIVO') COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento_usuario` date NOT NULL,
  `genero_usuario` enum('MASCULINO','FEMENINO') COLLATE utf8_spanish2_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_estilo_aprendizaje1_idx` (`id_estilo_aprendizaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_cursos`
--

CREATE TABLE IF NOT EXISTS `usuarios_cursos` (
  `id_curso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_curso`,`id_usuario`),
  KEY `fk_curso_has_usuario_usuario1_idx` (`id_usuario`),
  KEY `fk_curso_has_usuario_curso_idx` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lecciones`
--
ALTER TABLE `lecciones`
  ADD CONSTRAINT `fk_leccion_tema1` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `objetos_aprendizaje`
--
ALTER TABLE `objetos_aprendizaje`
  ADD CONSTRAINT `fk_objetos_aprendizaje_estilo_aprendizaje1` FOREIGN KEY (`id_estilo_aprendizaje`) REFERENCES `estilos_aprendizaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_objetos_aprendizaje_leccion1` FOREIGN KEY (`id_leccion`) REFERENCES `lecciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `temas`
--
ALTER TABLE `temas`
  ADD CONSTRAINT `fk_tema_unidad1` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `fk_unidad_curso1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_estilo_aprendizaje1` FOREIGN KEY (`id_estilo_aprendizaje`) REFERENCES `estilos_aprendizaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios_cursos`
--
ALTER TABLE `usuarios_cursos`
  ADD CONSTRAINT `fk_curso_has_usuario_curso` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_curso_has_usuario_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
