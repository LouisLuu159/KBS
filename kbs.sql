-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 09, 2022 at 09:09 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `camgiac`
--

CREATE TABLE `camgiac` (
  `ID` varchar(255) NOT NULL,
  `RoiLoan` tinyint(4) DEFAULT NULL,
  `CamGiacNong` varchar(255) DEFAULT NULL,
  `CamGiacSau` varchar(255) DEFAULT NULL,
  `ViTri` varchar(255) DEFAULT NULL,
  `CamGiacDau` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `camgiac`
--

INSERT INTO `camgiac` (`ID`, `RoiLoan`, `CamGiacNong`, `CamGiacSau`, `ViTri`, `CamGiacDau`) VALUES
('CG01', 1, NULL, NULL, 'BT07', NULL),
('CG02', 1, NULL, NULL, 'BT06', NULL),
('CG03', 1, NULL, NULL, 'BT04', NULL),
('CG04', 1, 'MD1', 'MD1', 'BT06', NULL),
('CG05', 1, NULL, NULL, NULL, 'MD3'),
('CG06', 1, 'MD1', 'MD1', NULL, NULL),
('CG07', 1, 'MD1', 'MD1', 'BT08', NULL),
('CG08', 1, NULL, NULL, NULL, 'MD2'),
('CG09', 1, NULL, NULL, 'BT05', NULL),
('CG10', 1, 'MD1', 'MD0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `case`
--

CREATE TABLE `case` (
  `ID` int(11) NOT NULL,
  `GanXuong` varchar(255) DEFAULT NULL,
  `GX_BT` varchar(255) DEFAULT NULL,
  `CoLuc` varchar(255) DEFAULT NULL,
  `TeoCo` tinyint(4) DEFAULT NULL,
  `PXTDT` tinyint(4) DEFAULT NULL,
  `HoffMan` tinyint(4) DEFAULT NULL,
  `Barbinski` tinyint(4) DEFAULT NULL,
  `TLC` varchar(255) DEFAULT NULL,
  `RLCT` tinyint(4) DEFAULT NULL,
  `DD` varchar(255) DEFAULT NULL,
  `Sot` varchar(255) DEFAULT NULL,
  `CG` varchar(255) DEFAULT NULL,
  `Mat` varchar(255) DEFAULT NULL,
  `Benh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `case`
--

INSERT INTO `case` (`ID`, `GanXuong`, `GX_BT`, `CoLuc`, `TeoCo`, `PXTDT`, `HoffMan`, `Barbinski`, `TLC`, `RLCT`, `DD`, `Sot`, `CG`, `Mat`, `Benh`) VALUES
(1, 'GX02', NULL, 'CL02', NULL, NULL, 1, 1, 'tang', NULL, NULL, NULL, 'CG01', NULL, 'HOI CHUNG LIET CUNG NUA NGUOI'),
(2, 'GX03', NULL, 'CL02', NULL, NULL, NULL, 1, 'giam', NULL, NULL, NULL, 'CG01', NULL, 'HOI CHUNG LIET MEM NUA NGUOI'),
(3, 'GX02', NULL, 'CL06', NULL, NULL, NULL, 1, 'tang', NULL, NULL, NULL, 'CG02', NULL, 'HOI CHUNG LIET CUNG 2 CHI DUOI'),
(4, 'GX03', NULL, 'CL07', 1, NULL, NULL, 0, 'giam', 0, NULL, NULL, 'CG03', NULL, 'HOI CHUNG LIET MEM 2 CHI DUOI(NGOAI BIEN)'),
(5, 'GX03', NULL, 'CL07', 0, NULL, NULL, 1, 'giam', 1, NULL, NULL, 'CG03', NULL, 'HOI CHUNG LIET MEM 2 CHI DUOI(TRUNG UONG)'),
(6, NULL, NULL, 'CL03', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'CG04', NULL, 'HOI CHUNG CAT NGANG TUY'),
(7, 'GX03', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CG05', NULL, 'HOI CHUNG CHEN EP TUY(NOI TON THUONG)'),
(8, 'GX02', 'BT01', 'CL03', NULL, 1, 1, NULL, 'tang', NULL, NULL, NULL, 'CG06', NULL, 'HOI CHUNG CHEN EP TUY(DUOI NOI TON THUONG)'),
(9, 'GX03', 'BT01', 'CL03', NULL, NULL, NULL, NULL, 'giam', 1, NULL, NULL, 'CG07', NULL, 'HOI CHUNG CHUM DUOI NGUA'),
(10, 'GX03', NULL, 'CL03', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'CG06', NULL, 'HOI CHUNG Guillain Barre'),
(11, 'GX02', NULL, 'CL03', NULL, 1, NULL, 1, 'tang', 1, NULL, NULL, 'CG06', NULL, 'VIEM TUY CAT NGANG CAP'),
(12, 'GX02', NULL, 'CL02', NULL, NULL, NULL, 1, 'tang', NULL, 'co', 'co', 'CG08', NULL, 'HOI CHUNG MANG NAO'),
(13, 'GX02', NULL, 'CL02', NULL, NULL, 0, 1, 'tang', NULL, 'co', 'co', 'CG08', NULL, 'VIEM MANG NAO VO KHAN CAP'),
(14, 'GX03', 'BT02', 'CL05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CG03', 'M01', 'THOAI HOA TIEU NAO DO RUOU'),
(15, 'GX03', 'BT03', 'CL05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CG09', NULL, 'THOAI HOA DOT SONG CO'),
(16, 'GX03', NULL, 'CL08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BENH LIET CHU KY TANG KALI MAU'),
(17, 'GX01', NULL, 'CL04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M02', 'BENH NHUOC CO'),
(18, 'GX03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M03', 'VIEM TIEU NAO'),
(19, 'GX04', 'BT04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CG10', NULL, 'NHOI MAU TUY');

-- --------------------------------------------------------

--
-- Table structure for table `coluc`
--

CREATE TABLE `coluc` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coluc`
--

INSERT INTO `coluc` (`ID`, `MoTa`) VALUES
('CL01', 'binh thuong'),
('CL02', 'yeu, liet nua nguoi'),
('CL03', 'yeu, liet 2 chi duoi'),
('CL04', 'yeu toan bo'),
('CL05', 'yeu tay chan'),
('CL06', 'giam hoac mat co gap va ngon chi'),
('CL07', 'giam, can doi 2 ben '),
('CL08', 'liet o ban chan, roi lan dan len toan than');

-- --------------------------------------------------------

--
-- Table structure for table `ganxuong`
--

CREATE TABLE `ganxuong` (
  `ID` varchar(255) NOT NULL,
  `MucDo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ganxuong`
--

INSERT INTO `ganxuong` (`ID`, `MucDo`) VALUES
('GX01', 'binh thuong'),
('GX02', 'tang'),
('GX03', 'giam hay mat'),
('GX04', 'mat. vai tuan sau lai tang');

-- --------------------------------------------------------

--
-- Table structure for table `mat`
--

CREATE TABLE `mat` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mat`
--

INSERT INTO `mat` (`ID`, `MoTa`) VALUES
('M00', 'Bình thường'),
('M01', 'rung giat nhan cau'),
('M02', 'sup mi hoac nhin doi'),
('M03', 'liet van nhan ');

-- --------------------------------------------------------

--
-- Table structure for table `mucdocamgiac`
--

CREATE TABLE `mucdocamgiac` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mucdocamgiac`
--

INSERT INTO `mucdocamgiac` (`ID`, `MoTa`) VALUES
('MD0', 'binh thuong'),
('MD1', 'giam hoac mat'),
('MD2', 'tang'),
('MD3', 'dau theo re nhu dao cat, hoac vong dai that chat');

-- --------------------------------------------------------

--
-- Table structure for table `vitribatthuong`
--

CREATE TABLE `vitribatthuong` (
  `ID` varchar(255) NOT NULL,
  `Mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vitribatthuong`
--

INSERT INTO `vitribatthuong` (`ID`, `Mota`) VALUES
('BT01', 'goi'),
('BT02', 'got'),
('BT03', 'co nhi dau va canh tay'),
('BT04', 'hai chi duoi'),
('BT05', 'vai va bo ngoai canh tay, cang tay'),
('BT06', 'tu noi ton thuong tro xuong'),
('BT07', 'ben liet'),
('BT08', 'vung quanh hau mon, hoi am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camgiac`
--
ALTER TABLE `camgiac`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_CamGiacNong` (`CamGiacNong`),
  ADD KEY `fk_CamGiacSau` (`CamGiacSau`),
  ADD KEY `fk_ViTri` (`ViTri`),
  ADD KEY `fk_CamGiacDau` (`CamGiacDau`);

--
-- Indexes for table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_GanXuong` (`GanXuong`),
  ADD KEY `fk_GX_BT` (`GX_BT`),
  ADD KEY `fk_CoLuc` (`CoLuc`),
  ADD KEY `fk_CG` (`CG`),
  ADD KEY `fk_CM` (`Mat`);

--
-- Indexes for table `coluc`
--
ALTER TABLE `coluc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ganxuong`
--
ALTER TABLE `ganxuong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mat`
--
ALTER TABLE `mat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mucdocamgiac`
--
ALTER TABLE `mucdocamgiac`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vitribatthuong`
--
ALTER TABLE `vitribatthuong`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case`
--
ALTER TABLE `case`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camgiac`
--
ALTER TABLE `camgiac`
  ADD CONSTRAINT `fk_CamGiacDau` FOREIGN KEY (`CamGiacDau`) REFERENCES `mucdocamgiac` (`ID`),
  ADD CONSTRAINT `fk_CamGiacNong` FOREIGN KEY (`CamGiacNong`) REFERENCES `mucdocamgiac` (`ID`),
  ADD CONSTRAINT `fk_CamGiacSau` FOREIGN KEY (`CamGiacSau`) REFERENCES `mucdocamgiac` (`ID`),
  ADD CONSTRAINT `fk_ViTri` FOREIGN KEY (`ViTri`) REFERENCES `vitribatthuong` (`ID`);

--
-- Constraints for table `case`
--
ALTER TABLE `case`
  ADD CONSTRAINT `fk_CG` FOREIGN KEY (`CG`) REFERENCES `camgiac` (`ID`),
  ADD CONSTRAINT `fk_CM` FOREIGN KEY (`Mat`) REFERENCES `mat` (`ID`),
  ADD CONSTRAINT `fk_CoLuc` FOREIGN KEY (`CoLuc`) REFERENCES `coluc` (`ID`),
  ADD CONSTRAINT `fk_GX_BT` FOREIGN KEY (`GX_BT`) REFERENCES `vitribatthuong` (`ID`),
  ADD CONSTRAINT `fk_GanXuong` FOREIGN KEY (`GanXuong`) REFERENCES `ganxuong` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
