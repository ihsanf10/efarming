-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2020 pada 15.19
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efarming`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hama`
--

CREATE TABLE `hama` (
  `id_hama` varchar(10) NOT NULL,
  `nama_hama` varchar(30) NOT NULL,
  `jenis_hama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hama`
--

INSERT INTO `hama` (`id_hama`, `nama_hama`, `jenis_hama`) VALUES
('HAM001', 'Tikus', 'Rodentisida'),
('HAM002', 'Timbel1', 'Fungisida '),
('HAM003', 'Oksamil', 'Nematisida'),
('HAM004', 'Eceng Gondok', 'Herbisida'),
('HAM005', 'Ulat', 'Insektisida'),
('HAM006', 'Ular', 'mandora');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengecekan`
--

CREATE TABLE `pengecekan` (
  `id_pengecekan` varchar(20) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengecekan`
--

INSERT INTO `pengecekan` (`id_pengecekan`, `jam`, `tanggal`, `status`) VALUES
('CEK001', '01:00:00', '2019-12-05', 'Disemprot');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyemprotan`
--

CREATE TABLE `penyemprotan` (
  `id_penyemprotan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyemprotan`
--

INSERT INTO `penyemprotan` (`id_penyemprotan`, `tanggal`, `jam`) VALUES
('SEM001', '2020-01-10', '01:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pestisida`
--

CREATE TABLE `pestisida` (
  `id_pestisida` varchar(20) NOT NULL,
  `nama_pestisida` varchar(30) NOT NULL,
  `jenis_pestisida` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pestisida`
--

INSERT INTO `pestisida` (`id_pestisida`, `nama_pestisida`, `jenis_pestisida`) VALUES
('PES001', 'Tiodan', 'Insektisida');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petak`
--

CREATE TABLE `petak` (
  `id_petak` varchar(10) NOT NULL,
  `lebar_petak` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petak`
--

INSERT INTO `petak` (`id_petak`, `lebar_petak`) VALUES
('PET001', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petani`
--

CREATE TABLE `petani` (
  `id_petani` varchar(10) NOT NULL,
  `nama_petani` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petani`
--

INSERT INTO `petani` (`id_petani`, `nama_petani`, `alamat`, `no_hp`) VALUES
('TAN001', 'Abdul', 'Cianjur', '087711223344');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hama`
--
ALTER TABLE `hama`
  ADD PRIMARY KEY (`id_hama`);

--
-- Indeks untuk tabel `pengecekan`
--
ALTER TABLE `pengecekan`
  ADD PRIMARY KEY (`id_pengecekan`);

--
-- Indeks untuk tabel `penyemprotan`
--
ALTER TABLE `penyemprotan`
  ADD PRIMARY KEY (`id_penyemprotan`);

--
-- Indeks untuk tabel `pestisida`
--
ALTER TABLE `pestisida`
  ADD PRIMARY KEY (`id_pestisida`);

--
-- Indeks untuk tabel `petak`
--
ALTER TABLE `petak`
  ADD PRIMARY KEY (`id_petak`);

--
-- Indeks untuk tabel `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id_petani`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
