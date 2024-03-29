-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Sep 2023 pada 05.20
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aksatacare`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `level`) VALUES
(1, 'Admin', 'admin', 'arginanta301@gmail.com', '$2y$10$1lqgy85xeCS27OnENZkZ1eN5UfP61T0y75K8IdrzhfcwOp2W/GOq2', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('DOKTER-311022-1', 'fghjk', 'fcgvhbnjkm', 'cfvgbhnjmk\r\n', '5678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `finance`
--

CREATE TABLE `finance` (
  `id_finance` int(11) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `jenis_pelayanan` varchar(250) NOT NULL,
  `biaya_pokok` varchar(255) NOT NULL,
  `biaya_layanan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `usia` int(3) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `nik`, `usia`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('PSN-311022-1', 'b jnkm,', '567890', 45, 'Laki-Laki', '<p>cfvgbhnjm</p>\r\n', '45678'),
('PSN-311022-2', 'sdow', '56789', 21, 'Perempuan', '<p>jmk,</p>\r\n', '12313');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id_pelayanan` int(11) NOT NULL,
  `jenis_pelayanan` varchar(30) NOT NULL,
  `biaya_pokok` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelayanan`
--

INSERT INTO `pelayanan` (`id_pelayanan`, `jenis_pelayanan`, `biaya_pokok`) VALUES
(8, 'Akupuntur Body', '57541'),
(9, 'Akupuntur Wajah', '56541'),
(10, 'Totok Wajah', '46716'),
(11, 'Pijat Bayi 0-1TH', '40638'),
(12, 'Pijat Bayi 1-5TH', '40638'),
(13, 'Pijat Anak 5-7TH', '40638'),
(14, 'Bekam Kering', '50416'),
(15, 'Moksa (1-10 Titik)', '37916'),
(16, 'Infrared Lamp', '37083'),
(17, 'Paket Tes Chol SD AU', '45208'),
(18, 'Ear Candle', '29998');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekammedis`
--

CREATE TABLE `rekammedis` (
  `id_rekammedis` int(11) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `terapi` text NOT NULL,
  `tgl_periksa` date NOT NULL,
  `id_pelayanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekammedis`
--

INSERT INTO `rekammedis` (`id_rekammedis`, `id_rm`, `nama_pasien`, `keluhan`, `id_dokter`, `terapi`, `tgl_periksa`, `id_pelayanan`) VALUES
(4, 'PSN-311022-2', 'sdow', 'vbnm', 'DOKTER-311022-1', 'cvbn', '2022-10-31', 16);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id_finance`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indeks untuk tabel `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`id_rekammedis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `finance`
--
ALTER TABLE `finance`
  MODIFY `id_finance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `id_rekammedis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
