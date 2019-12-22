-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2019 at 02:42 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FundacionAfasiaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `dni` int(50) NOT NULL,
  `domicilio` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fechanac` date NOT NULL,
  `diagnos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `usuario`, `password`, `email`, `dni`, `domicilio`, `fechanac`, `diagnos`) VALUES
(1, 'Monica', 'Macias', 'monicamac8', 'Mmacias55', 'maciasmoni@outlook.com', 39305487, 'Av Corrientes 110', '1983-10-15', 'Afasia de Broca'),
(2, 'Wilsón', 'Macias', 'wilsónmac3', 'Wmacias35', 'maciaswils@outlook.com', 34712688, 'Boyaca 383', '1995-01-09', 'Afasia Global'),
(3, 'Juan', 'Hoyos', 'juanhoy2', 'Jhoyos69', 'hoyosjuan@gmail.com', 32701466, 'Humbold 152', '1994-05-16', 'Afasia Anomica'),
(4, 'Homero', 'Giraldo', 'homerogir9', 'Hgiraldo36', 'giraldohome@hotmail.com', 33566895, 'Yapeyu 365', '1978-06-03', 'Afasia de Broca'),
(5, 'Juanluz', 'Sanchez', 'juanluzsan8', 'Jsanchez25', 'sanchezjuan@hotmail.com', 37317991, 'Cuyo 215', '1986-04-10', 'Afasia de Broca'),
(6, 'Juanluz', 'Amaya', 'juanluzama9', 'Jamaya89', 'amayajuan@hotmail.com', 41005260, 'Av Rivadavia 108', '1975-07-18', 'Afasia Global'),
(7, 'Luis', 'Monsalve', 'luismon6', 'Lmonsalve35', 'monsalveluis@outlook.com', 36566900, 'Juncal 208', '1985-05-24', 'Afasia de Wernicke'),
(8, 'Lizeth', 'Parra', 'lizethpar5', 'Lparra67', 'parralize@gmail.com', 37195846, 'Av Rivadavia 296', '1973-03-30', 'Afasia de Broca'),
(9, 'Cristian', 'Gonzalez', 'cristiangon7', 'Cgonzalez44', 'gonzalezcris@hotmail.com', 36662366, 'Valle 157', '1973-12-29', 'Afasia Transcortical Motora'),
(10, 'Yohan', 'Agudelo', 'yohanagu2', 'Yagudelo44', 'agudeloyoha@outlook.com', 34401760, 'Av Corrientes 242', '1988-12-17', 'Afasia Anomica'),
(11, 'Yasmir', 'Vasquez', 'yasmirvas8', 'Yvasquez35', 'vasquezyasm@gmail.com', 34299195, 'Ayacucho 391', '1993-04-05', 'Afasia Transcortical Motora'),
(12, 'Ana', 'Prisco', 'anapri2', 'Aprisco37', 'priscoana@outlook.com', 35684860, 'Av Corrientes 172', '1976-01-03', 'Afasia Anomica'),
(13, 'Ruth', 'Prisco', 'ruthpri8', 'Rprisco01', 'priscoruth@gmail.com', 41058541, 'Ayacucho 341', '1984-11-02', 'Afasia Global'),
(14, 'Yasmir', 'Parra', 'yasmirpar4', 'Yparra52', 'parrayasm@hotmail.com', 34233299, 'Yapeyu 181', '1975-12-19', 'Afasia Global'),
(15, 'Cristian', 'Velez', 'cristianvel4', 'Cvelez55', 'velezcris@gmail.com', 40481104, 'Av Directorio 110', '1973-04-06', 'Afasia de Wernicke'),
(16, 'Joaquin', 'Gonzalez', 'joaquingon4', 'Jgonzalez53', 'gonzalezjoaq@hotmail.com', 37817860, 'Boyaca 102', '1991-06-06', 'Afasia Anomica'),
(17, 'Martha', 'Monsalve', 'marthamon3', 'Mmonsalve18', 'monsalvemart@hotmail.com', 34360328, 'Humbold 302', '1988-05-16', 'Afasia Transcortical Motora'),
(18, 'Andres', 'Valencia', 'andresval4', 'Avalencia46', 'valenciaandr@outlook.com', 38450057, 'B. Mitre 355', '2000-08-24', 'Afasia Transcortical Motora'),
(19, 'Maria', 'Monsalve', 'mariamon3', 'Mmonsalve24', 'monsalvemari@hotmail.com', 33269761, 'Juncal 378', '1990-03-26', 'Afasia de Wernicke'),
(20, 'Luz', 'Amaya', 'luzama6', 'Lamaya00', 'amayaluz@hotmail.com', 39835562, 'Fray 127', '1999-09-06', 'Afasia Transcortical Motora'),
(21, 'Margarita', 'Zapata', 'margaritazap2', 'Mzapata32', 'zapatamarg@hotmail.com', 40746576, 'Valle 318', '1978-01-23', 'Afasia de Wernicke'),
(22, 'Ruth', 'Rojas', 'ruthroj6', 'Rrojas23', 'rojasruth@outlook.com', 36225673, 'Yapeyu 297', '1984-02-07', 'Afasia Global'),
(23, 'Wilsón', 'Velez', 'wilsónvel2', 'Wvelez72', 'velezwils@hotmail.com', 39457634, 'Av Independencia 190', '1997-10-06', 'Afasia Transcortical Motora'),
(24, 'Lizeth', 'Montoya', 'lizethmon9', 'Lmontoya40', 'montoyalize@outlook.com', 32540887, 'Boyaca 269', '1994-11-16', 'Afasia Global'),
(25, 'Homero', 'Valencia', 'homeroval5', 'Hvalencia03', 'valenciahome@gmail.com', 42872621, 'Ayacucho 223', '1992-06-25', 'Afasia de Wernicke'),
(26, 'Lizeth', 'Atehortua', 'lizethate4', 'Latehortua33', 'atehortualize@outlook.com', 35035652, 'Juncal 233', '1980-06-19', 'Afasia de Wernicke'),
(27, 'Fernando', 'Monsalve', 'fernandomon6', 'Fmonsalve71', 'monsalvefern@hotmail.com', 32117023, 'Juncal 392', '1995-07-26', 'Afasia de Broca'),
(28, 'Orlando', 'Lopera', 'orlandolop3', 'Olopera39', 'loperaorla@outlook.com', 35444567, 'Venezuela 247', '1992-12-21', 'Afasia Transcortical Motora'),
(29, 'Humberto', 'Taborda', 'humbertotab0', 'Htaborda28', 'tabordahumb@hotmail.com', 32375684, 'Venezuela 311', '1999-09-30', 'Afasia Global'),
(30, 'Rubiel', 'Zapata', 'rubielzap9', 'Rzapata42', 'zapatarubi@outlook.com', 33977974, 'Venezuela 228', '1988-04-27', 'Afasia Anomica'),
(31, 'Diego', 'Misas', 'diegomis2', 'Dmisas13', 'misasdieg@hotmail.com', 42480621, 'Yapeyu 288', '1974-02-11', 'Afasia de Broca'),
(32, 'Genni', 'Correa', 'gennicor9', 'Gcorrea45', 'correagenn@hotmail.com', 39668707, 'Fray 310', '1980-04-27', 'Afasia Transcortical Motora'),
(33, 'Cristian', 'Agudelo', 'cristianagu7', 'Cagudelo19', 'agudelocris@outlook.com', 40112364, 'B. Mitre 207', '1997-09-06', 'Afasia de Broca'),
(34, 'Juan', 'Valencia', 'juanval3', 'Jvalencia05', 'valenciajuan@hotmail.com', 40025027, 'Ayacucho 261', '1990-12-14', 'Afasia de Broca'),
(35, 'Andres', 'Mira', 'andresmir2', 'Amira57', 'miraandr@hotmail.com', 42954862, 'Fray 332', '1975-06-18', 'Afasia de Broca'),
(36, 'Juan', 'Lopera', 'juanlop9', 'Jlopera70', 'loperajuan@outlook.com', 32948169, 'Venezuela 195', '1995-12-05', 'Afasia de Broca'),
(37, 'Cristian', 'Arango', 'cristianara3', 'Carango54', 'arangocris@hotmail.com', 39277822, 'Pasco 226', '1974-02-20', 'Afasia de Broca'),
(38, 'Juan', 'Taborda', 'juantab5', 'Jtaborda24', 'tabordajuan@gmail.com', 35108012, 'Fray 249', '1986-06-13', 'Afasia Global'),
(39, 'Joaquin', 'Valencia', 'joaquinval0', 'Jvalencia51', 'valenciajoaq@hotmail.com', 35033496, 'Av Independencia 215', '2001-09-03', 'Afasia Transcortical Motora'),
(40, 'Luz', 'Zapata', 'luzzap2', 'Lzapata13', 'zapataluz@hotmail.com', 40261077, 'Av Corrientes 347', '1982-10-04', 'Afasia de Broca'),
(41, 'Juan', 'Betancur', 'juanbet4', 'Jbetancur90', 'betancurjuan@gmail.com', 34561658, 'Valle 369', '1979-05-25', 'Afasia Transcortical Motora'),
(42, 'Juanluz', 'Gaviria', 'juanluzgav8', 'Jgaviria58', 'gaviriajuan@hotmail.com', 39887679, 'Pasco 151', '1973-04-02', 'Afasia de Wernicke'),
(43, 'Jhuliana', 'Betancur', 'jhulianabet0', 'Jbetancur72', 'betancurjhul@hotmail.com', 38112274, 'Humbold 260', '1993-03-02', 'Afasia de Broca'),
(44, 'Jhon', 'Arango', 'jhonara2', 'Jarango40', 'arangojhon@hotmail.com', 33671680, 'Valle 113', '1998-05-28', 'Afasia Global'),
(45, 'Martha', 'Amaya', 'marthaama2', 'Mamaya99', 'amayamart@gmail.com', 37618112, 'Pasco 293', '1992-11-01', 'Afasia Transcortical Motora'),
(46, 'Monica', 'Prisco', 'monicapri9', 'Mprisco30', 'priscomoni@hotmail.com', 39573922, 'B. Mitre 296', '1978-01-29', 'Afasia de Broca'),
(47, 'Yohan', 'Cardona', 'yohancar7', 'Ycardona60', 'cardonayoha@gmail.com', 41725436, 'Cuyo 400', '1991-05-14', 'Afasia Transcortical Motora'),
(48, 'Marleny', 'Agudelo', 'marlenyagu0', 'Magudelo57', 'agudelomarl@hotmail.com', 37134689, 'Yapeyu 252', '1990-02-23', 'Afasia Transcortical Motora'),
(49, 'Andres', 'Loaiza', 'andresloa1', 'Aloaiza86', 'loaizaandr@outlook.com', 37831175, 'Yapeyu 379', '1990-07-10', 'Afasia Transcortical Motora'),
(50, 'Genni', 'Piedrahita', 'gennipie8', 'Gpiedrahita74', 'piedrahitagenn@outlook.com', 38082814, 'Av Directorio 361', '1983-07-20', 'Afasia Anomica');

-- --------------------------------------------------------

--
-- Table structure for table `alumnos_cursos`
--

CREATE TABLE `alumnos_cursos` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `alumnos_cursos`
--

INSERT INTO `alumnos_cursos` (`id`, `id_curso`, `id_alumno`) VALUES
(1, 2, 32),
(2, 1, 31),
(4, 4, 49),
(5, 2, 29),
(6, 3, 16),
(7, 3, 49),
(8, 2, 43),
(9, 2, 50),
(10, 4, 13),
(11, 5, 4),
(12, 3, 13),
(13, 3, 30),
(14, 4, 13),
(15, 4, 32),
(16, 3, 11),
(17, 5, 23),
(18, 1, 14),
(19, 3, 19),
(20, 4, 2),
(21, 5, 17),
(22, 1, 5),
(23, 5, 15),
(24, 1, 1),
(25, 1, 19),
(26, 4, 47),
(27, 3, 2),
(28, 5, 24),
(29, 4, 21),
(30, 1, 28),
(31, 3, 46),
(32, 3, 39),
(33, 5, 16),
(34, 5, 30),
(35, 3, 40),
(36, 3, 5),
(37, 3, 45),
(38, 5, 14),
(39, 7, 50),
(40, 3, 17),
(44, 7, 23);

-- --------------------------------------------------------

--
-- Table structure for table `asistentes`
--

CREATE TABLE `asistentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoMiembro` enum('Honorario','Voluntario') COLLATE utf8_spanish2_ci NOT NULL,
  `dni` int(50) NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `domicilio` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `asistentes`
--

INSERT INTO `asistentes` (`id`, `nombre`, `apellido`, `tipoMiembro`, `dni`, `email`, `domicilio`) VALUES
(1, 'Juan Esteban', 'Del Campo', 'Voluntario', 12784912, 'jedelcampo21@yahoo.com', 'lavalle 897'),
(2, 'Ricardo', 'Sanchez', 'Voluntario', 10258900, 'ricardos@yahoo.com', 'rivadavia 278'),
(3, 'luisina', 'ruiz', 'Voluntario', 7485126, 'luisinar@gmail.com', 'lavalle745'),
(4, 'david', 'lloyd', 'Honorario', 74123896, 'dlloyd@gmail.com', 'san trop 011'),
(5, 'hermann', 'hess', 'Voluntario', 2748519, 'hermanhess@yahoo.com', 'loria 8457');

-- --------------------------------------------------------

--
-- Table structure for table `asistentes_cursos`
--

CREATE TABLE `asistentes_cursos` (
  `id` int(11) NOT NULL,
  `id_asistente` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `asistentes_cursos`
--

INSERT INTO `asistentes_cursos` (`id`, `id_asistente`, `id_curso`) VALUES
(1, 3, 4),
(2, 1, 2),
(3, 2, 3),
(4, 3, 6),
(5, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'tratamiento integral intensivo'),
(2, 'centro de dia'),
(3, 'prestaciones de apoyo'),
(4, 'Seguimiento en neurología y fisiatría'),
(5, 'Salidas didácticas recreativas'),
(6, 'Orientación'),
(7, 'Reuniones multifamiliares'),
(8, 'evento');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `turno` enum('tm','tt','tn') COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `id_profesor`, `id_categoria`, `turno`, `descripcion`) VALUES
(1, 'musicoterapia', 2, 2, 'tm', 'Taller para aprender musica'),
(2, 'Historia de la humanidad', 6, 6, 'tn', 'Se enseña la historia de la humanidad'),
(3, 'reunion de padres', 3, 7, 'tn', 'Reunion informativa para padres o tutores'),
(4, 'apoyo escolar', 4, 5, 'tt', 'Actividades educativas '),
(5, 'capacitacion profesional tornero', 5, 6, 'tm', 'Curso de capacitacion para torneria'),
(6, 'fisioterapia', 9, 1, 'tm', 'Entrenamiento físico especializado '),
(7, 'Clases de canto', 4, 5, 'tn', 'Clases de canto expresiva');

-- --------------------------------------------------------

--
-- Table structure for table `profesionales`
--

CREATE TABLE `profesionales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `domicilio` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `dni` int(50) NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `profesion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `profesionales`
--

INSERT INTO `profesionales` (`id`, `nombre`, `apellido`, `domicilio`, `dni`, `email`, `profesion`) VALUES
(1, 'Omar', 'Perez', 'Juncal 543', 11358456, 'omarperez@gmail.com', 'Medico'),
(2, 'Soledad', 'Pastoruti', 'Santa Fe 987', 74123856, 'lasole@yahoo.com', 'Profesora'),
(3, 'Frederich', 'Nigman', 'Rivadavia 234', 24875194, 'FrederichNig@gmail.com', 'Psicologo'),
(4, 'Agustina', 'Lopez', 'Boedo 100', 14752861, 'alopez@gmail.com', 'docente'),
(5, 'Felix', 'Campos', 'garay 150', 9456782, 'fcampos@yahoo.com', 'escultor'),
(6, 'Esteban', 'Del campo', 'Lavalle', 24985123, 'eDelcampo@yahoo.com', 'Asistente Social'),
(7, 'max', 'power', 'Presidente Peron 100', 94586320, 'maxpower@gmail.comm', 'maestro del universo'),
(8, 'Camila', 'Sanchez', 'chajari 654', 32754102, 'csanchez@yahoo.com', 'Musico'),
(9, 'Paula', 'Ryands', 'Yapeyu 280', 10222348, 'Pryands@yahoo.com', 'fisioterapeuta'),
(10, 'Jose', 'lindsay', '9 de julio 100', 7845691, 'jlindsasy@gmail.com', 'musicoterapeutra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumnos_cursos`
--
ALTER TABLE `alumnos_cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indexes for table `asistentes`
--
ALTER TABLE `asistentes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asistentes_cursos`
--
ALTER TABLE `asistentes_cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asistente` (`id_asistente`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_ibfk_1` (`id_profesor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `profesionales`
--
ALTER TABLE `profesionales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `alumnos_cursos`
--
ALTER TABLE `alumnos_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `asistentes`
--
ALTER TABLE `asistentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asistentes_cursos`
--
ALTER TABLE `asistentes_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profesionales`
--
ALTER TABLE `profesionales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumnos_cursos`
--
ALTER TABLE `alumnos_cursos`
  ADD CONSTRAINT `alumnos_cursos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `alumnos_cursos_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`);

--
-- Constraints for table `asistentes_cursos`
--
ALTER TABLE `asistentes_cursos`
  ADD CONSTRAINT `asistentes_cursos_ibfk_1` FOREIGN KEY (`id_asistente`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `asistentes_cursos_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`);

--
-- Constraints for table `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesionales` (`id`),
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
