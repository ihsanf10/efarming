-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 06:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sky7`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangunan`
--

CREATE TABLE `bangunan` (
  `kode_bangunan` varchar(15) NOT NULL,
  `nama_bangunan` varchar(25) NOT NULL,
  `jumlah_bangunan` int(10) NOT NULL,
  `lokasi_bangunan` varchar(25) NOT NULL,
  `kondisi_bangunan` varchar(25) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bangunan`
--

INSERT INTO `bangunan` (`kode_bangunan`, `nama_bangunan`, `jumlah_bangunan`, `lokasi_bangunan`, `kondisi_bangunan`, `keterangan`) VALUES
('B001', 'Mushola', 22, 'Lantai 7', 'Sedang Diperbaiki', 'Bloak B'),
('B002', 'Ruko', 2, 'Lantai 3', 'Baik', 'Bloak A');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `lokasi_barang` varchar(25) NOT NULL,
  `kondisi_barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jumlah_barang`, `lokasi_barang`, `kondisi_barang`) VALUES
('C001', 'Mukena', 0, 'lantai 1', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_barang`
--

CREATE TABLE `penerimaan_barang` (
  `kode_penerimaan` varchar(15) NOT NULL,
  `kode_pengajuan` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerimaan_barang`
--

INSERT INTO `penerimaan_barang` (`kode_penerimaan`, `kode_pengajuan`, `status`) VALUES
('', 'p001', 'Sudah Diterima'),
('0041', '0013', 'Sudah Diterima'),
('042', '0015', 'Sudah Diterima'),
('043', 'p001', 'Sudah Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_barang`
--

CREATE TABLE `pengajuan_barang` (
  `kode_pengajuan` varchar(15) NOT NULL,
  `jumlah_pengajuan` int(10) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `tgl_pengajuan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_barang`
--

INSERT INTO `pengajuan_barang` (`kode_pengajuan`, `jumlah_pengajuan`, `nama_barang`, `tgl_pengajuan`, `status`) VALUES
('P001', 25, 'Mukena', '2019-01-02 16:00:00', 'Belum Diterima'),
('P002', 10, 'semen', '2019-01-19 08:25:00', 'Belum Diterima'),
('P003', 25, 'Sajadah', '2019-01-19 09:11:31', 'Belum Diterima');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`kode_bangunan`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `penerimaan_barang`
--
ALTER TABLE `penerimaan_barang`
  ADD PRIMARY KEY (`kode_penerimaan`);

--
-- Indexes for table `pengajuan_barang`
--
ALTER TABLE `pengajuan_barang`
  ADD PRIMARY KEY (`kode_pengajuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
