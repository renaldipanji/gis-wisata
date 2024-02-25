-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 05:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(17, 11, '', '7709a.jpg', ''),
(18, 12, '', '1039goa-lawah.jpg', ''),
(19, 12, 'Goa Lawah 1', '2443gua-lawah-1.jpg', ''),
(20, 12, 'Goa Lawah 2', '6752gua-lawah3.jpg', ''),
(21, 11, 'Lempuyang 1', '8479lempuyang.jpg', ''),
(22, 15, '', '5071pusering-jagat.jpg', ''),
(23, 10, 'Mandala 1', '7182mandapa-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(24, 10, 'Mandala 2', '9349mandapa-2.jpg', ''),
(25, 10, 'Mandala 3', '4694mandapa-3.jpg', ''),
(26, 10, 'Mandala 4', '8986mandapa-4.jpg', ''),
(27, 10, 'Mandala 5,6,7', '2425mandapa-567.jpg', ''),
(28, 10, 'Gambar 1', '7398besakih.jpg', ''),
(29, 10, 'Gambar 2', '7659besakih-2.jpg', ''),
(30, 13, 'Batukaru 1', '5413batukaru-1.jpg', '<p>barukaru tes keternagan</p>'),
(31, 13, 'Batukaru 2', '1935batukaru-2.jpg', ''),
(32, 11, 'Lempuyang 2', '5131lempuyang-3.jpg', ''),
(33, 14, 'Uluwatu 1', '6659uluwatu-1.jpg', ''),
(35, 15, 'Pusering jagat 1', '4421pusering-jagat-1.jpg', ''),
(36, 15, 'Pusering jagat 2', '6820pusering-jagat-2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(16, 'Kedang Ipil', '1298img_5413.jpg', -0.4147004, 116.6293741, 'Kedang Ipil, Kabupaten Kutai Kartanegara, Kalimantan Timur', '<p>Desa Budaya Kutai Adat Lawas di sematkan kepada desa Kedang Ipil ini memang tidak salah. Salah satu alasannya adalah desa ini merupakan salah satu desa tertua dan masih memegang teguh adat dan tradisi leluhur. Lokasinya Masuk di wilayah Kecamatan Kota Bangun, Kabupaten Kutai Kartanegara, namun lokasinya tidak di sisi sungai mahakam, melainkan masih di sekitar jalan poros Tenggarong menuju Kota Bangun &amp; Simpang menuju Melak (Kabupaten Kutai Barat), tepatnya masuk di simpang Merai, dan masih sekitar 18 km menuju Desa Kedang Ipil, melalui hutan dan areal perusahaan Kelapa Sawit. Salah satu acara adat yang masih dijalankan hingga saat ini adalah acara panen padi yang di sebut dengan Nutuk Baham (Nutuk artinya menumbuk, Baham artinya padi muda). Acara ini biasanya dilaksanakan pertengahan tahun saat panen, yakni sekitar bulan mei &ndash; juni. Selain itu masih ada ritual Belian (mengobati orang sakit dengan menggunakan ritual yang di pimpin orang Dewa Belian), Nikah Adat, Ritual saat orang meninggal dunia dan masih banyak lagi, termasuk objek wisata Air Terjun Putang &amp; Kandua Raya. Dari Bandara Balikpapan, kita bisa menggunakan bis menuju Loa Janan lalu ikut Mobil Taxi menuju Terminal di Tenggarong. Di Tenggarong ikut Bis juruan Kota Bangun dan minta di turunkan di Simpang Merai yang berada tidak jauh sebelum simpangan menuju Melak. Berhubung tidak ada sarana umum menuju Desa Kedang Ipil, cobalah menumpang beberapa kendaraan yang memasuki simpang Merai, baik itu sepeda motor, mobil pribadi maupun mobil perusahaan. Perkiraan budget&nbsp;antara 100 &ndash; 150 ribu untuk keseluruhan. Jika memiliki banyak teman (sekitar 4 -5 orang) saat traveling alangkah bagusnya menyewa mobil baik dari Balikpapan, Loa Janan atau dari Tenggarong menuju Kedang Ipil. Budget sekitar 700 &ndash; 800 ribu per mobil (tergantung jenis mobil yang digunakan). Perjalanan dari Balikpapan menuju Tenggarong memakan waktu sekitar 2 &ndash; 3 jam, dari Tenggarong menuju Simpang Merai sekitar 1 &ndash; 1,5 jam, dari Simpang Merai menuju Desa Kedang Ipil sekitar 30 &ndash; 45 menit. Kondisi jalan yang kebanyakan tanah berbatu di selingi dengan jalan semen &amp; aspal masih relative aman bagi yang kendaraan mobil standar atau motor. Di Desa Kedang Ipil, ada banyak pilihan menginap. Ingin gantung hammock, camping, ataupun bagi yang mau menumpang di rumah warga alias homestay, silahkan budayakan untuk bertanya kepada warga kampung yang ditemui, untuk Pos Masuk ke objek wisata air terjun Putang &amp; Kandua Raya, Balai Adat ada di ujung kampung. Untuk homestay tersebar di beberapa titik kampung dan sudah ada tandanya di masing &ndash; masing homestay. Untuk gantung hammock bisa di pohon buah yang banyak terdapat di depan Balai Adat atau bisa juga di gabung dengan pasang tenda di sekitar Air Terjun Kandua Raya, carilah titik yang aman dari kemungkinan air besar saat musim hujan atau dari sesuatu yang jatuh dari pepohonan sekitar. Biaya masuk ke air terjun cuma 3 ribu rupiah per orang dan pengunjung juga bisa menggunakan sepeda motor pribadi atau menggunakan jasa ojek dengan tarif 25 ribu untuk tujuan Air Terjun Kandua Raya (Pulang Pergi) &amp; 50 ribu untuk tujuan Air Terjun Putang (PP). Untuk camping dikenakan biaya 250&nbsp;ribu per grup, untuk sedikit orang silahkan dikomunikasikan dengan Pokdarwis (Kelompok Sadar Wisata) Dewi Karya. Saat musim hujan, kami juga bisa mencoba Tubing dari Air Terjun Putang menuju Kandua Raya, biayanya sekitar 250 ribu per 5 orang, sudah termasuk ban / tube, life jacket dan helm. Beberapa kegiatan sehari &ndash; hari warga yang menarik untuk dilihat secara langsung adalah mengambil air dari pohon aren yang biasanya di lakukan setiap pagi dan menjelang sore. Kalau ada warga yang membawa beberapa batang bambu besar baik dengan berjalan kaki atau menggunakan sepeda motor, panggillah dengan sopan dan minta ijin untuk ikut melihat aktifitas tersebut. Beberapa lokasi pengambilan air aren ber variatif, ada yang dekat dan juga ada yang jauh. Pastikan jarak tempuh terlebih dahulu bagi yang tidak terbiasa berjalan kaki untuk rute yang jauh. Proses pengambilan air aren lumayan ekstrem, hanya menggunakan tangga yang terbuat dari bambu panjang dan dilubangi di kedua sisi dan dipasangi batang kayu untuk pijakan, tidak ada tali pengaman bagi pengambil air aren. Walau ada yang pernah meninggal karena jatuh saat mengambil air aren, tradisi ini masih terus dilakukan. Pengambil air aren biasanya memukul &ndash; mukul batang atas pohon aren yang dimaksudkan untuk membuat aliran air di dalam batang pohon mengalir deras. Adapun batang bambu (belum berisi air alias kosong) yang di bawa dari awal akan dipasang untuk menggantikan batang bambu yang sudah dipasang 12 jam sebelumnya, dan sudah terisi dengan air. Proses pengisian air aren ke bambu memang memakan waktu lama, karena menunggu tetes demi tetes dari batang aren yang di iris dengan&nbsp;Mandau. Setelah pengambil air aren turun dari pohon kita bisa meminta ijin untuk mencicipi rasanya yang masih segar. Air aren bagus untuk kesehatan ternyata, seperti untuk pencernaan dan ginjal. Air aren kebanyakan akan di proses menjadi Gula Aren atau gula merah, dan sebagian kecil dijadikan minuman fermentasi (tuak). Proses pembuatan gula merah sekitar 3 &ndash; 4 jam, tergantung jumlah air dan suhu panas pembakaran. Pembuatan gula merah di Desa Kedang Ipil bisa dijamin tanpa campuran alias murni dari air aren, sehingga warnanya cokelat segar dan rasanya gurih. Saya sendiri paling senang mencicipi air aren yang sudah di panaskan sekitar 1 &ndash; 2 jam, rasanya lebih enak daripada yang belum diproses. Saat air mulai mengental, pembuat gula merah akan mengaduk &ndash; aduk terlebih dahulu lalu di tuang ke cetakan gula merah yang terbuat dari batang kayu khusus dan berisi sekitar 4 &ndash; 5 cetakan dalam satu wadah. Sisa air aren yang tertinggal di wajan, enak di cicipi. Salah satu aktifitas warga lainnya yang bisa ditemukan sehari &ndash; hari adalah aktifitas ibu &ndash; ibu yang membuat tusuk sate dari pohon bambu, bisa dengan mudah di lihat karena dikerjakan di depan rumah atau saat mereka menunggu anak &ndash; anak pulang sekolah. Desa Kedang Ipil masih kental dengan adat istiadat Kutai Adat Lawas, mereka ada beberapa ritual yang terus dijalankan seperti Nyepi (tidak keluar rumah selama beberapa hari, tidak menyakiti, membunuh binatang bahkan serangga hingga dilarang memakan sesuatu yang bernyawa seperti ikan, ayam, dll), Nikah Adat, tradisi saat seseorang meninggal dunia, dan tentu saja ritual Belian untuk pengobatan. Kelompok sadar wisata (pokdarwis) yang dinamai &ldquo;Dewi Karya&rdquo; telah&nbsp;terbentuk di desa ini dapat juga dijadikan referensi untuk segala informasi mengenai rencana kunjungan dan event budaya. Sahabat wisata bisa menghubungi Pak Sartin dengan nomor handphone 0813 4795 9752, akan sangat senang bisa membantu sahabat wisata semuanya.<br /> Belum puas rasanya bila berkunjung ke desa ini kalau hanya sekali. Sebelum pulang, jangan lupa membeli oleh &ndash; oleh khas Desa Kedang Ipil, gula merah, anyaman tas (anjat) / gelang / cincin yang terbuat dari rotan &amp; kandau, serta beberapa kerajinan tangan khas lainnya.</p>'),
(18, 'Liang Ulu', '50856323c52e-e8a4-4af9-9994-14481ebbe31b.jpg', -0.232871, 116.568752, 'Liang Ulu, Kec. Kota Bangun, Kabupaten Kutai Kartanegara, Kalimantan Timur 75561', '<p>Desa Pela merupakan salah satu desa yang berada di pinggir sungai Mahakam yang sebagian besar penduduknya adalah sebagai nelayan air tawar dan uniknya, dari 12 desa yang ada dengan mayoritas etnis Kutai sedangkan satu-satunya penduduk dengan mayoritas etnis banjar di Kecamatan Kota Bangun, Kabupaten Kutai Kartanegara. Masyarakat Desa Pela terbagi atas 6 RT dengan jumlah 172&nbsp;kepala keluarga serta 577&nbsp;jiwa. Dari letak geografis, desa sebelah utara berbatasan dengan desa Muhuran, sebelah selatan desa Sangkuliman, sebelah barat dengan desa Semayang, dan sebelah timur dengan desa Liang Ulu. Sesuai dengan Keputusan Bupati Kutai Kartanegara Nomor 250/SK-BUP/HK/2019 tentang lokasi desa wisata Kabupaten Kutai Kartanegara, dalam diktum keputusannya disebutkan bahwa desa Pela ditetapkan sebagai desa wisata dengan berbasis wisata Sungai dan danau dengan ekosistem Mamalia Langka pesut Mahakam Atau lumba-lumba air tawar. Wisata danau adalah karena letak geografis desa yang berada di dekat danau semayang. Selain itu, hampir 95% Mayarakat berprofesi sebagai nelayan. maka aktifitas masyarakat yang didominasi oleh penangkapan ikan, sangat bergantung pada keberadaan sungai Pela dan danau Semayang. Desa wisata pela juga menjadi daerah Kawasan konservasi perairan dan kawasan ekonomi esensial &nbsp;untuk keberlangsungan dan Kelestarian Pesut Mahakam. <strong>Pesut&nbsp;</strong>&nbsp;Mahakam adalah Spesies mamalia Yang hidup di air tawar . Pesut mahakam Termasuk katagori hewan yang dilindungi karna keberadaan hanya sekitar 80 ekor di Sungai Mahakam, sedangkan yang sering melewati jalur Sungai Pela ada sekitar 20 ekor. Sejarah Desa Terbentuknya Nama Desa Pela &nbsp;ada 2 suku yang pertama kali datang yaitu dari suku banjar dan suku bugis.&nbsp; Sejarah Datang Nya suku Banjar ke desa pela yaitu akibat perperangan raja banjar sehingga mata pencaharian mereka terganggu. maka mereka memutuskan merantau ke kalimantan timur tepatnya di desa pela untuk lari dari Perperangan . hal ini juga diistilahkan dengan kata PELARIAN oleh suku banjar. Sedangkan sejarah suku bugin datang ke desa pela yaitu untuk mencari ikan dan menjadi nelayan. Desa Pela Pada saat itu mengalami kemarau panjang dan cuaca nya sangat panas maka orang bugin menyebut dengan MaPELAi (Panas)Semakain Tahun Penduduk semakin Bertambah Hingga Tiba Dimana Kepala Suku Banjar dan Bugis Ingin menamai kampung. lalu diadakan Musyawarah. suku banjar ingin menamai kampung dengan nama PELArian Sedangkan suku bugis ingin Menamai kampung Dengan Nama maPELAi. maka kepala suku bersepakat untuk mengambil jalan tengah Yaitu agar Nama yang diusulkan Diambil Dengan Nama PELA saja. karna PELA dari PELArian bisa masuk Dan Dari maPELAi juga bisa. dan akhirnya Semua Bersepakat Menamai Kampung Dengan Nama &ldquo;PELA&rdquo;. Jarak tempuh menuju desa wisata pela dari bandara Balikpapan kurang lebih 6 jam, jika keadaan jalan normal bisa di tempuh 5.5 jam menuju desa pela untuk akses jalannya itu menyeberangi sungai Mahakam 2 kali untuk biaya menyeberang 5 ribu untuk kendaraan roda 2 dan 50 ribu untuk kendaraan roda 4.</p>'),
(19, 'Tanjung Serai', '3029img_5414.jpg', -0.198923, 116.548089, 'Tanjung Serai', '<p>Rekor jembatan terpanjang di Indonesia tampaknya bakal berpindah tempat ke Kota Bangun, Kutai Kartanegara (Kukar). Bahkan, sejak 2015, infrastruktur tersebut diklaim mengalahkan Jembatan Suramadu di Surabaya. Bila Suramadu memiliki panjang 5,4 kilometer atau sekitar 13 kilometer dihitung dengan jalan pendukungnya, maka Jembatan Martadipura memiliki panjang 15,3 kilometer atau lebih panjang 9 kilometer dari Suramadu. Data Dinas Bina Marga dan Sumber daya Air (DBMSDA) Kukar, menyebut badan dan fondasi jembatan Jembatan Martadipura dibangun hingga belasan kilometer di atas rawa dengan metode&nbsp;<em>pile slab</em>&nbsp;(jalan layang). Dari permukaan tanah,&nbsp;<em>pile slab</em>&nbsp;itu memiliki panjang dua hingga tiga meter. Meski lokasinya berada di atas rawa dan berfungsi sebagai penghubung, konstruksi tersebut termasuk kategori jembatan. Jarak tempuh jika dari bandara Balikpapan menuju jembatan martadipura kurang lebih 4 jika keadaan jalan normal.</p>'),
(20, 'Air Terjun Benua Baru', 'benua_baru.jpg', -0.484325, 116.679406, 'Benua Baru, Kabupaten Kutai Kartanegara, Kalimantan Timur', '<p>Air terjun benua baru ini baru saja di temukan oleh penduduk sekitar dan di kelola oleh desa sendiri untuk fasilitas yang sudah ada itu mushola, kamar mandi, dan gajebo, untuk warung belum ada harus bawa dari luar. Akses jalannya masih berupa jalan tanah dan bebatuan kalau dari bandara Balikpapan memerlukan waktu sekitar 5 jam untuk sampai ke wisata air terjun</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
