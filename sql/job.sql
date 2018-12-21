-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 08:34 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `hosoungtuyen`
--

CREATE TABLE `hosoungtuyen` (
  `idHoSo` int(11) NOT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `cv` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidungungtuyen` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `idViecLam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `phanQuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viTriUngTuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queQuan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hocVan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namTotNghiep` int(11) DEFAULT NULL,
  `kyNang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kinhNghiemCongTac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idTinTuc` int(11) NOT NULL,
  `thumbnail` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tieuDe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoiPost` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayPost` date DEFAULT NULL,
  `noiDungVanTat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiDungChinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ungtuyen`
--

CREATE TABLE `ungtuyen` (
  `idViecLam` int(11) NOT NULL,
  `idHoSo` int(11) NOT NULL,
  `trangThai` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vieclam`
--

CREATE TABLE `vieclam` (
  `idViecLam` int(11) NOT NULL,
  `thumbnail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tieuDe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenCongTy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mucLuong` float DEFAULT NULL,
  `moTa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hosoungtuyen`
--
ALTER TABLE `hosoungtuyen`
  ADD PRIMARY KEY (`idHoSo`),
  ADD KEY `fk_idViecLam_HoSoUngTuyen` (`idViecLam`) USING BTREE,
  ADD KEY `fk_idUser` (`idUser`) USING BTREE;

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTinTuc`);

--
-- Indexes for table `ungtuyen`
--
ALTER TABLE `ungtuyen`
  ADD KEY `fk_ungtuyen_idViecLam` (`idViecLam`),
  ADD KEY `fk_ungtuyen_idHoSo` (`idHoSo`);

--
-- Indexes for table `vieclam`
--
ALTER TABLE `vieclam`
  ADD PRIMARY KEY (`idViecLam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hosoungtuyen`
--
ALTER TABLE `hosoungtuyen`
  MODIFY `idHoSo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idTinTuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vieclam`
--
ALTER TABLE `vieclam`
  MODIFY `idViecLam` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hosoungtuyen`
--
ALTER TABLE `hosoungtuyen`
  ADD CONSTRAINT `fk_hosoungtuyen_idUser` FOREIGN KEY (`idUser`) REFERENCES `nguoidung` (`idUser`),
  ADD CONSTRAINT `fk_hosoungtuyen_idViecLam` FOREIGN KEY (`idViecLam`) REFERENCES `vieclam` (`idViecLam`);

--
-- Constraints for table `ungtuyen`
--
ALTER TABLE `ungtuyen`
  ADD CONSTRAINT `fk_ungtuyen_idHoSo` FOREIGN KEY (`idHoSo`) REFERENCES `hosoungtuyen` (`idHoSo`),
  ADD CONSTRAINT `fk_ungtuyen_idViecLam` FOREIGN KEY (`idViecLam`) REFERENCES `vieclam` (`idViecLam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
