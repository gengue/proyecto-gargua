-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-03-2015 a las 15:36:47
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
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id_test` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `respuesta_a` varchar(200) NOT NULL,
  `respuesta_b` varchar(200) NOT NULL,
  PRIMARY KEY (`id_test`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`id_test`, `pregunta`, `respuesta_a`, `respuesta_b`) VALUES
(1, 'Entiendo mejor algo', 'si lo practico', 'si pienso en ello'),
(2, 'Me considero', 'realista', 'innovador'),
(3, 'Cuando pienso acerca de lo que hice ayer, es más probable que lo haga sobre la base de', 'una imagen', 'palabras'),
(4, 'Tengo tendencia a ', 'entender los detalles de un tema pero no ver ', 'entender la estructura completa pero no ver c'),
(5, 'Cuando estoy aprendiendo algo nuevo, me ayuda', 'hablar de ello', 'pensar en ello'),
(6, 'Si yo fuera profesor, yo preferiría dar un curso', 'que trate sobre hechos y situaciones reales de la vida', 'que trate con ideas y teorías'),
(7, 'Prefiero obtener información nueva de', 'imágenes, diagramas, gráficas o mapas', 'instrucciones escritas o información verbal'),
(8, 'Una vez que entiendo ', 'todas las partes, entiendo el total', 'el total de algo, entiendo como encajan sus partes'),
(9, 'En un grupo de estudio que trabaja con un material difícil, es más probable que', 'participe y contribuya con ideas', 'no participe y  solo escuche'),
(10, 'Es más fácil para mí', 'aprender hechos', 'aprender conceptos'),
(11, 'En un libro con muchas imágenes y gráficas es más probable que', 'revise cuidadosamente las imágenes y las gráficas', 'me concentre en el texto escrito'),
(12, 'Cuando resuelvo problemas de matemáticas', 'eneralmente trabajo sobre las soluciones con un paso a la vez', 'frecuentemente sé cuales son las soluciones, pero luego tengo dificultad  para imaginarme los pasos para llegar a ellas'),
(13, 'En las clases a las que he asistido', 'he llegado a saber como son muchos de los estudiantes', 'raramente he llegado a saber como son muchos estudiantes'),
(14, 'Cuando leo temas que no son de ficción, prefiero', 'algo que me enseñe nuevos hechos o me diga como hacer algo', 'algo que me de nuevas ideas en que pensar'),
(15, 'Me gustan los maestros', 'que utilizan muchos esquemas en el pizarrón', 'que toman mucho tiempo para explicar'),
(16, 'Cuando estoy analizando un cuento o una novela', 'pienso en los incidentes y trato de acomodarlos para configurar los temas', 'me doy cuenta de cuales son los temas cuando termino de leer y luego tengo que regresar y encontrar los incidentes que los demuestran'),
(17, 'Cuando comienzo a resolver un problema de tarea, es más probable que', 'comience a trabajar en su solución inmediatamente', 'primero trate de entender completamente el problema'),
(18, 'Prefiero la idea de', 'certeza', 'teoría'),
(19, 'Recuerdo mejor', 'lo que veo', 'lo que oigo'),
(20, 'Es más importante para mí que un profesor', 'exponga el material en pasos secuenciales claros', 'me dé un panorama general y relacione el material con otros temas'),
(21, 'Prefiero estudiar', 'en un grupo de estudio', 'solo'),
(22, 'Me considero', 'cuidadoso en los detalles de mi trabajo', 'creativo en la forma en la que hago mi trabajo'),
(23, 'Cuando alguien me da direcciones de nuevos lugares, prefiero', 'un mapa', 'instrucciones escritas'),
(24, 'Aprendo', 'a un paso constante. Si estudio con ahínco consigo lo que deseo', 'en inicios y pausas. Me llego a confundir y súbitamente lo entiendo'),
(25, 'Prefiero primero', 'hacer algo y ver que sucede', 'pensar como voy a hacer algo'),
(26, 'Cuando leo por diversión, me gustan los escritores que', 'dicen claramente los que desean dar a entender', 'dicen las cosas en forma creativa e interesante'),
(27, 'Cuando veo un esquema o bosquejo en clase, es más probable que recuerde', 'la imagen', 'lo que el profesor dijo acerca de ella'),
(28, 'Cuando me enfrento a un cuerpo de información', 'me concentro en los detalles y pierdo de vista el total de la misma', 'trato de entender el todo antes de ir a los detalles'),
(29, 'Recuerdo más fácilmente', 'algo que he hecho', 'algo en lo que he pensado mucho'),
(30, 'Cuando tengo que hacer un trabajo, prefiero', 'dominar una forma de hacerlo', 'intentar nuevas formas de hacerlo'),
(31, 'Cuando alguien me enseña datos, prefiero', 'gráficas', 'resúmenes con texto'),
(32, 'Cuando escribo un trabajo, es más probable que ', 'lo haga ( piense o escriba)   desde el principio y avance', 'lo haga (piense o escriba)   en diferentes partes y luego las ordene'),
(33, 'Cuando tengo que trabajar en un proyecto de grupo, primero quiero', 'realizar una "tormenta de ideas" donde cada uno contribuye con ideas', 'realizar la "tormenta de ideas" en forma personal y luego juntarme con el grupo para comparar las ideas'),
(34, ' Considero que es mejor elogio llamar a alguien', 'sensible', 'imaginativo'),
(35, 'Cuando conozco gente en una fiesta, es más probable que recuerde', 'cómo es su apariencia', 'lo que dicen de sí mismos'),
(36, 'Cuando estoy aprendiendo un tema, prefiero', 'mantenerme concentrado en ese tema, aprendiendo lo más que pueda de él', 'hacer conexiones entre ese tema y temas relacionados'),
(37, 'Me considero', 'abierto', 'reservado'),
(38, 'Prefiero cursos que dan más importancia a', 'material concreto (hechos,datos)', 'material abstracto (conceptos, teorías)'),
(39, 'Para divertirme, prefiero', 'ver televisión', 'leer un libro'),
(40, 'Algunos profesores inician sus clases haciendo un bosquejo de lo que enseñarán. Esos bosquejos son', 'algo útiles para mí', 'muy útiles para mí'),
(41, 'La idea de hacer una tarea en grupo con una sola calificación para todos', 'me parece bien', 'no me parece bien'),
(42, 'Cuando hago grandes cálculos', 'tiendo a repetir todos mis pasos y revisar cuidadosamente mi trabajo', 'me cansa hacer su revisión y tengo que esforzarme para hacerlo'),
(43, 'Tiendo a recordar lugares en los que he estado', 'fácilmente y con bastante exactitud', 'con dificultad y sin mucho detalle'),
(44, 'Cuando resuelvo problemas en grupo, es más probable que yo', 'piense en los pasos para la solución de los problemas', 'piense en las posibles consecuencias o aplicaciones de la solución en un amplio rango de campos');

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
