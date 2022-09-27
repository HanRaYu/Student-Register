-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 08:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--
CREATE DATABASE IF NOT EXISTS `admission` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `admission`;

-- --------------------------------------------------------

--
-- Table structure for table `card_activation`
--

CREATE TABLE `card_activation` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_activation`
--

INSERT INTO `card_activation` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(102, 'Lavkush', 'adsfasdf', 'asdfadf', 'asdf', '', '', '', '', 'asdf', '', '', '', '', '', '', 'aadsf', '', '', '', '2021-01-16 12:47:17'),
(103, '123333333333', 'Kush ', 'singh', '', '', '', 'Choose', '', '1222222222', 'Choose...', '', '', '', '', '', '', '', '', 'vandana_photo.jpeg', '2021-01-16 12:52:59'),
(104, 'ABCD12345677', 'Kush ', 'Singh', '', 'xxxxxxxxxxxx', '2021-01-22', 'Male', 'emmyluckytech@gmail.com', '1234567890', 'Himachal Pra', 'Rohtas', 'Dehri', 'Dehri', '111111111', '', '', '', '111111111111', 'Webp.net-resizeimage.jpg', '2021-01-16 13:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(104, 'ABCD12345677', 'Kush ', 'Singh', '', 'xxxxxxxxxxxx', '2021-01-22', 'Male', 'emmyluckytech@gmail.com', '1234567890', 'Himachal Pra', 'Rohtas', 'Dehri', 'Dehri', '111111111', '', '', '', '111111111111', 'Webp.net-resizeimage.jpg', '2021-01-16 13:06:03'),
(105, '123123213131', 'asdljf', 'aslkdjfl', 'adskljf', '', '', 'Choose', 'emmyluckytech@gmail.com', '8873651128', 'Choose...', 'Dehri', '', '', '', '', 'asdklj;', '', '', 'Lavkush Kumar.jpg', '2021-07-17 17:32:40'),
(107, 'sdfgsdfg', '', '', '', '', '', 'Choose', '', 'sfdgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:15:55'),
(108, 'fsdfgsdfg', 'sdfgsdfgsdfg', 'sdf', 'sdfgsgf', '', '', 'Choose', '', 'sdfgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:16:58'),
(109, 'f546456', 'dsfgsadfg45', 'sdf45g45', 'sdf45g', '', '', 'Choose', '', '564654654', 'Choose...', '', '', '', '', '', 'sdfg', '', '', '', '2021-07-18 12:19:02'),
(110, 'lavkush k', 'lavkush', ' kumar', 'sinhgh', '', '', 'Choose', '', 'lavkush', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:20:38'),
(111, '564654646', 'lavkush singh', 'singh', '', '', '', 'Choose', '', '4564654gf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:22:23'),
(112, 'lavkush k', 'lavkush', ' kumar', 'sinhgh', '', '', 'Choose', '', 'lavkush', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:23:46'),
(113, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:23:58'),
(114, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:14'),
(115, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:22'),
(116, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:01'),
(117, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:38'),
(118, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(5, 'kushkush', '$2y$10$pkgNOc0r6DaiDnCTIVT/VubRm0LqncpPgipzdARaH/9wZto.zmYLu', '2021-05-22 00:30:03'),
(6, '123123', '$2y$10$AwA0obkWAdzF6Z6zCqZ3Xu5QinFNWhL89iAUde8YYfYorruaxOjCm', '2021-07-17 16:49:54'),
(7, 'rayou', '$2y$10$vH5rYwDVIvvVH2wqB2UTw.VbuD2V2kD.vvn5qC58o51m2K48/aJRi', '2022-09-10 14:07:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_activation`
--
ALTER TABLE `card_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_activation`
--
ALTER TABLE `card_activation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `baray`
--
CREATE DATABASE IF NOT EXISTS `baray` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `baray`;
--
-- Database: `book`
--
CREATE DATABASE IF NOT EXISTS `book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book`;
--
-- Database: `dbmart`
--
CREATE DATABASE IF NOT EXISTS `dbmart` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbmart`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategorys`
--

CREATE TABLE `tblcategorys` (
  `id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcategorys`
--

INSERT INTO `tblcategorys` (`id`, `category`, `gid`) VALUES
(2, 'កំប៉ុង', 3),
(3, 'ដប', 1),
(4, 'ដប', 3),
(5, 'ក្តៅ', 3),
(6, 'ត្រជាក់', 3),
(7, 'ក្រឡុក', 3),
(8, 'ឆា', 2),
(9, 'ស្ងោរ', 2),
(10, 'ចៀន', 2),
(11, 'អាំង', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblgroups`
--

CREATE TABLE `tblgroups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgroups`
--

INSERT INTO `tblgroups` (`id`, `gname`) VALUES
(1, 'ស្រាបៀរ'),
(2, 'អាហារ'),
(3, 'ភេសជ្ជៈ');

-- --------------------------------------------------------

--
-- Table structure for table `tblimports`
--

CREATE TABLE `tblimports` (
  `id` int(11) NOT NULL,
  `importno` varchar(20) NOT NULL,
  `procode` varchar(45) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `proname` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `dateimport` date NOT NULL,
  `supplyer` varchar(100) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblimports`
--

INSERT INTO `tblimports` (`id`, `importno`, `procode`, `pid`, `proname`, `price`, `dateimport`, `supplyer`, `qty`, `discount`, `total`) VALUES
(1, '0001', 'coca-001', 1, 'Coca Cola', 1, '2022-08-03', 'Rayou', '10', '0', 10),
(2, '0002', 'aaaa', 2, 'ABC', 0.5, '2022-08-03', 'MonyVong', '100', '0', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `pname` varchar(250) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT NULL,
  `cgid` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `pname`, `price`, `qty`, `cgid`, `description`, `gid`) VALUES
(1, 'Coca Cola', '0.5', '100', 1, 'កូកាកូឡា', 3),
(2, 'ABC', '0.5', '200', 1, 'ស្រាបៀរ ABC', 1),
(3, 'បាយឆាសាច់គោ', '5', '10', 8, 'បាយឆាសាច់គោ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplyer`
--

CREATE TABLE `tblsupplyer` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `contactname` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `tell` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsupplyer`
--

INSERT INTO `tblsupplyer` (`id`, `companyname`, `contactname`, `sex`, `tell`, `address`) VALUES
(1, 'Coca Cola', 'Rayou', 'ប្រុស', '0965021322', 'បន្ទាយមានជ័យ'),
(3, 'Cambo Cycle', 'Pitu', 'ប្រុស', '0965021322', 'កំពង់សោម'),
(5, 'Vision', 'Dara', 'ស្រី', '0965021322', 'កំពត'),
(7, 'Samsung', 'Chhan Thorn', 'ប្រុស', '094276280', 'USA'),
(8, 'OPPO', 'Vuking', 'ប្រុស', '092232523', 'Korea'),
(9, 'VIVO', 'MonyVong', 'ប្រុស', '0965021322', 'BMC'),
(10, 'OnePlus', 'Leang Chheang', 'ស្រី', '097263726', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vcategory`
-- (See below for the actual view)
--
CREATE TABLE `vcategory` (
`id` int(11)
,`category` varchar(200)
,`gname` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vimportitem`
-- (See below for the actual view)
--
CREATE TABLE `vimportitem` (
`id` int(11)
,`importno` varchar(20)
,`procode` varchar(45)
,`pname` varchar(250)
,`price` double
,`dateimport` date
,`supplyer` varchar(100)
,`qty` varchar(20)
,`discount` varchar(45)
,`total` double
,`description` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vproduct`
-- (See below for the actual view)
--
CREATE TABLE `vproduct` (
`id` int(11)
,`pname` varchar(250)
,`price` varchar(200)
,`qty` varchar(200)
,`description` varchar(255)
,`category` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure for view `vcategory`
--
DROP TABLE IF EXISTS `vcategory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vcategory`  AS SELECT `tblcategorys`.`id` AS `id`, `tblcategorys`.`category` AS `category`, `tblgroups`.`gname` AS `gname` FROM (`tblcategorys` join `tblgroups` on(`tblcategorys`.`gid` = `tblgroups`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vimportitem`
--
DROP TABLE IF EXISTS `vimportitem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vimportitem`  AS SELECT `tblimports`.`id` AS `id`, `tblimports`.`importno` AS `importno`, `tblimports`.`procode` AS `procode`, `tblproducts`.`pname` AS `pname`, `tblimports`.`price` AS `price`, `tblimports`.`dateimport` AS `dateimport`, `tblimports`.`supplyer` AS `supplyer`, `tblimports`.`qty` AS `qty`, `tblimports`.`discount` AS `discount`, `tblimports`.`total` AS `total`, `tblproducts`.`description` AS `description` FROM (`tblimports` join `tblproducts` on(`tblimports`.`pid` = `tblproducts`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vproduct`
--
DROP TABLE IF EXISTS `vproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vproduct`  AS SELECT `tblproducts`.`id` AS `id`, `tblproducts`.`pname` AS `pname`, `tblproducts`.`price` AS `price`, `tblproducts`.`qty` AS `qty`, `tblproducts`.`description` AS `description`, `tblcategorys`.`category` AS `category` FROM (`tblproducts` join `tblcategorys` on(`tblproducts`.`id` = `tblcategorys`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategorys`
--
ALTER TABLE `tblcategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgroups`
--
ALTER TABLE `tblgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblimports`
--
ALTER TABLE `tblimports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsupplyer`
--
ALTER TABLE `tblsupplyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategorys`
--
ALTER TABLE `tblcategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblgroups`
--
ALTER TABLE `tblgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblimports`
--
ALTER TABLE `tblimports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsupplyer`
--
ALTER TABLE `tblsupplyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `javalogin`
--
CREATE DATABASE IF NOT EXISTS `javalogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `javalogin`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fullname` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Database: `manage_student_registration`
--
CREATE DATABASE IF NOT EXISTS `manage_student_registration` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `manage_student_registration`;

-- --------------------------------------------------------

--
-- Table structure for table `infor_parents`
--

CREATE TABLE `infor_parents` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `father_latin` varchar(45) DEFAULT NULL,
  `fa_status` varchar(45) DEFAULT NULL,
  `fa_training_level` varchar(45) DEFAULT NULL,
  `fa_occ` varchar(45) DEFAULT NULL,
  `fa_og` varchar(45) DEFAULT NULL,
  `fa_email` varchar(45) DEFAULT NULL,
  `fa_phone` varchar(45) DEFAULT NULL,
  `fa_fb` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `mother_latin` varchar(45) DEFAULT NULL,
  `mo_status` varchar(45) DEFAULT NULL,
  `mo_training_level` varchar(45) DEFAULT NULL,
  `mo_occ` varchar(45) DEFAULT NULL,
  `mo_og` varchar(45) DEFAULT NULL,
  `mo_email` varchar(45) DEFAULT NULL,
  `mo_phone` varchar(45) DEFAULT NULL,
  `mo_fb` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infor_parents`
--

INSERT INTO `infor_parents` (`id`, `stu_id`, `father_name`, `father_latin`, `fa_status`, `fa_training_level`, `fa_occ`, `fa_og`, `fa_email`, `fa_phone`, `fa_fb`, `mother_name`, `mother_latin`, `mo_status`, `mo_training_level`, `mo_occ`, `mo_og`, `mo_email`, `mo_phone`, `mo_fb`) VALUES
(1, 1, 'ព្រំ យង់', 'Prom Yong', 'រស់', 'ថ្នាក់ទី៤', 'កសិករ', 'គ្មាន', 'yong@gamail.com', '08384422', 'Lang', 'អៀប ឡាង', 'Eab Lang', 'រស់', 'ថ្នាក់ទី១', 'មេផ្ទះ', 'គ្មាន', 'lang@gmail.com', '02837223', 'Lang');

-- --------------------------------------------------------

--
-- Table structure for table `infor_register`
--

CREATE TABLE `infor_register` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `level_degree` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `year_study` varchar(45) DEFAULT NULL,
  `training_level` varchar(45) DEFAULT NULL,
  `study_in` varchar(10) DEFAULT NULL,
  `semester` varchar(1) DEFAULT NULL,
  `gen_stu` varchar(5) DEFAULT NULL,
  `t_study` varchar(45) DEFAULT NULL,
  `ven_study` varchar(45) DEFAULT NULL,
  `type_study` varchar(100) DEFAULT NULL,
  `leader_name` varchar(45) DEFAULT NULL,
  `num_scholarship` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infor_register`
--

INSERT INTO `infor_register` (`id`, `stu_id`, `level_degree`, `major`, `faculty`, `province`, `year_study`, `training_level`, `study_in`, `semester`, `gen_stu`, `t_study`, `ven_study`, `type_study`, `leader_name`, `num_scholarship`) VALUES
(1, 1, 'បរិញ្ញាបត្រ', 'ព៍ត៌មានវិទ្យា', 'មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យា', 'បន្ទាយមានជ័យ', '២០២1-២០២២', 'មធ្យមសិក្សាទុតិយភូមិ', '២', '២', '១២', 'ចន្ទ-សុក្រ', 'រសៀល', 'ទូទៅ', 'គ្មាន', '១០០%');

-- --------------------------------------------------------

--
-- Table structure for table `infor_siblings`
--

CREATE TABLE `infor_siblings` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `sib_name` varchar(45) DEFAULT NULL,
  `sib_sex` varchar(45) DEFAULT NULL,
  `sib_status` varchar(45) DEFAULT NULL,
  `sib_training_level` varchar(45) DEFAULT NULL,
  `sib_occ` varchar(45) DEFAULT NULL,
  `sib_og` varchar(45) DEFAULT NULL,
  `sib_phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infor_siblings`
--

INSERT INTO `infor_siblings` (`id`, `stu_id`, `sib_name`, `sib_sex`, `sib_status`, `sib_training_level`, `sib_occ`, `sib_og`, `sib_phone`) VALUES
(1, 1, 'ហល់ ស្រីនាង', 'ស្រី', 'រស់', 'ថ្នាក់ទី៩', 'សិស្ស', 'គ្មាន', '08837223');

-- --------------------------------------------------------

--
-- Table structure for table `infor_student`
--

CREATE TABLE `infor_student` (
  `id` int(11) NOT NULL,
  `card_no` varchar(45) DEFAULT NULL,
  `kh_name` varchar(100) DEFAULT NULL,
  `latin_name` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `ethnicity` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `bacii_num` varchar(45) DEFAULT NULL,
  `bacii_grade` varchar(5) DEFAULT NULL,
  `bacii_session` varchar(45) DEFAULT NULL,
  `exam_center` varchar(155) DEFAULT NULL,
  `from_school` varchar(100) DEFAULT NULL,
  `province_school` varchar(100) DEFAULT NULL,
  `photo` varchar(155) DEFAULT NULL,
  `uploaded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infor_student`
--

INSERT INTO `infor_student` (`id`, `card_no`, `kh_name`, `latin_name`, `sex`, `dob`, `ethnicity`, `nationality`, `status`, `occupation`, `phone`, `email`, `facebook`, `bacii_num`, `bacii_grade`, `bacii_session`, `exam_center`, `from_school`, `province_school`, `photo`, `uploaded`) VALUES
(1, '1234', 'ហល់​ រ៉ាយូ', 'Horl Rayou', 'ប្រុស', '2022-09-06', 'ខ្មែរ', 'ខ្មែរ', 'នៅលីវ', 'និស្សិត', '0965021322', 'horlrayou@gmail.com', 'Han Ra Yu', '1234', 'E', '2022-09-14', 'វិទ្យាល័យសិរីសោភណ្ឌ', 'វិទ្យាល័យស្វាយចក', 'បន្ទាយមានជ័យ', '4x6.jpg', '2022-09-26 23:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `live_current`
--

CREATE TABLE `live_current` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `lc_home_num` varchar(45) DEFAULT NULL,
  `lc_street` varchar(45) DEFAULT NULL,
  `lc_village` varchar(45) DEFAULT NULL,
  `lc_commune` varchar(45) DEFAULT NULL,
  `lc_district` varchar(45) DEFAULT NULL,
  `lc_province` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `live_current`
--

INSERT INTO `live_current` (`id`, `stu_id`, `lc_home_num`, `lc_street`, `lc_village`, `lc_commune`, `lc_district`, `lc_province`) VALUES
(1, 1, '១២', '៥៦', 'ខ្វាវលិច', 'ស្វាយចេក', 'ស្វាយចេក', 'បន្ទាយមានជ័យ');

-- --------------------------------------------------------

--
-- Table structure for table `place_of_birth`
--

CREATE TABLE `place_of_birth` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `pob_home_num` varchar(45) DEFAULT NULL,
  `pob_street` varchar(45) DEFAULT NULL,
  `pob_village` varchar(45) DEFAULT NULL,
  `pob_commune` varchar(45) DEFAULT NULL,
  `pob_district` varchar(45) DEFAULT NULL,
  `pob_province` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_of_birth`
--

INSERT INTO `place_of_birth` (`id`, `stu_id`, `pob_home_num`, `pob_street`, `pob_village`, `pob_commune`, `pob_district`, `pob_province`) VALUES
(1, 1, '១២', '៥៦', 'ខ្វាវលិច', 'ស្វាយចេក', 'ស្វាយចេក', 'បន្ទាយមានជ័យ');

-- --------------------------------------------------------

--
-- Table structure for table `study_history`
--

CREATE TABLE `study_history` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `primary_school` varchar(155) DEFAULT NULL,
  `primary_in_out` varchar(45) DEFAULT NULL,
  `primary_grade` varchar(45) DEFAULT NULL,
  `primary_degree` varchar(45) DEFAULT NULL,
  `secondary_school` varchar(45) DEFAULT NULL,
  `secondary_in_out` varchar(45) DEFAULT NULL,
  `secondary_grade` varchar(45) DEFAULT NULL,
  `secondary_degree` varchar(45) DEFAULT NULL,
  `high_school` varchar(45) DEFAULT NULL,
  `high_in_out` varchar(45) DEFAULT NULL,
  `high_grade` varchar(45) DEFAULT NULL,
  `high_degree` varchar(45) DEFAULT NULL,
  `university` varchar(45) DEFAULT NULL,
  `university_in_out` varchar(45) DEFAULT NULL,
  `u_year` varchar(45) DEFAULT NULL,
  `u_degree` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `study_history`
--

INSERT INTO `study_history` (`id`, `stu_id`, `primary_school`, `primary_in_out`, `primary_grade`, `primary_degree`, `secondary_school`, `secondary_in_out`, `secondary_grade`, `secondary_degree`, `high_school`, `high_in_out`, `high_grade`, `high_degree`, `university`, `university_in_out`, `u_year`, `u_degree`) VALUES
(1, 1, 'ខ្វាវលិច', '២០០៦-២០១២', '១-៦', 'គ្មាន', 'ខ្វាវលិច', '២០១២-២០១៥', '៧-៩', 'បឋមភូមិ', 'ស្វាយចេក', '២០១៥-២០១៨', '១០-១២', 'មធ្យមសិក្សាទុតិយភូមិ', 'ជាតិមានជ័យ', '២០១៨-២០២២', '១-៤', 'បរិញ្ញាបត្រ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(7, 'rayou', '$2y$10$kwQW9aSMrsZrsFkTLTzbfewSc2Q1he/9CZbF2R545n5kn6Nx0GZ3G', '2022-09-12 14:05:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infor_parents`
--
ALTER TABLE `infor_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PARENTS_STU_ID` (`stu_id`);

--
-- Indexes for table `infor_register`
--
ALTER TABLE `infor_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_REGISTER_STU_ID` (`stu_id`);

--
-- Indexes for table `infor_siblings`
--
ALTER TABLE `infor_siblings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SIBLING_STU_ID` (`stu_id`);

--
-- Indexes for table `infor_student`
--
ALTER TABLE `infor_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_current`
--
ALTER TABLE `live_current`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_LIVE_CURRENT_STU_ID` (`stu_id`);

--
-- Indexes for table `place_of_birth`
--
ALTER TABLE `place_of_birth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_POB_STU_ID` (`stu_id`);

--
-- Indexes for table `study_history`
--
ALTER TABLE `study_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_STUDY_HISTORY_STU_ID` (`stu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `infor_parents`
--
ALTER TABLE `infor_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infor_register`
--
ALTER TABLE `infor_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infor_siblings`
--
ALTER TABLE `infor_siblings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infor_student`
--
ALTER TABLE `infor_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_current`
--
ALTER TABLE `live_current`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `place_of_birth`
--
ALTER TABLE `place_of_birth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `study_history`
--
ALTER TABLE `study_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `nmudb`
--
CREATE DATABASE IF NOT EXISTS `nmudb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `nmudb`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_14_085753_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('monyvong12@gmail.com', '$2y$10$L3yUe4wU.X1IbMGYd1xsLOBatk1deTFlLEIky/x0VvwZRbKI6TDQK', '2022-09-08 01:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rayou', 'horlrayou@gmail.com', NULL, '$2y$10$sVdzli/b7N2eei2OBPy1O.oYNpqfnx7cXexFFRCxqAaGXgeZBdEIG', 1, NULL, '2022-09-08 01:28:45', '2022-09-08 01:28:45'),
(2, 'Mony Vong', 'monyvong12@gmail.com', NULL, '$2y$10$42HpFphQOxjEXSo/uKAlCOncoYtT9ipuoh5j8JhG12gOh9yYXQjLa', 0, NULL, '2022-09-08 01:55:16', '2022-09-08 01:55:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `nmureport`
--
CREATE DATABASE IF NOT EXISTS `nmureport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nmureport`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `gender` enum('m','f','o') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `number` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `username`, `gender`, `email`, `password`, `number`) VALUES
(3, 'Chory', 'Reaksa', 'reaksa', 'm', 'reaksa@gmail.com', '1111', 9786166),
(4, 'Horl', 'Rayou', 'rayou', 'm', 'horlrayou@gmail.com', '1234', 965021322),
(5, 'Horl', 'Rayou', 'rayou', 'm', 'horlrayou@gmail.com', '1234', 965021322);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"admission\",\"table\":\"card_activation\"},{\"db\":\"webboard\",\"table\":\"reply\"},{\"db\":\"webboard\",\"table\":\"question\"},{\"db\":\"qa\",\"table\":\"webboard\"},{\"db\":\"qa\",\"table\":\"reply\"},{\"db\":\"dbmart\",\"table\":\"tblimports\"},{\"db\":\"dbmart\",\"table\":\"tblcategorys\"},{\"db\":\"dbmart\",\"table\":\"tblgroups\"},{\"db\":\"dbmart\",\"table\":\"tblsupplyer\"},{\"db\":\"dbmart\",\"table\":\"tblproducts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbmart', 'tblcategorys', '{\"sorted_col\":\"`tblcategorys`.`category` ASC\"}', '2022-07-21 07:45:11'),
('root', 'dbmart', 'tblsupplyer', '{\"sorted_col\":\"`tblsupplyer`.`companyname`  DESC\"}', '2022-08-03 07:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-30 08:23:58', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `predicate`
--
CREATE DATABASE IF NOT EXISTS `predicate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `predicate`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idcard` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`idcard`, `name`, `street`, `city`, `type`, `balance`) VALUES
(1, 'ChanDara', '150', 'Phnom Penh', 'Checking', '8000000'),
(2, 'Thyda', '259', 'Phnom Penh', 'Checking', '3000000'),
(3, 'Kunthea', '312', 'Phnom Penh', 'Saving', '4000000'),
(4, 'Sok', '009', 'Phnom Penh', 'Saving', '6000000'),
(5, 'Vouking', '010', 'Phnom Penh', 'Checking', '8500000'),
(6, 'Rayou', '200', 'Phnom Penh', 'Checking', '12000000');
--
-- Database: `qa`
--
CREATE DATABASE IF NOT EXISTS `qa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qa`;

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `ReplyID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Details` text NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `webboard`
--

CREATE TABLE `webboard` (
  `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `Name` varchar(50) NOT NULL,
  `View` int(5) NOT NULL,
  `Reply` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`ReplyID`);

--
-- Indexes for table `webboard`
--
ALTER TABLE `webboard`
  ADD PRIMARY KEY (`QuestionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `ReplyID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webboard`
--
ALTER TABLE `webboard`
  MODIFY `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- Database: `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategorys`
--

CREATE TABLE `tblcategorys` (
  `id` int(11) NOT NULL,
  `categorys` varchar(250) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgroups`
--

CREATE TABLE `tblgroups` (
  `id` int(11) NOT NULL,
  `gname` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `pname` varchar(150) DEFAULT NULL,
  `decp` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategorys`
--
ALTER TABLE `tblcategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgroups`
--
ALTER TABLE `tblgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategorys`
--
ALTER TABLE `tblcategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgroups`
--
ALTER TABLE `tblgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `card_activation`
--

CREATE TABLE `card_activation` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Rayou', 12, 'photo_2022-09-02_10-05-09.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(104, 'ABCD12345677', 'Kush ', 'Singh', '', 'xxxxxxxxxxxx', '2021-01-22', 'Male', 'emmyluckytech@gmail.com', '1234567890', 'Himachal Pra', 'Rohtas', 'Dehri', 'Dehri', '111111111', '', '', '', '111111111111', 'Webp.net-resizeimage.jpg', '2021-01-16 13:06:03'),
(105, '123123213131', 'asdljf', 'aslkdjfl', 'adskljf', '', '', 'Choose', 'emmyluckytech@gmail.com', '8873651128', 'Choose...', 'Dehri', '', '', '', '', 'asdklj;', '', '', 'Lavkush Kumar.jpg', '2021-07-17 17:32:40'),
(107, 'sdfgsdfg', '', '', '', '', '', 'Choose', '', 'sfdgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:15:55'),
(108, 'fsdfgsdfg', 'sdfgsdfgsdfg', 'sdf', 'sdfgsgf', '', '', 'Choose', '', 'sdfgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:16:58'),
(109, 'f546456', 'dsfgsadfg45', 'sdf45g45', 'sdf45g', '', '', 'Choose', '', '564654654', 'Choose...', '', '', '', '', '', 'sdfg', '', '', '', '2021-07-18 12:19:02'),
(110, 'lavkush k', 'lavkush', ' kumar', 'sinhgh', '', '', 'Choose', '', 'lavkush', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:20:38'),
(111, '564654646', 'lavkush singh', 'singh', '', '', '', 'Choose', '', '4564654gf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:22:23'),
(112, 'lavkush k', 'lavkush', ' kumar', 'sinhgh', '', '', 'Choose', '', 'lavkush', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:23:46'),
(113, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:23:58'),
(114, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:14'),
(115, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:22'),
(116, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:01'),
(117, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:38'),
(118, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:05'),
(119, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:24'),
(120, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:36'),
(121, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:30:55'),
(122, '564654646', 'lavkush singh', 'singh', '', '', '', 'Choose', '', '4564654gf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:32:31'),
(123, 'STD523696355', 'Coding ', 'Cush', 'Demo Data ', 'xxxxxxxxxxxx', '2021-12-12', 'Male', 'info@lexacademy.in', '1234567898', 'Uttar Prades', 'Gautam Buddha nagar', 'Harola', 'Sector - 16', '201301', '', 'Test Data', 'dummy text lorem ipsum ', 'STAFF1231233', 'lavkush-kumar-freelancer.png', '2021-07-18 12:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Rayou', 'horlrayou@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'Rayou', 'horlrayou@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_activation`
--
ALTER TABLE `card_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_activation`
--
ALTER TABLE `card_activation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `stdinfor`
--

CREATE TABLE `stdinfor` (
  `Stdid` int(5) NOT NULL,
  `Stdname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stdgender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stdaddress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stdphone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Other` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stdinfor`
--
ALTER TABLE `stdinfor`
  ADD PRIMARY KEY (`Stdid`);
--
-- Database: `studentsinfor`
--
CREATE DATABASE IF NOT EXISTS `studentsinfor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `studentsinfor`;

-- --------------------------------------------------------

--
-- Table structure for table `stdinfo`
--

CREATE TABLE `stdinfo` (
  `stdid` int(5) NOT NULL,
  `stdname` varchar(30) NOT NULL,
  `stdgender` varchar(6) NOT NULL,
  `stdaddress` varchar(100) NOT NULL,
  `stdphone` varchar(10) NOT NULL,
  `other` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stdinfo`
--

INSERT INTO `stdinfo` (`stdid`, `stdname`, `stdgender`, `stdaddress`, `stdphone`, `other`) VALUES
(1, 'Rayou', 'male', 'bmc', '0965021322', 'year4'),
(2, 'Rayou', 'male', 'bmc', '0965021322', 'year4'),
(3, 'Rayou', 'male', 'bmc', '0965021322', 'year4'),
(5, 'c', 'Female', 'bmc', '0965021322', 'year4'),
(7, 'vouking', 'Female', 'bmc', '0965021322', 'year4'),
(8, 'srey loueng', 'Female', 'bmc', '0965021322', 'year4'),
(9, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subid` int(5) NOT NULL,
  `subname` varchar(30) NOT NULL,
  `subdescriptions` text NOT NULL,
  `subcredit` int(2) NOT NULL,
  `other` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stdinfo`
--
ALTER TABLE `stdinfo`
  ADD PRIMARY KEY (`stdid`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stdinfo`
--
ALTER TABLE `stdinfo`
  MODIFY `stdid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subid` int(5) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `stdlist`
--

CREATE TABLE `stdlist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stdlist`
--

INSERT INTO `stdlist` (`id`, `name`, `age`) VALUES
(1, 'Horl Rayou', 22),
(2, 'Vouking', 22),
(3, 'Chann Thorn', 23);

-- --------------------------------------------------------

--
-- Table structure for table `testtable`
--

CREATE TABLE `testtable` (
  `id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stdlist`
--
ALTER TABLE `stdlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stdlist`
--
ALTER TABLE `stdlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `webboard`
--
CREATE DATABASE IF NOT EXISTS `webboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webboard`;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qid` int(11) NOT NULL,
  `questions` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `questions`) VALUES
(1, 'What is java programming?'),
(2, 'What is HTML?');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `rid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `rname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`rid`, `qid`, `answer`, `rname`) VALUES
(1, 1, 'Java is a programming language and computing platform first released by Sun Microsystems in 1995', 'Rayou'),
(2, 2, '1222', 'Vou king'),
(3, 1, 'sgasas', 'Vou king');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
