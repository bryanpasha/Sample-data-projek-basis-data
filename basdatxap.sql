-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 02:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basdatxap`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `Detail_id` int(11) NOT NULL,
  `Pesanan_id` int(11) DEFAULT NULL,
  `Menu_id` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`Detail_id`, `Pesanan_id`, `Menu_id`, `Jumlah`) VALUES
(1, 1, 1, 2),
(2, 1, 16, 1),
(3, 2, 3, 1),
(4, 2, 18, 2),
(5, 3, 5, 1),
(6, 3, 19, 1),
(7, 4, 7, 1),
(8, 4, 20, 2),
(9, 5, 9, 2),
(10, 5, 21, 1),
(11, 6, 12, 1),
(12, 6, 22, 2),
(13, 7, 15, 3),
(14, 7, 23, 1),
(15, 8, 2, 1),
(16, 8, 24, 2),
(17, 9, 4, 2),
(18, 9, 25, 1),
(19, 10, 6, 1),
(20, 10, 17, 2),
(21, 11, 8, 1),
(22, 11, 16, 1),
(23, 12, 10, 2),
(24, 12, 18, 1),
(25, 13, 11, 1),
(26, 13, 20, 2),
(27, 14, 13, 3),
(28, 14, 22, 1),
(29, 15, 14, 1),
(30, 15, 23, 2),
(31, 16, 1, 1),
(32, 16, 24, 2),
(33, 17, 2, 2),
(34, 17, 25, 1),
(35, 18, 3, 1),
(36, 18, 16, 1),
(37, 19, 4, 1),
(38, 19, 18, 2),
(39, 20, 5, 1),
(40, 20, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `Inventaris_id` int(11) NOT NULL,
  `Nama_Barang` varchar(40) NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `Jumlah_Stok` varchar(13) NOT NULL,
  `Supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`Inventaris_id`, `Nama_Barang`, `jenis`, `Jumlah_Stok`, `Supplier_id`) VALUES
(1, 'Whiskas Dry Food 1kg', 'Makanan Kucing', '35', 1),
(2, 'Royal Canin Wet Food 400g', 'Makanan Kucing', '20', 1),
(3, 'Me-O Tuna Flavour 500g', 'Makanan Kucing', '50', 1),
(4, 'Bola Kucing Berbunyi', 'Mainan Kucing', '15', 2),
(5, 'Laser Pointer', 'Mainan Kucing', '10', 2),
(6, 'Catnip Toy', 'Mainan Kucing', '25', 2),
(7, 'Pasir Kucing 10kg', 'Perlengkapan Kucing', '120', 3),
(8, 'Kotak Pasir Tertutup', 'Perlengkapan Kucing', '8', 2),
(9, 'Tiang Garukan', 'Perlengkapan Kucing', '7', 2),
(10, 'Sisir Bulu Kucing', 'Perlengkapan Kucing', '35', 2),
(11, 'Vaksin Rabies', 'Obat-obatan', '15', 4),
(12, 'Obat Cacing', 'Obat-obatan', '40', 4),
(13, 'Vitamin Kucing', 'Obat-obatan', '25', 4),
(14, 'Disinfektan 5L', 'Kebersihan', '12', 3),
(15, 'Sapu dan Pengki', 'Kebersihan', '6', 3),
(16, 'Hand Sanitizer', 'Kebersihan', '45', 3),
(17, 'Biji Kopi Arabika 1kg', 'Bahan Kafe', '18', 5),
(18, 'Teh Hitam 500g', 'Bahan Kafe', '12', 5),
(19, 'Gula Pasir 1kg', 'Bahan Kafe', '30', 5),
(20, 'Susu UHT 1L', 'Bahan Kafe', '60', 5),
(21, 'Gelas Kopi', 'Peralatan Kafe', '150', 5),
(22, 'Piring Dessert', 'Peralatan Kafe', '90', 5),
(23, 'Sendok dan Garpu', 'Peralatan Kafe', '100', 5),
(24, 'Tissue Napkin', 'Peralatan Kafe', '250', 5),
(25, 'Apron Karyawan', 'Seragam', '10', 5),
(26, 'Masker Kain', 'Perlengkapan Kesehatan', '75', 3),
(27, 'Sarung Tangan Plastik', 'Perlengkapan Kesehatan', '120', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `jadwal_id` int(11) NOT NULL,
  `Hari_kerja` varchar(11) NOT NULL,
  `shift` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`jadwal_id`, `Hari_kerja`, `shift`) VALUES
(1, 'senin', 'pagi'),
(2, 'senin', 'siang'),
(3, 'senin', 'sore'),
(4, 'selasa', 'pagi'),
(5, 'selasa', 'siang'),
(6, 'selasa', 'sore'),
(7, 'rabu', 'pagi'),
(8, 'rabu', 'siang'),
(9, 'rabu', 'sore'),
(10, 'kamis', 'pagi'),
(11, 'kamis', 'siang'),
(12, 'kamis', 'sore'),
(13, 'jumat', 'pagi'),
(14, 'jumat', 'siang'),
(15, 'jumat', 'sore'),
(16, 'sabtu', 'pagi'),
(17, 'sabtu', 'siang'),
(18, 'sabtu', 'sore'),
(19, 'minggu', 'pagi'),
(20, 'minggu', 'siang'),
(21, 'minggu', 'sore');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Karyawan_id` int(11) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Gender` varchar(13) NOT NULL,
  `Kontak` varchar(13) NOT NULL,
  `Posisi_Jabatan` varchar(30) NOT NULL,
  `Gaji` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Karyawan_id`, `Nama`, `Gender`, `Kontak`, `Posisi_Jabatan`, `Gaji`) VALUES
(1, 'Sukirman', 'Laki-laki', '081234567890', 'Barista', '3.500.000'),
(2, 'Wagiyem', 'Perempuan', '081298765432', 'Kasir', '3.000.000'),
(3, 'Parto', 'Laki-laki', '081345678901', 'Pelayan', '3.200.000'),
(4, 'Tumirah', 'Perempuan', '081234098765', 'Cleaner', '2.800.000'),
(5, 'Ngatemi', 'Perempuan', '081276543210', 'Supervisor', '5.000.000'),
(6, 'Tugino', 'Laki-laki', '081287654321', 'Pelayan', '3.200.000'),
(7, 'Paimin', 'Laki-laki', '081298764532', 'Barista', '3.500.000'),
(8, 'Sarinem', 'Perempuan', '081239876543', 'Kasir', '3.000.000'),
(9, 'Sutrisno', 'Laki-laki', '081230987654', 'Cook', '4.000.000'),
(10, 'Cipto', 'Laki-laki', '081267890123', 'Barista', '3.500.000'),
(11, 'Suminah', 'Perempuan', '081298709876', 'Pelayan', '3.200.000'),
(12, 'Ngadino', 'Laki-laki', '081234567801', 'Cleaner', '2.800.000'),
(13, 'Tarmo', 'Laki-laki', '081298761234', 'Manager', '7.000.000'),
(14, 'Sriyati', 'Perempuan', '081278901234', 'Kasir', '3.000.000'),
(15, 'Painem', 'Perempuan', '081290876543', 'Cook', '4.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_jadwal`
--

CREATE TABLE `karyawan_jadwal` (
  `karyawan_id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan_jadwal`
--

INSERT INTO `karyawan_jadwal` (`karyawan_id`, `jadwal_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(10, 4),
(10, 5),
(10, 6),
(7, 7),
(7, 8),
(7, 9),
(1, 10),
(1, 11),
(1, 12),
(10, 13),
(10, 14),
(10, 15),
(7, 16),
(7, 17),
(7, 18),
(1, 19),
(1, 20),
(1, 21),
(2, 1),
(2, 2),
(14, 3),
(14, 4),
(8, 5),
(8, 6),
(2, 7),
(2, 8),
(14, 9),
(14, 10),
(8, 11),
(8, 12),
(2, 13),
(2, 14),
(14, 15),
(14, 16),
(8, 17),
(8, 18),
(2, 19),
(2, 20),
(14, 21),
(3, 1),
(3, 2),
(3, 3),
(6, 4),
(6, 5),
(6, 6),
(11, 7),
(11, 8),
(11, 9),
(3, 10),
(3, 11),
(6, 12),
(6, 13),
(11, 14),
(11, 15),
(3, 16),
(6, 17),
(11, 18),
(3, 19),
(6, 20),
(11, 21),
(4, 1),
(4, 3),
(12, 5),
(12, 6),
(4, 7),
(4, 9),
(12, 11),
(12, 12),
(4, 13),
(4, 15),
(12, 17),
(12, 18),
(4, 19),
(12, 21),
(9, 2),
(9, 3),
(15, 4),
(15, 6),
(9, 8),
(9, 9),
(15, 10),
(15, 12),
(9, 14),
(9, 15),
(15, 16),
(15, 18),
(9, 19),
(9, 21),
(5, 2),
(5, 8),
(5, 14),
(5, 20),
(5, 21),
(13, 6),
(13, 12),
(13, 18),
(13, 21);

-- --------------------------------------------------------

--
-- Table structure for table `kucing`
--

CREATE TABLE `kucing` (
  `Kucing_id` int(11) NOT NULL,
  `Nama_kucing` varchar(40) NOT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `Umur_kucing` varchar(11) NOT NULL,
  `Jenis_ras` varchar(20) NOT NULL,
  `Status_kesehatan` varchar(100) NOT NULL,
  `Deskripsi_kucing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kucing`
--

INSERT INTO `kucing` (`Kucing_id`, `Nama_kucing`, `Tanggal_Lahir`, `Umur_kucing`, `Jenis_ras`, `Status_kesehatan`, `Deskripsi_kucing`) VALUES
(1, 'Luna', '2022-12-01', '2 Tahun', 'Persia', 'Sehat', 'Kucing yang lucu dan menggemaskan'),
(2, 'Simba', '2021-12-01', '3 Tahun', 'Anggora', 'Sehat', 'Sangat aktif dan suka bermain'),
(3, 'Milo', '2023-12-01', '1 Tahun', 'Bengal', 'Sehat', 'Kucing yang ramah terhadap orang'),
(4, 'Chloe', '2020-12-01', '4 Tahun', 'Siam', 'Sehat', 'Tenang dan suka tidur'),
(5, 'Oscar', '2021-12-01', '2.5 Tahun', 'Maine Coon', 'Sehat', 'Berbulu lebat dan sangat besar'),
(6, 'Bella', '2021-12-01', '3 Tahun', 'Scottish Fold', 'Sedang Sakit', 'Memiliki telinga yang melipat unik'),
(7, 'Tiger', '2024-06-01', '6 Bulan', 'Domestik', 'Sehat', 'Suka mengejar mainan kecil'),
(8, 'Cleo', '2022-12-01', '2 Tahun', 'Sphynx', 'Sehat', 'Tidak berbulu, sangat eksotis'),
(9, 'Daisy', '2019-12-01', '5 Tahun', 'Ragdoll', 'Sehat', 'Suka dipeluk dan sangat manja'),
(10, 'Max', '2016-12-01', '8 Tahun', 'Himalaya', 'Sehat', 'Kucing senior yang bijak'),
(11, 'Nala', '2021-12-01', '3 Tahun', 'Russian Blue', 'Sehat', 'Memiliki bulu abu-abu halus'),
(12, 'Leo', '2023-12-01', '1 Tahun', 'Abyssinian', 'Sehat', 'Sangat ingin tahu dan pintar'),
(13, 'Mochi', '2022-12-01', '2 Tahun', 'Oriental', 'Sehat', 'Tipis dan elegan dengan suara lembut'),
(14, 'Zoe', '2017-12-01', '7 Tahun', 'British Shorthair', 'Sehat', 'Berbadan besar dengan bulu lebat'),
(15, 'Oliver', '2022-12-01', '1.5 Tahun', 'Burmese', 'Sehat', 'Sangat penyayang dan suka bermain'),
(16, 'Misty', '2020-12-01', '4 Tahun', 'Tonkinese', 'Sehat', 'Perpaduan cantik dari Siam dan Burmese'),
(17, 'Lily', '2022-12-01', '2 Tahun', 'Balinese', 'Sehat', 'Bulu panjang dengan kepribadian Siam'),
(18, 'Charlie', '2021-12-01', '3 Tahun', 'Devon Rex', 'Sedang Sakit', 'Energi tinggi dan suka memanjat'),
(19, 'Coco', '2022-12-01', '2 Tahun', 'Japanese Bobtail', 'Sehat', 'Ekor pendek seperti kelinci'),
(20, 'Lucy', '2019-12-01', '5 Tahun', 'American Shorthair', 'Sehat', 'Sangat mandiri namun penyayang'),
(21, 'Mimi', '2024-06-01', '6 Bulan', 'Singapura', 'Sehat', 'Kecil dan imut dengan mata besar'),
(22, 'Jack', '2020-12-01', '4 Tahun', 'Burmilla', 'Sehat', 'Bulu perak yang berkilauan'),
(23, 'Shadow', '2022-12-01', '2 Tahun', 'Kucing Kampung', 'Sehat', 'Pandai berburu dan sangat mandiri'),
(24, 'Ruby', '2021-12-01', '3 Tahun', 'Chartreux', 'Sehat', 'Kucing yang tenang dan pengamat'),
(25, 'Whiskers', '2022-12-01', '2 Tahun', 'Laperm', 'Sehat', 'Bulu keriting yang unik'),
(26, 'Pumpkin', '2023-12-01', '1 Tahun', 'Ocicat', 'Sehat', 'Bercorak seperti macan tutul kecil'),
(27, 'Benny', '2019-12-01', '5 Tahun', 'Manx', 'Sehat', 'Tanpa ekor dan sangat tangguh'),
(28, 'Maya', '2021-12-01', '3 Tahun', 'Turkish Angora', 'Sehat', 'Bulu putih bersih dan sangat anggun'),
(29, 'Rocky', '2017-12-01', '7 Tahun', 'Savannah', 'Sehat', 'Kombinasi liar dan domestik'),
(30, 'Sasha', '2022-12-01', '2 Tahun', 'Korat', 'Sehat', 'Bulu abu-abu dengan mata hijau terang'),
(31, 'Pearl', '2024-06-01', '6 Bulan', 'Tonkinese', 'Sehat', 'Periang dan menyenangkan'),
(32, 'Felix', '2023-12-01', '1 Tahun', 'Selkirk Rex', 'Sehat', 'Bulu keriting lebat dan lucu'),
(33, 'Zara', '2022-12-01', '2 Tahun', 'Exotic Shorthair', 'Sehat', 'Wajah bulat dan sangat lucu'),
(34, 'Snow', '2019-12-01', '5 Tahun', 'Norwegian Forest', 'Sehat', 'Bulu tebal yang indah untuk iklim dingin'),
(35, 'Gizmo', '2020-12-01', '4 Tahun', 'Munchkin', 'Sehat', 'Kaki pendek dengan tubuh imut');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Menu_id` int(11) NOT NULL,
  `Nama_menu` varchar(40) NOT NULL,
  `Deskripsi` varchar(50) NOT NULL,
  `Harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Menu_id`, `Nama_menu`, `Deskripsi`, `Harga`) VALUES
(1, 'Spaghetti Carbonara', 'Spaghetti dengan saus creamy', 25000),
(2, 'Chicken Wings', 'Sayap ayam goreng dengan saus', 20000),
(3, 'Fish and Chips', 'Ikan goreng dengan kentang goreng', 28000),
(4, 'Club Sandwich', 'Roti isi ayam, sayur, dan saus', 22000),
(5, 'Caesar Salad', 'Salad sayur dengan saus caesar', 18000),
(6, 'Burger and Fries', 'Burger daging dengan kentang goreng', 30000),
(7, 'French Fries', 'Kentang goreng renyah', 15000),
(8, 'Chicken Katsu', 'Ayam katsu dengan saus khas', 28000),
(9, 'Nasi Goreng Special', 'Nasi goreng dengan topping lengkap', 25000),
(10, 'Pasta Aglio Olio', 'Pasta ringan dengan bawang putih', 22000),
(11, 'Tuna Sandwich', 'Roti isi tuna dan sayuran', 20000),
(12, 'Waffles with Ice Cream', 'Waffle dengan es krim', 25000),
(13, 'Pancakes with Maple Syrup', 'Pancake dengan sirup maple', 20000),
(14, 'Roti Bakar Coklat Keju', 'Roti panggang dengan coklat keju', 15000),
(15, 'Dimsum Ayam', 'Dimsum ayam kukus dengan saus', 18000),
(16, 'Kopi Latte', 'Kopi dengan susu creamy', 15000),
(17, 'Cappuccino', 'Kopi susu dengan buih susu', 18000),
(18, 'Americano', 'Espresso dengan air panas', 12000),
(19, 'Espresso', 'Kopi murni pekat', 10000),
(20, 'Matcha Latte', 'Minuman teh hijau susu', 20000),
(21, 'Iced Coffee', 'Kopi dingin dengan es', 15000),
(22, 'Hot Chocolate', 'Cokelat panas', 18000),
(23, 'Milkshake Vanilla', 'Milkshake rasa vanila', 20000),
(24, 'Milkshake Coklat', 'Milkshake rasa coklat', 20000),
(25, 'Smoothie Strawberry', 'Smoothie rasa stroberi', 25000),
(26, 'Smoothie Mango', 'Smoothie rasa mangga', 25000),
(27, 'Lemon Tea', 'Teh rasa lemon', 12000),
(28, 'Iced Lemon Tea', 'Teh lemon dingin', 14000),
(29, 'Mineral Water', 'Air mineral', 8000),
(30, 'Es Teh Manis', 'Teh manis dengan es', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_id` int(11) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nomor_telepon` varchar(13) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Tanggal_Feedback_Terakhir` date DEFAULT NULL,
  `Komentar_Terakhir` varchar(256) DEFAULT NULL,
  `Rating_Terakhir` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_id`, `Nama`, `Email`, `Nomor_telepon`, `Alamat`, `Tanggal_Feedback_Terakhir`, `Komentar_Terakhir`, `Rating_Terakhir`) VALUES
(1, 'Jack Petualang', 'jackhapit@gmail.com', '082120475257', 'Goa Pindul', '2024-12-01', 'Pelayanan baik! Mantap', 4),
(2, 'Indra Informatika', 'kingindra46@gmail.com', '082318022006', 'Jl. Kehitaman No. 4', '2024-11-30', 'Rasa makanannya luar biasa cik astaganaga!', 5),
(3, 'Aqboar Cheylenx', 'cheychey@gmail.com', '082232926194', 'Jl. Jambu No. 2', '2024-12-01', 'Menu favorit saya selalu tersedia cik nguwaworr.', 5),
(4, 'Keyffin Shegavon', 'sgw0n@gmail.com', '081321150030', 'Jl. Rawon No. 2', '2024-11-30', 'Tempatnya sangat nyaman. Cocok buat belajar.', 4),
(5, 'Marzi Aidit', 'aiditbukanpki@gmail.com', '085601407005', 'Jl. Sosialis No. 6', '2024-11-29', 'Harga terjangkau cik.', 5),
(6, 'Ucok Cirebon', 'urebon@gmail.com', '087638420472', 'Jl. Cirebon No. 5', '2024-12-01', 'Makanan datang tepat waktu cik!', 5),
(7, 'Sutiyoso Pekalongan', 'nandung@gmail.com', '082391839201', 'Jl. Buah Batu No. 4', '2024-11-30', 'Kafe ini sangat nyaman, kucingnya terawat!', 5),
(8, 'Slamet Kopling', 'skplng@gmail.com', '0813919283929', 'Jl. Merkuri No. 3', '2024-12-01', 'Porsi makanannya besar dan memuaskan, cocok untuk kuli seperti saya. Kucingnya juga lucu.', 5),
(9, 'Fuad Ngawi', 'masfuad@jmk.com', '0842069433', 'Jl. John Mox No. 4', '2024-12-01', 'Kafe ini cocok untuk orang ngawi.', 4),
(10, 'Ade Malang', 'adem@yahoo.com', '082828401839', 'Jl. Pemalang No. 9 ', '2024-12-01', 'Kafe ini sangat nyaman dan kucingnya banyak!', 4),
(11, 'Gilang Ayam', 'ayamolive@gmail.com', '085921849193', 'Jl. Magelang No. 8', '2024-11-30', 'Ayamnya enak!', 4),
(12, 'Rusdi Kansas City', 'rusdi@jmk.com', '084204202690', 'Jl. Kaliurang Km 8', '2024-11-30', 'Cocok buat PSHT ngumpul.', 4),
(13, 'Romi Ichikiwir', 'ichikiwirrrr@gmail.com', '0873927492874', 'Jl. Bambu No. 3', '2024-12-01', 'Ichikiwirrr!', 5),
(14, 'Perrell Laquarius Brown', 'bantengbermimpi@gmail.com', '08656942031', 'Jl. Tuk Kham No. 69', '2024-12-01', 'Kafe ini sangat nyaman dan pelayanan memuaskan.', 4),
(15, 'Alex Manokwari', 'anokwari@gmail.com', '081927401749', 'Jl. Manokwari No. 4', '2024-11-30', 'Lumayan.', 3),
(16, 'Hapit El Vario', 'hapitgaming@gmail.com', '082193829845', 'Jl. Jambu No. 10', '2024-11-30', 'Gacor kang!', 5),
(17, 'Koree Antonio', 'koreee@yahoo.com', '086914203482', 'Jl. Elang No. 2', '2024-12-01', 'Kafe ini sangat nyaman dan pelayanan memuaskan.', 4),
(18, 'Linhu La Fuad', 'linhu@gmail.com', '083800811109', 'Jl. Linu No. 2', '2024-11-30', 'Enak banget anjay.', 5),
(19, 'Adita Sahlogicha', 'sahadit@gmail.com', '08983680129', 'Jl. Selat Solo No. 5', '2024-12-01', 'Kafe ini sangat nyaman dan pelayanan memuaskan.', 4),
(20, 'Apink Chipmunk', 'aphinxx@gmail.com', '089694323148', 'Jl. Solo No. 8', '2024-11-29', 'Hee mangan carbonara wes oleh kopi nk 35 ewu!? MAWURAH CIK!', 4);

-- --------------------------------------------------------

--
-- Table structure for table `perawatan_kucing`
--

CREATE TABLE `perawatan_kucing` (
  `Perawatan_id` int(11) NOT NULL,
  `Kucing_id` int(11) NOT NULL,
  `Tanggal_Perawatan` date NOT NULL,
  `Jenis_Perawatan` varchar(40) NOT NULL,
  `Catatan_Perawatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perawatan_kucing`
--

INSERT INTO `perawatan_kucing` (`Perawatan_id`, `Kucing_id`, `Tanggal_Perawatan`, `Jenis_Perawatan`, `Catatan_Perawatan`) VALUES
(1, 1, '2024-11-26', 'Vaksinasi', 'Kucing sangat tenang'),
(2, 2, '2024-11-26', 'Vaksinasi', 'Tidak ada masalah yang ditemukan'),
(3, 3, '2024-11-22', 'Pemeriksaan Kesehatan', 'Tidak ada masalah yang ditemukan'),
(4, 4, '2024-11-01', 'Sterilisasi', 'Tidak ada masalah yang ditemukan'),
(5, 5, '2024-11-19', 'Pemeriksaan Kesehatan', 'Tidak ada masalah yang ditemukan'),
(6, 6, '2024-11-23', 'Grooming', 'Disarankan pemeriksaan lanjutan'),
(7, 7, '2024-11-15', 'Vaksinasi', 'Kondisi kucing sangat baik'),
(8, 8, '2024-11-12', 'Pembersihan Telinga', 'Kucing sangat tenang'),
(9, 9, '2024-11-20', 'Sterilisasi', 'Kondisi kucing sangat baik'),
(10, 10, '2024-11-03', 'Grooming', 'Perawatan berjalan lancar'),
(11, 11, '2024-11-24', 'Vaksinasi', 'Tidak ada masalah yang ditemukan'),
(12, 12, '2024-11-08', 'Pemeriksaan Kesehatan', 'Kucing sangat tenang'),
(13, 13, '2024-11-06', 'Sterilisasi', 'Disarankan pemeriksaan lanjutan'),
(14, 14, '2024-11-18', 'Pembersihan Telinga', 'Kondisi kucing sangat baik'),
(15, 15, '2024-11-07', 'Grooming', 'Kucing sangat tenang'),
(16, 16, '2024-11-27', 'Vaksinasi', 'Tidak ada masalah yang ditemukan'),
(17, 17, '2024-11-13', 'Pemeriksaan Kesehatan', 'Disarankan pemeriksaan lanjutan'),
(18, 18, '2024-11-09', 'Sterilisasi', 'Kondisi kucing sangat baik'),
(19, 19, '2024-11-05', 'Grooming', 'Tidak ada masalah yang ditemukan'),
(20, 20, '2024-11-21', 'Pembersihan Telinga', 'Kondisi kucing sangat baik'),
(21, 21, '2024-11-17', 'Vaksinasi', 'Kucing sangat tenang'),
(22, 22, '2024-11-04', 'Pemeriksaan Kesehatan', 'Perawatan berjalan lancar'),
(23, 23, '2024-11-10', 'Sterilisasi', 'Disarankan pemeriksaan lanjutan'),
(24, 24, '2024-11-11', 'Pembersihan Telinga', 'Kondisi kucing sangat baik'),
(25, 25, '2024-11-14', 'Grooming', 'Kucing sangat tenang');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `Pesanan_id` int(11) NOT NULL,
  `Pelanggan_id` int(11) DEFAULT NULL,
  `Karyawan_id` int(11) DEFAULT NULL,
  `Tanggal_Pesanan` date DEFAULT NULL,
  `Waktu_Pesanan` time DEFAULT NULL,
  `Jumlah_Tamu` int(5) DEFAULT NULL,
  `Total_Harga` float DEFAULT NULL,
  `Tipe` varchar(20) DEFAULT NULL,
  `Status_Pesanan` enum('Aktif','Batal','Selesai') DEFAULT NULL,
  `Reservasi_id` int(11) DEFAULT NULL,
  `Tanggal_Reservasi` date DEFAULT NULL,
  `Waktu_Reservasi` time DEFAULT NULL,
  `Status_Reservasi` enum('Aktif','Batal','Selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`Pesanan_id`, `Pelanggan_id`, `Karyawan_id`, `Tanggal_Pesanan`, `Waktu_Pesanan`, `Jumlah_Tamu`, `Total_Harga`, `Tipe`, `Status_Pesanan`, `Reservasi_id`, `Tanggal_Reservasi`, `Waktu_Reservasi`, `Status_Reservasi`) VALUES
(1, 1, 14, NULL, NULL, 3, NULL, 'Reservasi', NULL, 1, '2024-12-01', '20:27:00', 'Aktif'),
(2, 2, 8, '2024-11-30', '20:06:00', 2, 52000, 'Reservasi', 'Selesai', 2, '2024-11-30', '19:45:00', 'Selesai'),
(3, 3, 2, '2024-12-01', '12:04:00', 1, 28000, 'Reservasi', 'Selesai', 3, '2024-12-01', '11:26:00', 'Selesai'),
(4, 4, 8, '2024-11-30', '15:06:00', 2, 55000, 'Reservasi', 'Selesai', 4, '2024-11-30', '14:49:00', 'Selesai'),
(5, 5, 14, '2024-11-29', '13:42:00', 3, 65000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(6, 6, 14, '2024-12-01', '18:16:00', 4, 61000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(7, 7, 2, '2024-11-30', '13:12:00', 2, 74000, 'Reservasi', 'Selesai', 5, '2024-11-30', '12:51:00', 'Selesai'),
(8, 8, 2, '2024-12-01', '15:22:00', 3, 60000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(9, 9, 2, '2024-12-01', '14:30:00', 2, 69000, 'Reservasi', 'Selesai', 7, '2024-12-01', '13:52:00', 'Selesai'),
(10, 10, 14, NULL, NULL, 1, NULL, 'Reservasi', NULL, 8, '2024-12-01', '19:31:00', 'Aktif'),
(11, 11, 2, '2024-11-30', '10:45:00', 3, 43000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(12, 12, 8, '2024-11-30', '16:50:00', 4, 56000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(13, 13, 2, '2024-12-01', '15:11:00', 1, 60000, 'Reservasi', 'Selesai', 9, '2024-12-01', '14:42:00', 'Selesai'),
(14, 14, 14, NULL, NULL, 3, NULL, 'Reservasi', NULL, 10, '2024-12-01', '19:39:00', 'Aktif'),
(15, 15, 8, '2024-11-30', '17:15:00', 4, 55000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(16, 16, 2, '2024-11-30', '12:09:00', 2, 65000, 'Reservasi', 'Selesai', 11, '2024-11-30', '11:27:00', 'Selesai'),
(17, 17, 14, '2024-12-01', '18:25:00', 4, 65000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(18, 18, 8, '2024-11-29', '16:10:00', 2, 43000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL),
(19, 19, 2, '2024-12-01', '13:21:00', 1, 46000, 'Reservasi', 'Selesai', 13, '2024-12-01', '12:39:00', 'Selesai'),
(20, 20, 14, '2024-11-29', '10:05:00', 3, 58000, 'Pesanan Langsung', 'Selesai', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_id` int(11) NOT NULL,
  `Nama_supplier` varchar(40) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kontak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_id`, `Nama_supplier`, `Alamat`, `Kontak`) VALUES
(1, 'PT. Meong Food', 'Jl. Kucing No.1, Jakarta', 818392839),
(2, 'CV. Purrfect Toys', 'Jl. Mainan Kucing No.2, Bandung', 841482482),
(3, 'UD. Clean Paws', 'Jl. Mewing No.3, Surabaya', 81123456),
(4, 'PT. Healthy Cats', 'Jl. Kesehatan Kucing No.4, Yogyakarta', 8515661),
(5, 'CV. Cafe Supplies', 'Jl. Kopi No.5, Jakarta', 8158777);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`Detail_id`),
  ADD KEY `Pesanan_id` (`Pesanan_id`),
  ADD KEY `Menu_id` (`Menu_id`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`Inventaris_id`),
  ADD KEY `fk_supplier_id` (`Supplier_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`jadwal_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Karyawan_id`);

--
-- Indexes for table `karyawan_jadwal`
--
ALTER TABLE `karyawan_jadwal`
  ADD KEY `jadwal_id` (`jadwal_id`),
  ADD KEY `fk_karyawan_id3` (`karyawan_id`);

--
-- Indexes for table `kucing`
--
ALTER TABLE `kucing`
  ADD PRIMARY KEY (`Kucing_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Menu_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`);

--
-- Indexes for table `perawatan_kucing`
--
ALTER TABLE `perawatan_kucing`
  ADD PRIMARY KEY (`Perawatan_id`),
  ADD KEY `fk_Kucing_id2` (`Kucing_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Pesanan_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`),
  ADD KEY `fk_karyawan_id2` (`Karyawan_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `Inventaris_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`Pesanan_id`) REFERENCES `pesanan` (`Pesanan_id`),
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`Menu_id`) REFERENCES `menu` (`Menu_id`);

--
-- Constraints for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD CONSTRAINT `fk_supplier_id` FOREIGN KEY (`Supplier_id`) REFERENCES `supplier` (`Supplier_id`);

--
-- Constraints for table `karyawan_jadwal`
--
ALTER TABLE `karyawan_jadwal`
  ADD CONSTRAINT `fk_karyawan_id3` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`Karyawan_id`),
  ADD CONSTRAINT `jadwal_id` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal` (`jadwal_id`),
  ADD CONSTRAINT `karyawan_jadwal_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`Karyawan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_jadwal_ibfk_2` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal` (`jadwal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perawatan_kucing`
--
ALTER TABLE `perawatan_kucing`
  ADD CONSTRAINT `fk_Kucing_id2` FOREIGN KEY (`Kucing_id`) REFERENCES `kucing` (`Kucing_id`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_karyawan_id2` FOREIGN KEY (`Karyawan_id`) REFERENCES `karyawan` (`Karyawan_id`),
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
