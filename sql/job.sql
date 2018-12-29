CREATE DATABASE job;

use job;

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

--
-- Dumping data for table `hosoungtuyen`
--

INSERT INTO `hosoungtuyen` (`idHoSo`, `hoTen`, `ngaySinh`, `email`, `sdt`, `cv`, `noidungungtuyen`, `idUser`, `idViecLam`) VALUES
(1, 'Nguyễn Thành Long', '2018-12-01', 'ntlong0410@gmail.com', 1634380319, 'cv.txt', 'Dev JAVA', 1, 1);

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

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idUser`, `userName`, `password`, `hoTen`, `email`, `sdt`, `phanQuyen`, `viTriUngTuyen`, `anh`, `skype`, `facebook`, `queQuan`, `hocVan`, `truong`, `khoa`, `namTotNghiep`, `kyNang`, `kinhNghiemCongTac`, `ghiChu`, `cv`) VALUES
(1, 'ntlong0410', '123456', 'Nguyễn Thành Long', 'ntlong0410@gmail.com', 1634380319, 'Admin', 'Dev', 'abc.jpg', 'long@microsoft.com', 'Nguyễn Thành Long', 'Hà Nội', 'Đại học', 'Điện Lực', 'Công nghê thông tin', 2019, 'Team-work', 'Không', 'Không', 'cv.txt');

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

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idTinTuc`, `thumbnail`, `tieuDe`, `nguoiPost`, `ngayPost`, `noiDungVanTat`, `noiDungChinh`) VALUES
(1, 'resources/itsol.jpg', 'Thời tiết', 'Long', '2018-12-20', 'Lạnh', 'Lạnh dưới 10 độ'),
(2, 'resources/itsol.jpg', 'Tuyển nhân viên bán hàng', 'Long 1', '2018-12-18', 'Tuyển dụng', 'Tuyển nhân viên bán hàng full-time'),
(3, 'resources/itsol.jpg', 'Công ty phá sản', 'Long 2', '2018-12-19', 'Phá sản', 'Công ty itsol chính thức phá sản');

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
  `moTa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vieclam`
--

INSERT INTO `vieclam` (`idViecLam`, `thumbnail`, `tieuDe`, `tenCongTy`, `diaChi`, `mucLuong`, `moTa`) VALUES
(1, 'resources/itsol.jpg', 'Java', 'ITSOL', 'Ngõ 82 Duy Tân', 10000000, 'Full-time'),
(2, 'resources/itsol.jpg', 'Python', 'ITSOL', 'Ngõ 82 Duy Tân', 20000000, 'Full-time'),
(3, 'resources/itsol.jpg', '.Net', 'ITSOL', 'Ngõ 82 Duy Tân', 15000000, 'Part-time'),
(4, 'resources/itsol.jpg', 'Ruby', 'ITSOL', 'Ngõ 82 Duy Tân', 17000000, 'Full-time'),
(5, 'resources/itsol.jpg', 'Android', 'ITSOL', 'Ngõ 82 Duy Tân', 19000000, 'Part-time'),
(6, 'resources/itsol.jpg', 'Microsoft', 'MicrosoftWare', 'Ngõ 173 Hoàng Hoa Thám', 1000000000, 'Code all time'),
(7, 'resources/itsol.jpg', 'Tester ', 'ITSOL', 'Ngõ 82 Duy Tân', 5000000, 'Test phần mềm'),
(8, 'resources/itsol.jpg', 'PM', 'ITSOL', 'Ngỡ 82 Duy Tân', 10000000, 'Quản lý dự án phần mềm'),
(9, 'resources/itsol.jpg', 'SQL', 'ITSOL', 'Ngõ 82 Duy Tân', 7000000, 'Thiết lập dữ liệu cho phần mềm');

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
  MODIFY `idHoSo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vieclam`
--
ALTER TABLE `vieclam`
  MODIFY `idViecLam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
