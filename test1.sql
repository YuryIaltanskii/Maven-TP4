-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2017 a las 23:40:42
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `USER_USERID` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comment`
--

INSERT INTO `comment` (`id`, `content`, `USER_USERID`, `date`, `POST_ID`, `USER_ID`) VALUES
(4701, 'Comment', NULL, '2017-11-27 19:39:55', 4451, 4552);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `path`, `size`, `type`, `USER_ID`) VALUES
(1701, '7czpzz50r7', 31036, 'image/jpeg', NULL),
(1751, 'a2s0nogpxm', 129091, 'image/png', NULL),
(1801, '4gbm2dl27y', 129091, 'image/png', NULL),
(1802, 'lc3z4e6p9y', 129091, 'image/png', NULL),
(1803, 'ph8gcf8o8k', 31036, 'image/jpeg', NULL),
(1901, 'ep1ybjqwh3', 31036, 'image/jpeg', NULL),
(2001, '6f5qb3b90n', 150680, 'image/png', NULL),
(2101, 'plms7x0p4w', 137828, 'image/png', NULL),
(2201, 'jzcjbrly6i', 479522, 'image/png', NULL),
(2202, 'i0krljyx1s', 479522, 'image/png', NULL),
(2301, '1rke8t2qd4', 30866, 'image/jpeg', NULL),
(2302, 's9owhpch3y', 30866, 'image/jpeg', NULL),
(2401, '42xzxwkc31', 89088, 'image/png', NULL),
(2402, 'ytatlw6h5z', 89088, 'image/png', NULL),
(2403, 'eopya53rwb', 89088, 'image/png', NULL),
(2601, 'w3pnr57n5g', 129091, 'image/png', NULL),
(2701, 'igj09nsbim', 31036, 'image/jpeg', NULL),
(2851, '0stcm5oxfb', 3050, 'image/jpeg', NULL),
(2901, 'd6jkw592cy', 3050, 'image/jpeg', NULL),
(3001, 'ew2mwnya43', 3050, 'image/jpeg', NULL),
(3051, 'q51gzdqrg4', 3050, 'image/jpeg', NULL),
(3101, 'xzs5g7pjj9', 3050, 'image/jpeg', NULL),
(3151, 'k49x2ngnyl', 129091, 'image/png', NULL),
(3351, '4j53mki862', 129091, 'image/png', NULL),
(3501, '987bomnm3g', 3050, 'image/jpeg', NULL),
(3601, 'fibnyllomp', 3050, 'image/jpeg', NULL),
(3701, 'l72zn406sb', 3050, 'image/jpeg', NULL),
(3751, 'lebrcxgrt2', 3050, 'image/jpeg', NULL),
(4001, 'tr32dmaooo', 3050, 'image/jpeg', NULL),
(4301, 'jef72psozs', 19922, 'image/png', NULL),
(4351, '4baojj7rqx', 19922, 'image/png', NULL),
(4501, '06lezm4jxb', 11507, 'image/jpeg', NULL),
(4502, 'pigjsorrao', 11507, 'image/jpeg', NULL),
(4601, '7aao6ogwsx', 75990, 'image/png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `openjpa_sequence_table`
--

CREATE TABLE `openjpa_sequence_table` (
  `ID` tinyint(4) NOT NULL,
  `SEQUENCE_VALUE` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `openjpa_sequence_table`
--

INSERT INTO `openjpa_sequence_table` (`ID`, `SEQUENCE_VALUE`) VALUES
(0, 4751);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `USER_USERID` int(11) DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `USERIMAGE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `content`, `date`, `USER_ID`, `title`, `USER_USERID`, `IMAGE_ID`, `USERIMAGE_ID`) VALUES
(4451, 'Victor´s post', '2017-11-27 19:32:26', 4401, NULL, NULL, NULL, NULL),
(4651, 'TEST', '2017-11-27 19:39:45', 4552, NULL, NULL, 4601, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_image`
--

CREATE TABLE `upload_image` (
  `Image_id` int(11) NOT NULL,
  `IMAGE` longblob,
  `Image_name` varchar(50) DEFAULT NULL,
  `image_length` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `userpic` int(11) DEFAULT NULL,
  `USERPIC_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`, `userid`, `userpic`, `USERPIC_ID`) VALUES
(3901, 'yury@test.com', 'Yury', 'password', NULL, 1, NULL),
(4101, 'test@test.com', 'Test', 'password', NULL, 3, NULL),
(4401, 'victor@test.com', 'Victor', 'password', NULL, NULL, 4351),
(4552, 'usera@test.com', 'User A', 'password', NULL, NULL, 4502);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_post`
--

CREATE TABLE `user_post` (
  `USER_ID` int(11) DEFAULT NULL,
  `POSTS_ID` int(11) DEFAULT NULL,
  `USER_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `openjpa_sequence_table`
--
ALTER TABLE `openjpa_sequence_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `I_POST_USER` (`USER_ID`);

--
-- Indices de la tabla `upload_image`
--
ALTER TABLE `upload_image`
  ADD PRIMARY KEY (`Image_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `U_USER_EMAIL` (`email`),
  ADD UNIQUE KEY `U_USER_NAME` (`name`);

--
-- Indices de la tabla `user_post`
--
ALTER TABLE `user_post`
  ADD KEY `I_USR_PST_ELEMENT` (`POSTS_ID`),
  ADD KEY `I_USR_PST_USER_ID` (`USER_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `upload_image`
--
ALTER TABLE `upload_image`
  MODIFY `Image_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
