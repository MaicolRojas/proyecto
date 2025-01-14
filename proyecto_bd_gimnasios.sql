-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2019 a las 19:48:48
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_bd_gimnasios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_ent`
--

CREATE TABLE `calificacion_ent` (
  `id_calificacion` int(3) DEFAULT NULL,
  `calificacion` int(1) DEFAULT NULL,
  `ip` varchar(100) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_gym`
--

CREATE TABLE `calificacion_gym` (
  `id_calificacion` int(3) DEFAULT NULL,
  `calificacion` int(1) DEFAULT NULL,
  `ip` varchar(100) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id_caracteristicas` int(3) NOT NULL,
  `entrenadores` int(3) NOT NULL,
  `clientes_satisfechos` int(3) NOT NULL,
  `premios_recibidos` int(3) NOT NULL,
  `equipamentos` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id_caracteristicas`, `entrenadores`, `clientes_satisfechos`, `premios_recibidos`, `equipamentos`) VALUES
(1, 2, 100, 5, 30),
(2, 1, 50, 2, 25),
(3, 2, 70, 3, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(3) NOT NULL,
  `primer_nombre` varchar(20) NOT NULL,
  `segundo_nombre` varchar(20) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_entrenador`
--

CREATE TABLE `comentarios_entrenador` (
  `id_comentario` int(3) NOT NULL,
  `primer_nombre` varchar(20) NOT NULL,
  `segundo_nombre` varchar(20) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos_personas`
--

CREATE TABLE `correos_personas` (
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadores`
--

CREATE TABLE `entrenadores` (
  `id_entrenadores` int(3) NOT NULL,
  `nombre_entrenador` varchar(45) NOT NULL,
  `apellido_etrenador` varchar(45) NOT NULL,
  `documento_entrenador` varchar(45) NOT NULL,
  `edad_entrenador` varchar(2) NOT NULL,
  `genero_entrenador` char(1) NOT NULL,
  `telefono_entrenador` varchar(10) DEFAULT NULL,
  `correo_entrenador` varchar(45) DEFAULT NULL,
  `imagen_entrenador` varchar(200) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `entrenadores`
--

INSERT INTO `entrenadores` (`id_entrenadores`, `nombre_entrenador`, `apellido_etrenador`, `documento_entrenador`, `edad_entrenador`, `genero_entrenador`, `telefono_entrenador`, `correo_entrenador`, `imagen_entrenador`) VALUES
(1, 'Jairo', 'Gárces', '70241749', '51', 'M', '3124030410', 'formagymjairo@hotmail.com', 'img/Entrenadores/Entrenador 1.jpg'),
(2, 'Mauricio', 'Molano', '1122129895', '26', 'M', '3105689590', 'formagymjairo@hotmail.com', 'img/Entrenadores/Entrenador 2.jpg'),
(3, 'Jose', 'Hernández', '18110853', '50', 'M', '3222344869', 'dinamiccenter@gmail.com', 'img/Entrenadores/trainer 3.png'),
(4, 'Grierson', 'Gutiérrez', 'por asignar', '29', 'M', '3107675475', 'sainthordeacacias@gmail.com', 'img/Entrenadores/Entrenador 4.png'),
(5, 'Alexa', 'Paul', 'Por asignar', '25', 'F', '3006201997', 'sainthordeacacias@gmail.com', 'img/Entrenadores/Entrenador 5.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadores_profesion`
--

CREATE TABLE `entrenadores_profesion` (
  `id_entrenadores` int(3) DEFAULT NULL,
  `id_profesion` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrenadores_profesion`
--

INSERT INTO `entrenadores_profesion` (`id_entrenadores`, `id_profesion`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(3, 1),
(3, 5),
(4, 6),
(4, 1),
(4, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadores_servicio`
--

CREATE TABLE `entrenadores_servicio` (
  `id_entrenadores` int(3) NOT NULL,
  `id_servicio` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrenadores_servicio`
--

INSERT INTO `entrenadores_servicio` (`id_entrenadores`, `id_servicio`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 9),
(4, 10),
(4, 11),
(5, 9),
(5, 10),
(5, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_entrenador`
--

CREATE TABLE `galeria_entrenador` (
  `id_galeria` int(3) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria_entrenador`
--

INSERT INTO `galeria_entrenador` (`id_galeria`, `imagen`) VALUES
(1, 'img/Entrenadores/Jairo Garces/1.jpg'),
(1, 'img/Entrenadores/Jairo Garces/2.jpg'),
(1, 'img/Entrenadores/Jairo Garces/3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_gimnasio`
--

CREATE TABLE `galeria_gimnasio` (
  `id_galeria` int(3) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria_gimnasio`
--

INSERT INTO `galeria_gimnasio` (`id_galeria`, `imagen`) VALUES
(1, 'img/gimnasios/SPINNIG FORMA/1.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/2.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/3.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/4.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/5.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/6.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/7.jpg'),
(1, 'img/gimnasios/SPINNIG FORMA/8.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/1.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/2.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/3.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/4.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/5.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/6.jpg'),
(3, 'img/gimnasios/SAINTS ACACIAS/7.jpg'),
(2, 'img/gimnasios/DINAMIC CENTER/1.jpg'),
(2, 'img/gimnasios/DINAMIC CENTER/2.jpg'),
(2, 'img/gimnasios/DINAMIC CENTER/3.jpg'),
(2, 'img/gimnasios/DINAMIC CENTER/4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_parque`
--

CREATE TABLE `galeria_parque` (
  `id_galeria` int(3) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria_parque`
--

INSERT INTO `galeria_parque` (`id_galeria`, `imagen`) VALUES
(1, 'img/parques/Parque Principal/1.jpg'),
(1, 'img/parques/Parque Principal/2.jpg\r\n'),
(1, 'img/parques/Parque Principal/3.jpg'),
(2, 'img/parques/Villa Olimpica/1.jpg'),
(2, 'img/parques/Villa Olimpica/2.jpg'),
(2, 'img/parques/Villa Olimpica/3.jpg'),
(2, 'img/parques/Villa Olimpica/4.jpg'),
(2, 'img/parques/Villa Olimpica/5.jpg'),
(10, 'img/parques/Parque Bancarios/1.jpg'),
(10, 'img/parques/Parque Bancarios/2.jpg'),
(10, 'img/parques/Parque Bancarios/3.jpg'),
(3, 'img/parques/parque  biosaludable Barrio Popular/1.jpg'),
(4, 'img/parques/Parque la tiza/1.jpg'),
(4, 'img/parques/Parque la tiza/2.jpg'),
(5, 'img/parques/3 puentes/1.jpg'),
(5, 'img/parques/3 puentes/2.jpg'),
(5, 'img/parques/3 puentes/3.jpg'),
(5, 'img/parques/3 puentes/4.jpg'),
(6, 'img/parques/Parque Barrio la esperanza/1.jpg'),
(6, 'img/parques/Parque Barrio la esperanza/2.jpg'),
(6, 'img/parques/Parque Barrio la esperanza/3.jpg'),
(7, 'img/parques/Parque Barrio Guaratara/1.jpg'),
(7, 'img/parques/Parque Barrio Guaratara/2.jpg'),
(8, 'img/parques/Parque Barrio Morichal/1.jpg'),
(8, 'img/parques/Parque Barrio Morichal/2.jpg'),
(8, 'img/parques/Parque Barrio Morichal/3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio`
--

CREATE TABLE `gimnasio` (
  `id_gimnasio` int(3) NOT NULL,
  `nombre_gimnasio` varchar(45) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `hora_de_apertura` time NOT NULL,
  `hora_de_cierre` time NOT NULL,
  `correo_gimnasio` varchar(45) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `imagen_gimnasio` varchar(200) DEFAULT NULL,
  `latitud` varchar(20) NOT NULL,
  `longitud` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gimnasio`
--

INSERT INTO `gimnasio` (`id_gimnasio`, `nombre_gimnasio`, `direccion`, `telefono`, `hora_de_apertura`, `hora_de_cierre`, `correo_gimnasio`, `descripcion`, `imagen_gimnasio`, `latitud`, `longitud`) VALUES
(1, 'SPINNING FORMA', 'CALLE 14 No. 27 - 04 Barrio Valorina - Acacías', '3124030410', '05:00:00', '21:00:00', 'formagymjairo@hotmail.com', 'SPINNING FORMA es un gimnasio convencional, que busca que sus participantes realicen actividad física para mantener un estilo de vida saludable y así combatir problemas que hoy aquejan a las personas, como el sobrepeso, todo esto para sembrar una semilla para esta y las futuras generaciones para que vivan con un estilo y vida saludable.', 'img/gimnasios/Gimnasio1.jpg', '3.987628', '-73.769673'),
(2, 'DINAMIC CENTER', 'CALLE 14 24 15 - 8 Barrio Coperativo', '3108519153', '05:00:00', '21:00:00', 'dinamiccenter@gmail.com', 'DINAMIC CENTER es un gimnasio convencional, que busca que sus participantes realicen actividad física para mantener un estilo de vida saludable y así combatir problemas que hoy aquejan a las personas, como el sobrepeso, todo esto para sembrar una semilla para esta y las futuras generaciones para que vivan con un estilo y vida saludable.', 'img/gimnasios/Gimnasio2.jpg', '3.987078', '-73.765383'),
(3, 'SAINT HORDE ACACIAS', 'CARRERA 20 # 13-37 BARRIO COOPERATIVO', '3107675475', '05:00:00', '21:00:00', 'sainthordeacacias@gmail.com', 'SAINT HORDE ACACIAS es un gimnasio convencional, que busca que sus participantes realicen actividad física para mantener un estilo de vida saludable y así combatir problemas que hoy aquejan a las personas, como el sobrepeso, todo esto para sembrar una semilla para esta y las futuras generaciones para que vivan con un estilo y vida saludable', 'img/gimnasios/Gimnasio3.jpg', '3.986289', '-73.763327');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio_entrenadores`
--

CREATE TABLE `gimnasio_entrenadores` (
  `id_gimnasio` int(3) NOT NULL,
  `id_entrenadores` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gimnasio_entrenadores`
--

INSERT INTO `gimnasio_entrenadores` (`id_gimnasio`, `id_entrenadores`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio_servicio`
--

CREATE TABLE `gimnasio_servicio` (
  `id_gimnasio` int(3) NOT NULL,
  `id_servicio` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gimnasio_servicio`
--

INSERT INTO `gimnasio_servicio` (`id_gimnasio`, `id_servicio`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `fecha` date NOT NULL,
  `imagenes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `nombre`, `descripcion`, `url`, `fecha`, `imagenes`) VALUES
(1, 'El entrenamiento de fuerza.', 'Practicar ejercicio físico, tanto de resistencia, como especialmente entrenamiento de fuerza levantando pesas, ayuda a reducir la grasa del corazón y a prevenir el desarrollo de enfermedades cardiovasculares.', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/el-entrenamiento-de-fuerza-efectivo-para-reducir-la-grasa-del-corazon', '2019-07-10', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/07/10/pesas_obesidad.jpg'),
(2, 'Andar o correr en la cinta ayuda a reducir el dolor menstrual', 'Las mujeres que realizan ejercicio aeróbico, como correr o andar en la cinta, podrían reducir significativamente el dolor causado por la menstruación, además de mejorar su calidad de vida a largo plazo', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/andar-o-correr-en-la-cinta-ayuda-a-reducir-el-dolor-menstrual', '2019-09-07', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/07/09/correr_cinta_menor_dolor_menstrual.jpg'),
(3, 'Estos 6 ejercicios ayudan a controlar el riesgo genético de obesidad', 'La herencia genética puede aumentar el riesgo de desarrollar obesidad, pero un nuevo estudio ha identificado cuáles son las actividades físicas más eficaces para prevenir el sobrepeso de origen genético.', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/estos-6-ejercicios-ayudan-a-controlar-el-riesgo-genetico-de-obesidad', '2019-08-05', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/08/05/yoga_evita_obesidad_genetica.jpg'),
(4, 'Hacer ejercicio físico en el embarazo beneficia al corazón del bebé', 'Confirman que realizar ejercicio físico durante el embarazo mejora el funcionamiento del corazón del bebé y, además, puede ayudar a la madre a recuperar antes su peso inicial tras el parto.', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/hacer-ejercicio-fisico-en-el-embarazo-beneficia-al-corazon-del-bebe', '2019-06-28', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/06/28/ejercicio_embarazada_corazon_bebe.jpg'),
(5, 'El ejercicio ayuda a reponerse tras la cirugía por cáncer de pulmón', 'Los pacientes con carcinoma pulmonar no microcítico que inician una actividad física tras someterse a una cirugía para extirpar el tumor tienen menos dificultad para respirar y mejoran la fuerza de sus músculos.', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/el-ejercicio-ayuda-a-reponerse-tras-la-cirugia-por-cancer-de-pulmon', '2019-06-25', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/06/25/ejercicio_tras_cancer_pulmon.jpg'),
(6, 'El deporte a corta edad evita problemas emocionales en la adolescencia', 'Los niños que desde los seis años participan en actividades deportivas organizadas tienen menos riesgo de presentar dificultades emocionales, como ansiedad o aislamiento social, al llegar a los 12 años, según un estudio.', 'https://www.webconsultas.com/noticias/ejercicio-y-deporte/el-deporte-a-corta-edad-evita-problemas-emocionales-en-la-adolescencia', '2019-06-06', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_noticia__medium/public/media/2019/06/06/actividades_deportivas_ninos.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parque`
--

CREATE TABLE `parque` (
  `id_parque` int(3) NOT NULL,
  `nombre_parque` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `latitud` varchar(100) NOT NULL,
  `longitud` varchar(100) NOT NULL,
  `imagen_parque` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parque`
--

INSERT INTO `parque` (`id_parque`, `nombre_parque`, `descripcion`, `direccion`, `latitud`, `longitud`, `imagen_parque`) VALUES
(1, 'Parque Principal de Acacias', ' el parque principal (fundado en 1934), La Iglesia Catedral Nuestra Señora del Carmen (ubicada en el parque central del municipio), La manga de Coleo (se encuentra a las afueras del casco urbano, vía Acacías - Villavicencio) y el Malecón turístico, ubicado a 800 metros del centro del municipio.', 'Cl. 14 #141, Acacías, Meta', '3.985967', '-73.758066', 'img/parques/parque_principal.jpg'),
(2, 'Villa Olímpica', 'evento masivo de Actividad Física Musicalizada a desarrollarse en la villa Olímpica del barrio San Cristóbal, para toda la comunidad del Municipio ', 'Cra. 14 #18, Acacías, Meta', '3.99096510', '-73.75704420', 'img/parques/villa-olimpica.png'),
(3, 'Parque Biosaludable Barrio Popular', 'parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra. 5 #16-23 a 16-1, Acacías, Meta', '3.98821590', '-73.75052460', 'img/parques/parque-biosaludable.jpg'),
(4, 'Parque Barrio La Tiza', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra 25 # 21 a Acacias - Meta', '3.99669530', '-73.76465690', 'img/parques/parque-tiza.jpg'),
(5, 'Parque 3 Puentes', 'parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra. 33, Acacías, Meta', '3.99341230', '-73.77457510', 'img/parques/3 puentes.jpg'),
(6, 'Parque Barrio La Esperanza', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra. 14 #21-247 a 21-217, Acacías, Meta', '3.99634450', '-73.75616550', 'img/parques/Esparque-esperanza.jpg'),
(7, 'Parque Barrio Guaratara', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra. 77a # 25 25a Acacias Meta', '3.99746970', '-73.75910530', 'img/parques/parque-guaratara.jpg'),
(8, 'Parque Barrio El Morichal', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra 16. 22 Acacias Meta', '3.99507310', '-73.75786000', 'img/parques/parque-morichal.jpg'),
(9, 'Parque Barrio Bambú', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', 'Cra. 13 # 21 a - 22 a', '3.99367550', '-73.75478970', 'img/parques/Parque-Bambu.jpg'),
(10, 'Parque Bancarios\r\n', 'Parque para desarrollar ejercicio, especialmente para los niños y jóvenes que desean pasar un rato divertido desarrollando actividad física. ', '# a 13-78,, Cra. 32 #132, Acacías, Meta', '3.98706880', '-73.77296070', 'img/parques/parque-bancarios.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `id_profesion` int(3) NOT NULL,
  `nombre_profesion` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesion`
--

INSERT INTO `profesion` (`id_profesion`, `nombre_profesion`) VALUES
(1, 'Entrenador Peronal'),
(2, 'Fisicultirsta'),
(3, 'Nutricionista'),
(4, 'Entrenador de Fitness'),
(5, 'Entrenador de aerobicos'),
(6, 'Administrador de empresa'),
(7, 'Entrenador en Crossfit'),
(8, 'Licenciada en educacion Fisica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(3) NOT NULL,
  `tipo_de_servicio` varchar(30) NOT NULL,
  `descripcion_servicio` varchar(900) NOT NULL,
  `imagen_servicio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `tipo_de_servicio`, `descripcion_servicio`, `imagen_servicio`) VALUES
(1, 'Pesas', 'Es un ejercicio que suele quedar opacado por las tendencias que predominan en la actualidad, pero levantar pesas es un tipo de entrenamiento cuya utilidad va más allá de la apariencia física.', 'img/Servicios/pesas.jpg'),
(2, 'Spinning', 'El spinning es un ejercicio aeróbico y de piernas principalmente, donde el monitor o profesor puede mediante el cambio de la frecuencia de pedaleo y de la resistencia al movimiento, realizar todo tipo de intensidades.', 'img/Servicios/spinning.jpg'),
(3, 'Ejercicios Funcionales', 'Las rutinas de entrenamientos funcionales se basan en integrar todos los aspectos del movimiento de nuestro cuerpo a nuestra rutinas de ejercicios diarios. Es decir, no entrenamos un grupo de músculos aislado, si no que son rutinas de ejercicios donde entrenamos todo nuestro cuerpo en conjunto.', 'img/Servicios/Funcionales.jpg'),
(4, 'Valoracion Fisica', 'La exploración física o examen clínico es el conjunto de maniobras que realiza un médico para obtener información sobre el estado de salud de una persona. La ciencia encargada de su estudio se denomina Semiología clínica.', 'img/Servicios/valoracion-fisica.jpg'),
(5, 'Personal Trainer', 'Un entrenador personal es un profesional titulado en ciencias de la actividad física y el deporte que se ocupa de la enseñanza y prescripción de ejercicios físicos.', 'img/Servicios/personal-trainer.jpg'),
(6, 'Sauna', 'Baño de vapor húmedo a elevada temperatura que produce un rápido y abundante sudor y que se toma con fines higiénicos y terapéuticos.', 'img/Servicios/sauna.jpg'),
(7, 'Aerobicos', 'Aeróbic o aerobic? es un tipo de gimnasia que se realiza al son de la música, en un salón o al aire libre. El aeróbic reúne todos los beneficios del ejercicio aeróbico, además de ejercitar capacidades físicas como la flexibilidad, coordinación, orientación, ritmo etc.', 'img/Servicios/aerobicos.jpg'),
(8, 'Croosfit', 'El Crossfit es un deporte basado en ejercicios constantemente variados, con movimientos funcionales ejecutados a alta intensidad.', 'img/Servicios/Croosfit.jpg'),
(9, 'Ejercicios Abdominales', 'os ejercicios abdominales son rutinas de actividades físicas que se realizan con el objetivo de tonificar los músculos de la zona.', 'img/Servicios/abdominales.jpg'),
(10, 'Entrenamiento intensibo', 'El entrenamiento de alta intensidad es un tipo de entrenamiento de fuerza que se enfoca en la calidad de las repeticiones y del fallo muscular momentáneo. Es decir, solo se necesita de una serie de un solo ejercicio y llegar hasta el fallo muscular para que esto funcione.', 'img/Servicios/ejercicio-intensivo.jpg'),
(11, 'accesorios y suplementos', 'Los suplementos dietéticos son, según estableció una ley aprobada por el Congreso de los Estados Unidos en 1994, aquellos productos que: Se consumen por vía oral. Contienen un \"ingrediente alimenticio\" destinado a complementar la alimentación.', 'img/Servicios/suplementos.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion_ent`
--
ALTER TABLE `calificacion_ent`
  ADD KEY `id_calificacion` (`id_calificacion`);

--
-- Indices de la tabla `calificacion_gym`
--
ALTER TABLE `calificacion_gym`
  ADD KEY `id_calificacion` (`id_calificacion`);

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD KEY `id_caracteristicas` (`id_caracteristicas`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indices de la tabla `comentarios_entrenador`
--
ALTER TABLE `comentarios_entrenador`
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indices de la tabla `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD PRIMARY KEY (`id_entrenadores`);

--
-- Indices de la tabla `entrenadores_profesion`
--
ALTER TABLE `entrenadores_profesion`
  ADD KEY `id_entrenadores` (`id_entrenadores`),
  ADD KEY `id_profesion` (`id_profesion`);

--
-- Indices de la tabla `entrenadores_servicio`
--
ALTER TABLE `entrenadores_servicio`
  ADD KEY `id_entrenadores` (`id_entrenadores`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `galeria_entrenador`
--
ALTER TABLE `galeria_entrenador`
  ADD KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `galeria_gimnasio`
--
ALTER TABLE `galeria_gimnasio`
  ADD KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `galeria_parque`
--
ALTER TABLE `galeria_parque`
  ADD KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `gimnasio`
--
ALTER TABLE `gimnasio`
  ADD PRIMARY KEY (`id_gimnasio`);

--
-- Indices de la tabla `gimnasio_entrenadores`
--
ALTER TABLE `gimnasio_entrenadores`
  ADD KEY `id_gimnasio` (`id_gimnasio`),
  ADD KEY `id_entrenadores` (`id_entrenadores`);

--
-- Indices de la tabla `gimnasio_servicio`
--
ALTER TABLE `gimnasio_servicio`
  ADD KEY `id_gimnasio` (`id_gimnasio`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `parque`
--
ALTER TABLE `parque`
  ADD PRIMARY KEY (`id_parque`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`id_profesion`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id_caracteristicas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios_entrenador`
--
ALTER TABLE `comentarios_entrenador`
  MODIFY `id_comentario` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrenadores`
--
ALTER TABLE `entrenadores`
  MODIFY `id_entrenadores` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gimnasio`
--
ALTER TABLE `gimnasio`
  MODIFY `id_gimnasio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `parque`
--
ALTER TABLE `parque`
  MODIFY `id_parque` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `profesion`
--
ALTER TABLE `profesion`
  MODIFY `id_profesion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion_ent`
--
ALTER TABLE `calificacion_ent`
  ADD CONSTRAINT `calificacion_ent_ibfk_1` FOREIGN KEY (`id_calificacion`) REFERENCES `entrenadores` (`id_entrenadores`);

--
-- Filtros para la tabla `calificacion_gym`
--
ALTER TABLE `calificacion_gym`
  ADD CONSTRAINT `calificacion_gym_ibfk_1` FOREIGN KEY (`id_calificacion`) REFERENCES `gimnasio` (`id_gimnasio`);

--
-- Filtros para la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD CONSTRAINT `caracteristicas_ibfk_1` FOREIGN KEY (`id_caracteristicas`) REFERENCES `gimnasio` (`id_gimnasio`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `gimnasio` (`id_gimnasio`);

--
-- Filtros para la tabla `comentarios_entrenador`
--
ALTER TABLE `comentarios_entrenador`
  ADD CONSTRAINT `comentarios_entrenador_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `entrenadores` (`id_entrenadores`);

--
-- Filtros para la tabla `entrenadores_profesion`
--
ALTER TABLE `entrenadores_profesion`
  ADD CONSTRAINT `entrenadores_profesion_ibfk_1` FOREIGN KEY (`id_entrenadores`) REFERENCES `entrenadores` (`id_entrenadores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrenadores_profesion_ibfk_2` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id_profesion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entrenadores_servicio`
--
ALTER TABLE `entrenadores_servicio`
  ADD CONSTRAINT `entrenadores_servicio_ibfk_1` FOREIGN KEY (`id_entrenadores`) REFERENCES `entrenadores` (`id_entrenadores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrenadores_servicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galeria_entrenador`
--
ALTER TABLE `galeria_entrenador`
  ADD CONSTRAINT `galeria_entrenador_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `entrenadores` (`id_entrenadores`);

--
-- Filtros para la tabla `galeria_gimnasio`
--
ALTER TABLE `galeria_gimnasio`
  ADD CONSTRAINT `galeria_gimnasio_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `gimnasio` (`id_gimnasio`);

--
-- Filtros para la tabla `galeria_parque`
--
ALTER TABLE `galeria_parque`
  ADD CONSTRAINT `galeria_parque_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `parque` (`id_parque`);

--
-- Filtros para la tabla `gimnasio_entrenadores`
--
ALTER TABLE `gimnasio_entrenadores`
  ADD CONSTRAINT `gimnasio_entrenadores_ibfk_1` FOREIGN KEY (`id_gimnasio`) REFERENCES `gimnasio` (`id_gimnasio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gimnasio_entrenadores_ibfk_2` FOREIGN KEY (`id_entrenadores`) REFERENCES `entrenadores` (`id_entrenadores`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gimnasio_servicio`
--
ALTER TABLE `gimnasio_servicio`
  ADD CONSTRAINT `gimnasio_servicio_ibfk_1` FOREIGN KEY (`id_gimnasio`) REFERENCES `gimnasio` (`id_gimnasio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gimnasio_servicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
