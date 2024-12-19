-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 07:57 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madmins`
--

CREATE TABLE `madmins` (
  `id_admin` int(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `madmins`
--

INSERT INTO `madmins` (`id_admin`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'anggito', '$2y$10$7P2XeI4lr7enMuHmVAyMKOxiaOp00NMocqcSv/2WQsBngdy6VFRX2', NULL, NULL),
(2, 'admin', '$2y$10$bM59e.qSq13ePeIZP/0etuBLjE7QucRZ3thNpLNeQebXBSA.wVRka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mdatakaves`
--

CREATE TABLE `mdatakaves` (
  `id_kafe` bigint(20) UNSIGNED NOT NULL,
  `id_admin` int(20) UNSIGNED NOT NULL,
  `nama_kafe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kafe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_kafe` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_kafe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mdatakaves`
--

INSERT INTO `mdatakaves` (`id_kafe`, `id_admin`, `nama_kafe`, `alamat_kafe`, `telp_kafe`, `deskripsi_kafe`, `created_at`, `updated_at`) VALUES
(5, 1, '774.Hub', 'Jl. Bung Tarjo No.12, Baciro, Kec. Gondokusuman, Kota Yogyakarta', '0791221', 'Coffee Shop 774.Hub, yang terletak di Jl. Bung Tarjo No.12, Baciro, Kec. Gondokusuman, Kota Yogyakarta, menawarkan pengalaman yang sangat unik bagi para pelanggan di sekitar Baciro. Dengan suasana yang syahdu dan nyaman, tempat ini menjadi pilihan favorit bagi mereka yang mencari ketenangan sambil menikmati secangkir kopi. Varian rasa seperti butterscotch dan caramel almond memberikan sentuhan berbeda yang memperkaya pengalaman menikmati kopi. Sirup butterscotch memberikan rasa manis yang lembut, sementara caramel almond menghadirkan kombinasi rasa manis dan gurih yang berpadu sempurna tanpa menghilangkan esensi asli kopi itu sendiri. Setiap cangkir kopi disajikan dengan penuh perhatian oleh barista yang ramah dan profesional, menambah nilai positif pada pengalaman pelanggan. Bagi para perokok, Coffee Shop 774.Hub menyediakan area merokok di dalam ruangan. Namun, bagi mereka yang tidak menyukai asap rokok, pilihan takeaway sangat dianjurkan. Meski demikian, saat kondisi sedang sepi, menikmati suasana di luar kafe bisa menjadi alternatif yang menyenangkan. Selain kopi, 774.Hub juga menawarkan menu non-kopi yang menarik, salah satunya adalah matcha almond. Minuman ini menawarkan cita rasa yang khas, menggabungkan kelembutan matcha dengan rasa almond yang gurih. Dengan berbagai pilihan menu yang ditawarkan, Coffee Shop 774.Hub menjadi destinasi yang sempurna bagi siapa saja yang ingin menikmati waktu santai dengan minuman berkualitas.', NULL, NULL),
(6, 1, 'Huis Of Tala', 'Jl. Mangkuyudan, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta', '023934334', 'Huis of Tala adalah sebuah coffee shop yang terletak di Jl. Mangkuyudan, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, yang menempati sebuah rumah tua bergaya vintage. Tempat ini memiliki karakter unik yang terasa kuat saat pertama kali melangkahkan kaki ke dalam. Kesan homey dan hangat segera menyambut pengunjung begitu masuk dan menuju bar. Huis of Tala benar-benar seperti rumah, sesuai dengan namanya. Area yang tersedia sangat beragam, mulai dari ruangan indoor ber-AC, area outdoor, hingga semi outdoor. Di area outdoor juga terdapat aliran kolm kecil dengan ikan-ikan yang menghiasi area tersebut. Suara gemericik air kolam ini menciptakan suasana yang lebih hidup dan menenangkan. Salah satu kelebihan dari huis of tala adalah jam operasionalnya yang buka selama 24 jam penuh. Ini adalah sesuatu yang jarang ditemukan di tengah kota. Mereka juga menawarkan PROMO MIDNIGHT dengan diskon 25% dari jam 11 malam hingga jam 6 pagi. Ada juga PROMO GEN Z dengan diskon 25%, cukup dengan menunjukkan identitas dan menjadi member. Salah satu makanan di menu mereka adalah rawon yang bumbunya sangat mantap. Bagi pecinta rawon, hidangan ini wajib dicoba!', NULL, NULL),
(7, 1, 'Cosan Seturan', 'Jl. Seturan Raya No.6, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman', '069786785', 'Cosan, atau Coffee Sanctuary, adalah referensi kafe terbaru di Jogja yang layak dikunjungi. Kafe ini berlokasi di Jalan Seturan Raya No.6, Kledokan, Caturtunggal, Depok, Sleman. Dengan suasana yang nyaman, kafe ini menjadi tempat ideal untuk bekerja atau mengerjakan tugas. Luas dan lega, setelah masuk ada banyak pilihan tempat duduk yang bisa kalian pilih sesuai kebutuhan, ada banyak sharing table besar yang enak buat nugas, posisi duduk dan tempat duduknya juga nyaman buat berlama-lama. Lighting atau pencahayaan juga enak banget, ngga yang terlalu terang dan ngga terlalu gelap. Kafe ini buka setiap hari dari pukul 07.00 hingga 23.00 WIB, memberikan fleksibilitas waktu bagi siapa saja yang ingin datang. Menu yang ditawarkan sangat beragam, mulai dari berbagai jenis kopi hingga makanan dengan harga yang ramah di kantong, sehingga cocok untuk berbagai kalangan. Setiap sudut kafe ini dirancang dengan baik, menciptakan atmosfer yang cozy dan menyenangkan untuk bersantai atau bekerja.', NULL, NULL),
(8, 1, 'Ad Meliora Coffee and Eatery', 'Jl. Nglanjaran, Candirejo, Sardonoharjo, Kec. Ngaglik, Kabupaten Sleman', '068686785', 'Ad Meliora Coffee and Eatery memiliki area yang cukup luas yang dapat menampung berbagai kebutuhan pengunjung. Salah satu fasilitas unggulannya adalah Joglo yang dapat disewa untuk acara-acara khusus, seperti pertemuan atau perayaan. Selain itu, lantai pertama menawarkan area indoor yang nyaman, sementara lantai dua menyediakan ruang semi-indoor yang luas dengan pencahayaan alami yang melimpah. Di lantai dua ini juga terdapat ruang merokok ber-AC yang bisa digunakan untuk rapat, sehingga memberikan kenyamanan ekstra bagi para pengunjung. Kafe ini tidak hanya menyediakan tempat yang nyaman, tetapi juga sering mengadakan acara-acara menarik seperti nonton bareng (nobar) dan event seru lainnya yang membuat suasana semakin hidup. Coffee mocktail mereka terasa sangat menyegarkan, dengan perpaduan rasa yang seimbang. Kwetiau sapi yang kami coba memiliki cita rasa smokey yang kaya dan penuh rasa. Bagi pecinta cake dan pastry, tempat ini juga menawarkan berbagai pilihan yang menggugah selera. Kelezatan setiap hidangan ditambah dengan suasana yang nyaman membuat Ad Meliora menjadi tempat yang sempurna untuk bersantai dan menikmati waktu.', NULL, NULL),
(9, 1, 'Titik Tentram', 'Jl. Ngelosari No.rt 06, Jombor, Srimulyo, Kec. Piyungan, Kabupaten Bantul', '06747457', 'Titik Tentram telah menjadi tempat favorit ketika ingin melakukan pelarian singkat dari rutinitas sehari-hari, karena tempat ini benar-benar indah ditambah dengan pemandangannya yang luar biasa. Lokasinya memang agak jauh dari pusat kota. Ttitik Tentram berlokasi di Jl. Ngelosari No.rt 06, Jombor, Srimulyo, Kec. Piyungan, Kabupaten Bantul, tepatnya di daerah perbukitan Piyungan. Dari sebelah timur, pemandangannya sudah menampilkan Bukit Bintang dengan lampu-lampunya yang memeriahkan suasana malam. Meskipun perjalanan menuju tempat ini cukup panjang, setibanya di Titik Tentram, semua usaha terasa terbayar. Tempat ini menawarkan suasana yang begitu nyaman sehingga membuat saya betah berlama-lama, rasanya seperti tidak ingin pulang. Keindahan alam sekitar Titik Tentram, ditambah dengan desain tempat yang estetik, menciptakan pengalaman yang benar-benar memanjakan mata dan pikiran. Pemandangan bukit yang hijau dan luas, serta lampu-lampu kota yang terlihat dari kejauhan, menambah kesan magis pada tempat ini. Setiap sudutnya dirancang dengan baik, menciptakan spot-spot cantik untuk bersantai atau berfoto. Selain karena keindahan tempatnya dan pemandangan yang memukau, menu-menu di Titik Tentram juga sangat menarik dengan presentasi yang tidak biasa, membuat setiap hidangan terasa istimewa. Menu di Titik Tentram tidak hanya memanjakan lidah tetapi juga mata. Setiap hidangan disajikan dengan cara yang artistik, menjadikannya bukan hanya makanan tetapi juga karya seni. Ini menambah kesan eksklusif dan unik pada setiap kunjungan. Dengan semua keunggulan tersebut, Titik Tentram benar-benar menjadi destinasi sempurna untuk melarikan diri dari hiruk-pikuk kota dan menikmati ketenangan alam.', NULL, NULL),
(10, 1, 'Westpash Coffee', 'Sayangan No. 06, Sayangan, Jagalan, Banguntapan, Kabupaten Bantul', '079775856', 'Westpash Coffee merupakan cafe kecil yang ada di dalam area Pasar Kotagede, tepatya berada di Sayangan No. 06, Sayangan, Jagalan, Banguntapan, Kabupaten Bantul. Cafe ini sangat cocok untuk Anda yang ingin mendapatkan pengalaman baru dengan suasana cafe yang sangat homey. Cafe ini cocok untuk Anda yang ingin bersantai setelah berjalan-jalan di area Kotagede.', NULL, NULL),
(11, 1, 'RUMIFest Creative & Festival', 'Jl. Singoranu, Tamanan, Kec. Banguntapan, Kabupaten Bantul', '0785856567', 'RUMIFest merupakan kafe yang memilik konsep \"berani\" karena tempat ini punya panggung super gede yang bisa buat konser lengkap dengan led screen besar, lampu par dan sound sistem yang proper. Jadi buat siapapun kamu yang pengen ngadain event atau pertunjukan, RUMIFest sangat terbuka untuk itu. Kedua areanya yang sangat luas dan lengkap, banyak pilihan tempat duduk dan fasilitasnya yang lengkap mulai dari tempat parkir luas, mushola luas, ada banyak meeting room/office room yang bisa kalian sewa sesuai kebutuhan hingga printing area yang bisa kamu gunakan. Selain itu harga menu untuk tempat seperti ini bisa dibilang terjangkau, dan yang paling penting menurut kami menunya sangat proper dengan harganya yang terjangkau, worth the price lah jika dibandingkan harga setara di tempat lain.', NULL, NULL),
(12, 1, 'Kelanaloka', 'Jl. Langenastran Kidul No.22, RT.05/RW.02, Panembahan, Kecamatan Kraton, Kota Yogyakarta', '09797867', 'Kelanaloka merupakan kafe yang menawarkan suasana tenang di tengah kota, tepatnya berada di Jl. Langenastran Kidul No.22, RT.05/RW.02, Panembahan, Kecamatan Kraton, Kota Yogyakarta dengan konsep retro-homey yang memancarkan kehangatan dan kenyamanan. Ditambah lagi, menu yang ditawarkan adalah masakan lokal dengan harga yang sangat terjangkau. Pilihan menunya cukup beragam. Bagi pecinta kopi, tersedia berbagai pilihan kopi seduh manual yang memuaskan. Selain itu, banyak juga menu lokal yang bisa dinikmati, seperti Selat Solo, Timlo, berbagai varian soto, dan nasi goreng. Minuman yang saya coba kali ini mencakup Kopsus OG, Matcha, Black Charcoal, dan Strawberry Asri yang segar. Harga menu di sini sangat bersahabat, mulai dari 6 ribu hingga 22 ribu rupiah saja, kamu sudah bisa menikmati hidangan-hidangan lezat ini. Yang membuat pengalaman nongkrong di sini semakin istimewa adalah koleksi vinyl dengan lagu-lagu budaya lawas yang diputar, menciptakan atmosfer nostalgia yang menyenangkan. Selain itu, setiap malam Minggu, ada penampilan DJ yang memeriahkan suasana hingga larut malam. Dengan semua keunikan dan kenyamanan ini, coffee shop ini benar-benar menjadi tempat yang sempurna untuk bersantai dan menikmati waktu bersama teman-teman.', NULL, NULL),
(13, 1, 'Lestari Corner Coffee', 'Jl. Nangka, Krodan, Maguwoharjo, Kec. Depok, Kabupaten Sleman', '07868665', 'Coffee shop 24 jam yang terletak di Jl. Nangka, Krodan, Maguwoharjo, Kec. Depok, Kabupaten Sleman ini benar-benar tidak pernah kehabisan ide untuk memberikan sesuatu yang baru bagi pengunjungnya. Dimulai dari area depan yang bergaya industrial dengan ruang yang tidak terlalu luas, kemudian berlanjut ke area privat, lalu ke area industrial dan bar di belakang yang semakin luas. Jika sebelumnya mereka mengusung gaya industrial minimalis, area baru ini dirancang dengan konsep limasan tradisional. Meski begitu, tetap disediakan meja dan kursi yang nyaman dan proper untuk kamu yang ingin produktif sambil menikmati kopi. Tidak perlu khawatir kehabisan tempat duduk, karena area baru ini sangat luas! Suasana di malam hari sangat menyenangkan, dengan pencahayaan yang hangat dan menenangkan, membuat siapa pun betah berlama-lama. Tempat ini sangat cocok untuk nongkrong bareng teman-teman. Untuk yang tidak suka ribet, Lestari masih menerapkan layanan penuh, jadi kamu tidak perlu repot-repot mengambil pesanan sendiri. Selain itu kamu masih bisa menggunakan area lain seperti ruang privat, area industrial di depan, dan di belakang. Menariknya, coffee shop ini buka selama 24 jam, jadi kamu bisa datang kapan saja. Beberapa menu baru mereka yang tentunya semakin melengkapi pilihan yang ada. Salah satunya adalah chicken wings dengan porsi yang sangat banyak, cocok untuk dinikmati bersama-sama. Setiap gigitan penuh dengan rasa, menjadikannya pilihan yang sempurna untuk kumpul bareng teman atau keluarga. Dengan semua fasilitas dan layanan yang ditawarkan, coffee shop ini benar-benar menjadi tempat yang sempurna untuk setiap kesempatan.', NULL, NULL),
(14, 1, 'Nilu Reserve', 'Jl. Cendrawasih No.35, Manukan, Condongcatur, Kec. Depok, Kabupaten Sleman', '089678656', 'Nilu Reserve merupakan kafe yang terletak di Jl. Cendrawasih No.35, Manukan, Condongcatur, Kec. Depok, Kabupaten Sleman. Tempatnya yang luas dibarengi tempat parkirnya yang juga luas jadi nggak usah khawatir susah parkir. Lanjut di bagian dalem ada beberapa area yang bisa kamu pilih, pertama ada area bar indoor, semi outdoor, full outdoor yang luas + ada panggung di tengah dan terakhir ada 1 lagi indoor smooking room di bagian samping.', NULL, NULL),
(15, 1, 'Kamari Coffee', 'Jl. Tamantirto Kasihan Bantul, Brajan, Tamantirto, Kec. Kasihan, Kabupaten Bantul', '0678678', 'Kamari Coffee, coffee & space adalah kafe yang berada di sekitaran UMY, tepatnya di Jl. Tamantirto Kasihan Bantul, Brajan, Tamantirto, Kec. Kasihan, Kabupaten Bantul. Tempatnya sangat luas dan punya indoor smooking area (AC) di ruang utamanya. Selain itu mereka punya area outdoor yang cukup nyaman buat sekedar nongkrong ngobrol bareng temen dan menikmati suasana dengan view sawah tepat di samping bangunan. Walaupun terletak di kawasan cukup padat tapi Kamari ini bisa dibilang cukup kondusif dan nggak bising sehingga cocok buat kamu yang pengen nugas.', NULL, NULL),
(16, 1, 'Kopi Sembilan', 'Jl. Pogung Kidul, Pogung Kidul, Sinduadi, Kec. Mlati, Kabupaten Sleman', '08567425', 'Kopi Sembilan, coffee shop dengan segala memori dan kehumbleannya yang berada di Jl. Pogung Kidul, Pogung Kidul, Sinduadi, Kec. Mlati, Kabupaten Sleman. Dari sekian banyak coffee shop di Pogung, bisa dibilang tempat ini jadi tempat termemorable, selain karena tempatnya yang mudah untuk membuat rindu, orang-orang di dalamnya pun sudah seperti teman sendiri meski buat kamu yang baru datang sekalipun. Kamu akan disambut hangat, pernah kami dengar langsung cerita dari pemilik tempat ini kalau ada beberapa customer yang setiap hari datang untuk singgah, menjadikan Kopi Sembilan rumah kedua. Konsepnya masih tetap bertahan dengan manual brew, setiap kami masuk ke area bar dan duduk di kursi bar entah bagaimana bisa langsung merasakan nyaman yang jarang kami temui di coffee shop lain, vibes yang terbentuk di tempat ini memang sudah begitu kuatnya. Tak hanya area bar dengan AC, masih ada area samping, lantai 2 dan yang terbaru ada area rooftop yang sangat menarik. Buat menunya masih affordable sekali jika dibandingkan tempat-tempat lain di sekitaran Pogung.', NULL, NULL),
(17, 1, 'B Coffee', 'Jl. Jogokaryan No.61-63, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta', '085676745', 'B Coffee yang berada di Jl. Jogokaryan No.61-63, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta merupakan salah satu coffee shop di tengah kota yang ngasih ambiance tenang dan tidak berisik, saat sore hari dan jendela-jendela besar itu dibuka kamu akan menemukan keindahan langit senja jika sedang cerah, rimbun pepohonan di sampingnya pun membuat pandangan tak monoton dan sejuk meski tanpa ac di dalamnya. Luas dan banyak tempat duduk adalah salah satu kelebihannya, jarak antar tempat duduk pun lumayan jauh, bisa jadi cocok buat yang WFA karena mereka punya koneksi internet yang stabil dan cukup kencang. Menunya banyak dan dengan kualitas rasa yang tidak dikesampingjan. Kamu bisa nyobain menu bundling Lunch Package mix fruit tea + spicy melted cheese chicken don atau honey chicken don dengah harga 50K aja. Buat yang nggak pengen makan berat ada Snack Package palm sugar latte + bread toast. Btw bread toasnya juara sih, rotinya tebel empuk dan udah bikin kenyang.', NULL, NULL),
(18, 1, 'Lars Flagship', 'Jl. Seturan Raya No.168, Kledokan, Caturtunggal, Depok, Kabupaten Sleman', '08798564', 'Lars Flagship yang berlokasi di Jl. Seturan Raya No.168, Kledokan, Caturtunggal, Depok, Kabupaten Sleman ini punya interior yang elegan banget, punya kombinasi color branding mereka yang unik dengan interior steel jadi berkesan premium. 1st Floor. Kalian bakal disambut bar dengan coffee machine unik dan ada satu sharing table. 2nd Floor. Ini cocok buat kerja, nugas atau produktif lainnya ada juga smoking room. 3rd Floor. Nah cocok buat nongkrong bareng temen, diskusi rame-rame, atau sekedar ngopi sore. Soalnya punya view yang bagus', NULL, NULL),
(19, 1, 'Pengilon Yogyakarta', 'Jl. Shinta No.8, Karang Moko, Sariharjo, Kec. Ngaglik, Kabupaten Sleman', '07856746', 'Pengilon merupakan kafe estetik di Jl. Shinta No.8, Karang Moko, Sariharjo, Kec. Ngaglik, Kabupaten Sleman. Sebagai pionir yang menyajikan menu berbahan sayur & buah segar pilihan, Pengilon ini recomended buat jadi destinasi yang harus kamu coba Fren. Menu-menu balanced eating juga variatif disini dari mulai appetizer, main course, pilihan plant-based, finger food, kids menu sampai ke desserts dengan harga terjangkau. Tentunya, semua menu disini bercita rasa khas dan tetap memiliki gizi berimbang. Ditambah suasana yang hijau, asri, dengan konsep ruang semi terbuka jadi makin lengkap. Oiya Fren, ada menu Afghani Beef & Stir Fry Thai Chicken dispecial ramadhan ini dan juga menu-menu lainnya. Buat kamu yang pengen buka bersama, gathering, arisan, reunian, intimate outdoor wedding sampai ruang workshop komunitas disini juga bisa banget.', NULL, NULL),
(20, 1, 'Ethikopia CoffeeBay', 'Karang Geneng, Sendangadi, Kec. Mlati, Kabupaten Sleman', '078566', 'Ethikopia Coffeebay berada di daerah Yogyakarta Utara, tepatnya di Karang Geneng, Sendangadi, Kec. Mlati, Kabupaten Sleman. Tempat ngopi ini merupakan tempat ngopi yang friendly and cozy banget buat kalian yang mau menghabiskan waktu untuk mengobrol, mengerjakan tugas, kerja atau sekedar minum kopi yang tidak terbatas waktu, karena kedai kopi ini buka 24 jam.   Kedai kopi ini memiliki fasilitas yang membuat para pengunjung nya betah berlama-lama disini. Fasilitas yang ditawarkan oleh kedai kopi yang memiliki dua lantai ini terdapat ruangan ac untuk smoking, dan ruangan ac untuk non-smoking, toilet yang bersih, dan musala yang dilengkapi dengan alat shalat. Ethikopia CoffeeBay juga menyediakan fasilitas wifi gratis dan sepuasnya untuk para Jajaners yang ingin berselancar di dunia maya. Jadi, tempat ini bisa banget untuk kalian yang ingin mengerjakan tugas ataupun bekerja yang memerlukan internet cepat dan berdurasi lama.    Untuk menu kopi yang ditawarkan di Ethikopia CoffeeBay ini memiliki beberapa menu recommended seperti paket nugas, hasel, con hielo, jena, dan buna. Jika Jajaners penasaran dengan rasa minuman kopi yang berada di kedai kopi ini.', NULL, NULL),
(21, 1, 'CW Coffee & Eatery', 'Jl. Seturan Raya, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman', '0658674', 'CW Coffee & Eatery, yang akhirnya buka cabang di Jogja, tepatnya berada di Jl. Seturan Raya, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman. Cafe yang sering manggil customernya sebagai #sahabatsejatiku ini punya outdoor taman dan sungai yang isinya ikan-ikan kecil. Kedengeran gemercik air yang nyaman dan menenangkan. Indoornya juga ngga kalah cozy buat WFC. Punya AC dingin, spot duduk yang elegan, speed internet kenceng dan fasilitas printer yang bisa kalian pakai. Tempat ini luas dan lega, ideal untuk nugas atau bekerja. Soal menu variasinya juga banyak, dengan harga yang masih affordable ini beberapa rekomendasi kami yang bisa kamu coba. Kafe ini juga buka 24 jam sehingga sangat cocok untuk bersantai kapan saja.', NULL, NULL),
(22, 1, 'Wohng Coffee', 'Jl. Degolan, Legolan, Umbulmartani, Kec. Ngemplak, Kabupaten Sleman', '078556756', 'Wohng Coffee merupakan kafe di daerah Jakal atas nggak jauh dari UII, tepatnya di Sampai di Jl. Degolan, Legolan, Umbulmartani, Kec. Ngemplak, Kabupaten Sleman. Tempat ini berasa banget perbedaan dari segi konsep jika dibandingkan dengan coffee shop lainnya, nampaknya wohng ingin setiap orang yang lewat langsung terkesan dengan taman rumput hijau di depan dan beberapa bench beton yang ditata asimetris yang justru menarik. Lanjut ke bagian dalam ada unsur air atau kolam dengan ikan-ikan kecil menyambut kami dengan suara gemercik airnya yang asik di depan pintu masuk, mungkin bagi sebagian orang terkesan hal yang biasa tapi bagi kami penambahan unsur air sangat menarik dan menjadikan suasana lebih hidup. Areanya ada lantai 1 dengan beberapa meja ergonomis yang cocok buat fokus produktif dan ada area lantai 2 dengan tempat duduk yang lebih santai, ada beans bag, sofa bahkan ada hammock yang bisa kamu pakai buat nyantai. Nggak ketinggalan area outdoornya di depan juga asik, mungkin lebih cocok buat nyore sambil duduk-duduk santai di rumput hijau. Buat anak-anak UII atau temen-temen yang rumahnya di area Jakal atas nambah lagi referensi coffee shop asik yang bisa kamu coba!', NULL, NULL),
(23, 1, 'XYZ Coffee & Collabs', 'Jl.Flamboyan, Deresan Jl. Affandi No.90, Karang Gayam, Caturtunggal, Kec. Depok, Kabupaten Sleman', '07854645', 'XYZ Coffee, nugas dan kerja nyaman tanpa gangguan yang berada di Jl.Flamboyan, Deresan Jl. Affandi No.90, Karang Gayam, Caturtunggal, Kec. Depok, Kabupaten Sleman. Dari depan hanya terdapat tempat duduk berlevel dan beberapa kursi meja portable, di bagian dalam tempat ini sepertinya memang menawarkan kenyamanan untuk mereka yang pengen nugas dan produktif, semua tempat duduk di dalam sangat ergonomis, nyaman dengan alas dan sandaran yang empuk dan kursi yang dipilih adalah tipe dengan armrest, sehingga memang nyaman untuk duduk bahkan dalam waktu yang cukup lama. Mereka juga menyediakan sofa yang sepertinya jadi tempat duduk favorit customer di tempat ini. Selain kenyamanannya, penataan yang benar-benar dimaksimalkan, ada yang unik di bagian tempat duduk sebelah kiri, mereka mengaplikasikan semacam sekat yang bisa dibuka tutup sesuai dengan kebutuhan, kamu juga bisa menggambari atau menuliskan kata-kata di situ. Untuk menu cukup bervariatif mulai dari minuman, snack, rice box hingga dessert bowl ada di sini dengan harga yang terjangkau.', NULL, NULL),
(24, 1, 'Temata Coffee & Patisserie', 'Jl. Magelang No.Km. 11, Dukuh, Tridadi, Kec. Sleman, Kabupaten Sleman', '07856476', 'Temata coffee & patisserie yang berada di Jl. Magelang No.Km. 11, Dukuh, Tridadi, Kec. Sleman, Kabupaten Sleman, tempat ini nyaman dan proper buat sekedar nongkrong, nugas, kerja atau meeting sekalipun. Ternyata tempatnya jadi satu sama toko furniture yang kalau mau belanja atau liat-liat furniture. Untuk areanya ada indoor dan outdoor yang nyaman buat berlama-lama, no worry kalau misal kamu pengen ngemil aja ada pastry dan snack lain yg bisa kamu coba atau makan berat karena semua ada di sini, selain itu ada fasilitas musholla yg cukup luas, bersih dan nyaman di dekat area parkir sepeda motor. Menu-menunya juga proper ya karena emang tempat ini satu managemen sama Swasana by Temata yang ada di Jalan Kaliurang. Salah satu best sellernya dan menu baru mereka yaitu cromboloni sandwich.', NULL, NULL),
(25, 1, 'Bolivar Coffee', 'Jl. Sepakbola No.03, Ngropoh, Condongcatur, Kec. Depok, Kabupaten Sleman', '04563462', 'Bolivar, fresh coffee shop concept di sekitaran UPN, tepatnya berada di Jl. Sepakbola No.03, Ngropoh, Condongcatur, Kec. Depok, Kabupaten Sleman. Berlokasi di Jalan Sepakbola atau lebih tepatnya di sekitar area belakang UPN agak kebarat sedikit menjadikan Bolivar pilihan terbaru untuk ngopi di daerah ini, letaknya yang tidak berada di pinggir jalan raya menghdirkan suasana tenang yang tidak berisik dari suara kendaraan bermotor, tempatnya luas dan banyaknya pilihan tempat duduk yang sangat disesuaikan dengan kebutuhan masing-masing customer yang datang. Bolivar terbagi menjadi 2 main area yaitu indoor dan outdoor, kami suka kursi dengan aksen rotan di indoornya yang nyaman untuk duduk, pengaplikasian cermin besar dengan bentuk yang estetik mempercantik ruangan. Pilihan tempat duduk yang beragam di area outdoor membuat kami tidak gampang bosan dengan tempat ini, selain tempat duduk yang beragam area outdoornya (atau mungkin lebih tepatnya semi indoor) luas sehingga cocok banget buat yang biasa dateng rombongan bareng temen-temen. Oh iya satu lagi yang membuat kami suka, ada beberapa ceiling fan di outdoornya! Jadi nggak panas meskipun di outdoor. Untuk menunya ternyata cukup lengkap nggak cuma minuman aja tapi juga ada light meals hingga heavy meals yang semuanya patut kalian coba. Kami nyobain nachosnya yang jadi favorit kami, mocktailnya soft dan seger, es kopi susunya creamy meskipun sudah agak watery sekalipun.', NULL, NULL),
(26, 1, 'Rekaya Artisan Coffee & Eatery', 'Jl. Sukun Raya No.2, Modalan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul', '0856644', 'Coffeeshop yang punya beragam menu atau makanan rumahan (tradisional), berlokasi di Jl. Sukun Raya No.2, Modalan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul. Ada banyak menu minuman mulai dari Specialty Coffee, Iced Latte, Milk Base, Mocktail, Flavored Tea dan buat kamu penikmat racikan oat milk disini juga ada. Untuk makanan ada varian Rice Bowl, Bento, Snack dan Tradisional Menu (Gado-gado, Pecel Telur, Mie Aceh, Nasgor Aceh, Rawon dan Sop Ayam). Konsep tempatnya kombinasi homey & modern, pelayanan bagus dan layout tempat duduk yang rapi. First impression Rekaya Artisan Coffee & Eatery ini seperti coffeeshop yang fresh, homey dengan perpaduan modern gitu. Cocok buat kamu yang mau nongkrong sama temen, keluarga dll.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_10_031829_create_madmins_table', 1),
(6, '2024_06_10_040630_create_mdatakaves_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `madmins`
--
ALTER TABLE `madmins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `mdatakaves`
--
ALTER TABLE `mdatakaves`
  ADD PRIMARY KEY (`id_kafe`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `madmins`
--
ALTER TABLE `madmins`
  MODIFY `id_admin` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mdatakaves`
--
ALTER TABLE `mdatakaves`
  MODIFY `id_kafe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mdatakaves`
--
ALTER TABLE `mdatakaves`
  ADD CONSTRAINT `mdatakaves_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `madmins` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
