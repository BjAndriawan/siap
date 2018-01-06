-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Feb 2017 pada 01.45
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_siap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `idt` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`idt`, `nama`, `tanggal`, `keperluan`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
(0, 'Joko', '1 januari 2016', 'pkl', 'Laki-laki', 'kediri', '082334204508');

-- --------------------------------------------------------

--
-- Struktur dari tabel `humas_status`
--

CREATE TABLE `humas_status` (
  `ids` int(8) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `humas_status`
--

INSERT INTO `humas_status` (`ids`, `status`) VALUES
(0, 'Rapat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_siswa`
--

CREATE TABLE `is_siswa` (
  `nis` varchar(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_siswa`
--

INSERT INTO `is_siswa` (`nis`, `nama`, `tempat_lahir`, `jenis_kelamin`, `agama`, `alamat`, `no_telepon`) VALUES
('14650014', 'BAYU ANDRIAWAN', 'BANYUWANGI', 'Laki-laki', 'Islam', 'BANYUWANGI', '082334204508'),
('14650019', 'MUHAMMAD BURHANUDIN', 'KEDIRI', 'Laki-laki', 'Islam', 'KEDIRI', '082334222322');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasubag`
--

CREATE TABLE `kasubag` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasubag`
--

INSERT INTO `kasubag` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'kasubag', 'kasubag', 'kasubag');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasubag_agenda`
--

CREATE TABLE `kasubag_agenda` (
  `id_agenda` int(35) NOT NULL,
  `agenda` varchar(35) NOT NULL,
  `tempat` varchar(35) NOT NULL,
  `pukul` varchar(35) NOT NULL,
  `tanggal` varchar(35) NOT NULL,
  `devisi` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasubag_agenda`
--

INSERT INTO `kasubag_agenda` (`id_agenda`, `agenda`, `tempat`, `pukul`, `tanggal`, `devisi`) VALUES
(0, 'ui', 'uiu', 'iu', 'iuiui', 'uiuiui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasubag_janji`
--

CREATE TABLE `kasubag_janji` (
  `idt` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasubag_janji`
--

INSERT INTO `kasubag_janji` (`idt`, `nama`, `tanggal`, `keperluan`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
(0, 'Setio', '1 Desember 2017', 'Penting', 'Laki-laki', 'Malang', '082334443221');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasubag_status`
--

CREATE TABLE `kasubag_status` (
  `ids` int(8) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasubag_status`
--

INSERT INTO `kasubag_status` (`ids`, `status`) VALUES
(0, 'Rapat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala`
--

CREATE TABLE `kepala` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala`
--

INSERT INTO `kepala` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'kepala', 'kepala', 'kepala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_agenda`
--

CREATE TABLE `kepala_agenda` (
  `id_agenda` int(35) NOT NULL,
  `agenda` varchar(35) NOT NULL,
  `tempat` varchar(35) NOT NULL,
  `pukul` varchar(35) NOT NULL,
  `tanggal` varchar(35) NOT NULL,
  `devisi` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala_agenda`
--

INSERT INTO `kepala_agenda` (`id_agenda`, `agenda`, `tempat`, `pukul`, `tanggal`, `devisi`) VALUES
(8, 'ygygyg', 'kok', 'okok', 'okok', 'okok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_janji`
--

CREATE TABLE `kepala_janji` (
  `idt` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala_janji`
--

INSERT INTO `kepala_janji` (`idt`, `nama`, `tanggal`, `keperluan`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
(1, 'Bayu Andriawan', '2 Februari 2017', 'Rapat', 'Laki-laki', 'Banyuwangi', '082334204508'),
(2, 'joko', '12 Agusutus 2017', 'Rapat', 'Laki-laki', 'Banyuwangi', '082334210098'),
(3, 'Deny', '2 Desember 2018', 'Konsultasi', 'Laki-laki', 'Malang', '08111122233');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_status`
--

CREATE TABLE `kepala_status` (
  `ids` int(8) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala_status`
--

INSERT INTO `kepala_status` (`ids`, `status`) VALUES
(3, 'Ada Tamu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resepsionis`
--

CREATE TABLE `resepsionis` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resepsionis`
--

INSERT INTO `resepsionis` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'resepsionis', 'resepsionis', 'resepsionis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'admin'),
(3, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `is_siswa`
--
ALTER TABLE `is_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kasubag`
--
ALTER TABLE `kasubag`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `kepala`
--
ALTER TABLE `kepala`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `kepala_agenda`
--
ALTER TABLE `kepala_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `kepala_janji`
--
ALTER TABLE `kepala_janji`
  ADD PRIMARY KEY (`idt`);

--
-- Indexes for table `kepala_status`
--
ALTER TABLE `kepala_status`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kasubag`
--
ALTER TABLE `kasubag`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kepala`
--
ALTER TABLE `kepala`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kepala_agenda`
--
ALTER TABLE `kepala_agenda`
  MODIFY `id_agenda` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kepala_janji`
--
ALTER TABLE `kepala_janji`
  MODIFY `idt` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kepala_status`
--
ALTER TABLE `kepala_status`
  MODIFY `ids` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
