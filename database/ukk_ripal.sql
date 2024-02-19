-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2024 pada 04.39
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_ripal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(250) NOT NULL,
  `id_buku` varchar(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `thn_terbit` date NOT NULL,
  `jml_halaman` int(10) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `judul`, `kategori`, `pengarang`, `penerbit`, `thn_terbit`, `jml_halaman`, `deskripsi`, `isi_buku`) VALUES
('65cb0b0f3cc62.png', 'KB0001', 'Nunchi Seni Membaca Pikiran dan Perasaan Orang lai', 'pengetahuan', 'Euny Hong', 'PT Gramedia', '2024-02-13', 272, 'Nuchi adalah suatu bentuk kecerdasan emosional yang dapat di pelajari siapa pun', 'Nunchi Seni Membaca Pikiran dan Perasaan Orang LainÑRahasia Hidup Bahagia dan Sukses dari Korea (Euny Hong) (z-lib.org).pdf'),
('65cb0bc21b92d.png', 'KB0002', 'Sebuah Seni untuk bersikap bodo amat (Mark Manson)', 'percintaan', 'Mark Manson', 'PT Gramedia', '2024-02-13', 256, 'seorang bloger kenamaan dengan berjuta juta pembaca', 'Sebuah Seni untuk Bersikap Bodo Amat (Mark Manson) (z-lib.org).pdf'),
('65cb0ce652c4d.jpeg', 'KB0003', 'Berani tidak disukai', 'komik', 'ichiro kishimi', 'PT Gramedia', '2024-02-13', 350, 'buku yang kaya kebijaksaan ini akan memandu', 'Berani Tidak Disukai (Ichiro Kishimi, Fumitake Koga) (z-lib.org).pdf'),
('65cb0d9493d09.jpeg', 'KB0004', 'Si Juki', 'self improvment', 'faza meonk', 'PT Gramedia', '2024-02-13', 146, 'yuk , ikuti dan tertawa berama rekaman perjalanan juki', 'Si Juki Komik Strip (Faza Meonk) (z-lib.org).pdf'),
('65cb0e69502d1.png', 'KB0005', 'Rich Dad Poor Dad (Robert T. Kiyosaki) (z-lib.org)', 'filsafat', 'Robert T. Kiyosaki', 'PT Gramedia', '2024-02-13', 386, 'robbert kiyosaki telah mencabar dan mengubah cara berfikir puluhan juta orang di seluruh dunia berkenaan wang', 'Rich Dad Poor Dad (Robert T. Kiyosaki) (z-lib.org).pdf'),
('65cb0f378d4ce.png', 'KB0006', 'sejarah dunia yang disembunyikan ', 'petualangan', 'Jonathan black', 'PT Gramedia', '2024-02-13', 633, 'penuh dengan teori teori aneh ,tetapi  keanehan tersebut sangat menghibur', 'Sejarah Dunia yang Disembunyikan (Jonathan Black) (z-lib.org) - Salin.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('filsafat'),
('komik'),
('pengetahuan'),
('percintaan'),
('petualangan'),
('self improvment');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `nama`, `password`, `kelas`, `jurusan`, `alamat`) VALUES
('123', 'freefire', '321', 'XII', 'Rekayasa Perangkat Lunak', 'depok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(50) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `id_user` int(50) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sebagai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `sebagai`) VALUES
(1, 'ripal', 'ripal', '123', 'admin'),
(2, 'ripal', 'Ripaldz', '123', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
