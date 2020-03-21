/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50719
Source Host           : localhost:3307
Source Database       : dbherbal-life

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-03-21 16:26:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('3', '2020_03_06_171713_create_tbpenyakitx_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_03_06_180336_create_tbtumbuhanobatx_table', '1');
INSERT INTO `migrations` VALUES ('5', '2020_03_06_185315_create_tb_tumbuhanobat_table', '1');
INSERT INTO `migrations` VALUES ('6', '2020_03_06_185635_create_tb_penyakit_table', '1');

-- ----------------------------
-- Table structure for `tb_penyakit`
-- ----------------------------
DROP TABLE IF EXISTS `tb_penyakit`;
CREATE TABLE `tb_penyakit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_penyakit` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyakit` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan_obat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tutorial` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_penyakit_kode_penyakit_unique` (`kode_penyakit`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_penyakit
-- ----------------------------
INSERT INTO `tb_penyakit` VALUES ('1', null, null, '35', 'Batuk Pada Anak', 'Satu sendok teh penuh adas, sepotong kulit batang pulasari berukurn 4 cm, dan satu siung bawang merah dikupas', 'Semua bahan dicuci dan dilumatkan. Beri satu gelas air dan sepotong gula batu, lalu masak sampai airnya menjadi setengah gelas. Separuh diminum sebelum sarapan dan separuh lagi sebelum tidur. Ulangi beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('2', null, null, '36', 'Sakit Perut', 'Tiga sendok teh adas, lima pucuk daun jambu klutuk, dan 10 cm kulit batang pulasari.', 'Semua bahan dicuci dan dimemarkan. Rebus dengan dua gelas air sampai tinggal satu gelas, lalu saring. Airnya separuh diminum pagi dan separuh lagi diminum malam.');
INSERT INTO `tb_penyakit` VALUES ('3', null, null, '37', 'Diare', 'Tiga sendok teh adas, lima pucuk daun jambu klutuk, dan 10 cm kulit batang pulasari.', 'Semua bahan dicuci dan dimemarkan. Rebus dengan dua gelas air sampai tinggal satu gelas, lalu saring. Airnya separuh diminum pagi dan separuh lagi diminum malam.');
INSERT INTO `tb_penyakit` VALUES ('4', null, null, '38', 'Mual', 'Tiga sendok teh adas, lima pucuk daun jambu klutuk, dan 10 cm kulit batang pulasari.', 'Semua bahan dicuci dan dimemarkan. Rebus dengan dua gelas air sampai tinggal satu gelas, lalu saring. Airnya separuh diminum pagi dan separuh lagi diminum malam.');
INSERT INTO `tb_penyakit` VALUES ('5', null, null, '39', 'Kembung', 'Tiga sendok teh adas, lima pucuk daun jambu klutuk, dan 10 cm kulit batang pulasari.', 'Semua bahan dicuci dan dimemarkan. Rebus dengan dua gelas air sampai tinggal satu gelas, lalu saring. Airnya separuh diminum pagi dan separuh lagi diminum malam.');
INSERT INTO `tb_penyakit` VALUES ('6', null, null, '40', 'Wasir', 'Tiga sendok teh penuh adas, satu siung bawang merah dikupas, satu cangkir daun patikan cina, setengah cangkir daun meniran, dan satu sendok teh penuh jintan putih.', 'Semua bahan dicuci dan direbus dengan satu liter air sampai air tinggal setengah. Agar rasa lebih enak, dapat diberi gula batu. Ramuan disaring dan diminum 4-5 kali sehari. Ulangi selama beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('7', null, null, '41', 'Biduran', 'Dua sendok teh penuh adas, kunyit berukuran 7 cm dikupas, dan dua siung bawang merah dikupas.', 'Semua bahan dicuci, dilumatkan, dan diseduh dengan satu setengah gelas air. Air seduhan dibiarkan sebentar dan disaring dengan kain. Ramuan ini diminum 3 kali sehari sebanyak setengah gelas. Ulangi dalam beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('8', null, null, '42', 'Demam', 'Dua sendok teh penuh adas, 4 cm kulit batang pulasari, dan dua sendok makan madu.', 'Adas dan kulit batang pulasari dicuci, dimemarkan, dan direbus dengan satu gelas air sampai air tinggal setengah gelas, lalu disaring. Air rebusan tadi ditambah madu dan diminum sekaligus.');
INSERT INTO `tb_penyakit` VALUES ('9', null, null, '43', 'Step', 'Empat sendok teh adas, 6 cm kulit batang pulasari, tujuh butir biji anyang-anyang atau rejasa.', 'Semua bahan dicuci bersih, direbus dengan dua gelas air sampai air tinggal satu gelas, dan disaring. Ramuan diminum satu hari sebanyak satu gelas.');
INSERT INTO `tb_penyakit` VALUES ('10', null, null, '44', 'Kencing Batu', '100 gr alang-alang, setengah genggam daun meniran, dan setengah genggam daun kumis kucing.', 'Bahan direbus dengn 5 gelas air sampai air tinggal setengah, lalu disaring setelah dingin. Ramuan diminum 3 kali sehari, masing-masing satu gelas sampai batu keluar.');
INSERT INTO `tb_penyakit` VALUES ('11', null, null, '45', 'Radang Paru-paru', '500 gr akar alang-alang, 5 helai daun sembung, 10 kuntum bunga melati kering, dan sedikit garam.', 'Bahan direbus dengan 3 gelas air sampai air tinggal setengah, lalu disaring. Ramuan diminum 2 kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('12', null, null, '46', 'Asma', '100 gr akar alang-alang, 25 gr kencur, dan 25 gr daun sirih.', 'Bahan direbus dengan 1 liter air sampai air tinggal setengah, disaring, dan diberi satu sendok madu dan satu sendok teh air jeruk nipis. Ramuan diminum sekaligus sebelum tidur.');
INSERT INTO `tb_penyakit` VALUES ('13', null, null, '47', 'Mimisan', '200 gr akar alang-alang', 'Bahan dicuci bersih dan direbus dengan 6 gelas air sampai air tinggal 2 gelas. Disaring setelah dingin. Ramuan diminum 3 kali sehari. Ramuan ini juga dapat digunakan untuk hepatitis.');
INSERT INTO `tb_penyakit` VALUES ('14', null, null, '48', 'Hepatitis', '200 gr akar alang-alang', 'Bahan dicuci bersih dan direbus dengan 6 gelas air sampai air tinggal 2 gelas. Disaring setelah dingin. Ramuan diminum 3 kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('15', null, null, '49', 'Prostat', '500 gr akar alang-alang', 'Bahan direbus dengan 6 gelas sampai air tinggal setengah gelas. Setelah dingin, ramuan diminum 3 kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('16', null, null, '50', 'Keputihan', '500 gr akar alang-alang, dua tangkai daun pepaya, 5 gr pulasari.', 'Bahan direbus dengan dua gelas air sampai air tinggal setengah. Ramaun disaring dan diminum 2 kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('17', null, null, '51', 'Diabetes Melitus', 'Satu Buah apel berukuran sedang.', 'Buah apel dibelah menjadi 4 bagian dan direbus dengan 3-4 gelas air sampai mendidih dan air tinggal 2 gelas. Ramuan ini diminum pagi dan sore. Hal ini harus dilakukan secara rutin.');
INSERT INTO `tb_penyakit` VALUES ('18', null, null, '52', 'Bisul', 'Asam kawak sebesar telur puyuh, 5 iris temulawak dan gula aren.', 'Asam kawak direndam dalam satu gelas air hingga mengembang, lalu tambahkan irisan temulawak yang telah dicuci sebelum diiris dan gula aren sebagai pemanis. Semua bahan dididihkan hingga air tinggal setengah. Ramuan ini diminum satu kali sehari sampai sembuh. Ramuan asam jawa juga dapat ditempelkan langsung pada bisul. Asam kawak sebesar telur puyuh dicampur dan dilumatkan dengan sedikit garam dan sedikit minyak, kemudian ditempelkan pada bisul.');
INSERT INTO `tb_penyakit` VALUES ('19', null, null, '53', 'Jerawat', 'Asam kawak sebesar telur puyuh, 12 helai daun sambiloto, 10 iris temulawak, 5 cm kencur, 1 sendok teh adas, dan 10 helai daun jintan.', 'Semua bahan dicuci bersih dan dilumatkan dengan asam kawak. Kemudian, ditambahkan satu setengah gelas air. Ramuan disaring dan diperas dengan kain flanel. Ramuan ini diminum tiga kali sehari. Untuk obat luar, asam jawa diberi air bersih, diremas-remas, dan disaring. Air perasan dipakai untuk mencuci muka menjelang tidur malam.');
INSERT INTO `tb_penyakit` VALUES ('20', null, null, '54', 'Gatal berupa bintik-bintik merah bergelembung air', 'Asam kawak sebesar telur puyuh, 8 iris temulawak, dan gula aren.', 'Irisan temulawak yang telah dicuci sebelum diiris dan gula aren direbus dengan satu gelas air sampai air tinggal setengah. Selanjutnya, asam kawak dimasukkan dan diaduk-aduk sampai sari asam keluar. Air rebusan disaring. Ramuan ini diminum satu kali sehari sampai sembuh.');
INSERT INTO `tb_penyakit` VALUES ('21', null, null, '55', 'Gatal pada bekas luka yang sudah kering', 'Asam Kawak', 'Asam kawak dilembabkan sengan sedikit air bersih yang sudah matang, lalu digosokkan pada bekas luka yang gatal.');
INSERT INTO `tb_penyakit` VALUES ('22', null, null, '57', 'Nyeri haid', 'Asam kawak sebesar telur puyuh, 10 iris temulawak yang telah dicuci sebelum diiris, dan gula aren.', 'Irisan temulawak dan gula aren direbus dengan satu gelas air sampai air tinggal setengah. Selanjutnya asam kawak dimasukkan dan diaduk-aduk sampai asam mengembang. Air rebusan lalu disaring. Ramuan ini diminum satu kali sehari selama sehari sebelum haid.');
INSERT INTO `tb_penyakit` VALUES ('23', null, null, '60', 'Haid bau anyir', 'Asam kawak sebesar telur puyuh, 10 iris temulawak yang telah dicuci sebelum diiris, dan gula aren.', 'Asam kawak, irisan temulawak, dan gula aren diseduh dengan segelas air, dan diaduk rata. Setelah dingin, ramuan disaring. Ramuan diminum satu kali sehari selama haid.');
INSERT INTO `tb_penyakit` VALUES ('24', null, null, '61', 'Batuk Kering', 'Dua gelas daun asam, dua gelas daun saga, dan 5 cm kayu manis cina.', 'Semua bahan dicuci dan direbus dengan 3 gelas air hingga air menjadi 2 gelas. Ramuan diminum siang hari sebagai pengganti air minum biasa. Ramuan ini diminum selama beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('25', null, null, '62', 'Sariawan', 'Satu cangkir daun asam yang muda, 5 cm kunyit, kayu manis cina, dan gula aren.', 'Daun asam, kunyit, dan kayu manis cina dicuci bersih dan direbus dengan 4 gelas air sampai air tinggal 2 gelas. Gula aren ditambahkan pada saat merebus untuk memperbaiki rasa. Ramuan disaring dan diminum pagi dan sore. Ramuan ini diminum selama beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('26', null, null, '63', 'Campak', 'Satu gelas daun asam, tiga rimpang kunyit segar, garam, dan gula aren secukupnya.', 'Kunyit dicuci dan diiris. Daun asam, irisan kunyit, garam, dan gula aren direbus dengan dua gelas air sampai tinggal setengah. Ramuan diminum pagi dan sore.');
INSERT INTO `tb_penyakit` VALUES ('27', null, null, '64', 'Borok', 'Biji asam.', 'Biji asam dicuci, dikupas, dilumatkan, dan ditempelkan pada derah yang mengalami borok.');
INSERT INTO `tb_penyakit` VALUES ('28', null, null, '65', 'Jantung Lemah', 'Satu rimpang umbi bangle.', 'Bangle yang telah diparut ditambah dengan 1 gelas air masak, lalu diperas atau disaring. Ramuan diminum sekaligus secara teratur setiap sore.');
INSERT INTO `tb_penyakit` VALUES ('29', null, null, '66', 'Gangguan Saraf', 'Rimpang bangle sebesar dua kali ibu jari.', 'Bangle yang telah diparut ditambah dengan satu gelas air masak, lalu diperas atau disaring. Ramuan diminum sekaligus secara teratur setiap sore.');
INSERT INTO `tb_penyakit` VALUES ('30', null, null, '67', 'Rematik', 'Bangle, lempuyang, dan cabai.', 'Ketiga bahan ditumbuk halus dan ditambah dengan sedikit air. Ramuan dipakai sebagai bedak pada bagian tubuh yang rematik setiap malam sebelum tidur.');
INSERT INTO `tb_penyakit` VALUES ('31', null, null, '68', 'Demam Pada Anak', 'Dua atau tiga buah bawang merah, dua sendok makan minyak goreng, setengah sendok makan minyak kayu putih, seiris jeruk nipis atau sedikit air asam jawa.', 'Bawang merah dikupas, dicuci, dan diparut. Parutan bawang merah dicampur dengan semua bahan lainnya dan digosokkan pada ketiak, punggung dan perut. Jika panas anak tinggi, ramuan digosokkan juga pada kepala, semua lipatan badan, telapak kaki, dan bagian-bagian badan yang terasa panas bila dipegang.');
INSERT INTO `tb_penyakit` VALUES ('32', null, null, '69', 'Masuk Angin', 'Lima buah bawang merah dan satu sendok makan larutan kapur sirih(Kapur sirih seujung kelingking).', 'Bawang merah dikupas, dicuci, dan diparut. Kemudian ditammbahkan larutan kapur sirih. Semua bahan digosokkan ke perut, punggung, tengkuk, dan kaki.');
INSERT INTO `tb_penyakit` VALUES ('33', null, null, '70', 'Disentri', 'Tiga buah bawang merah, setengah cangkir daun patikan cina dan 5 cm pulasari.', 'Bawang merah dikupas. Semua bahan dicuci, diiris, dimasukkan kedalam mangkuk, dan dikukus kira-kira satu jam. Ramuan yang mengandung cairan yang terkumpul di mangkuk disaring dengan kain. Sari yang diperoleh dapat digunakan untuk dua kali minum. Ulangi ramuan sampai sembuh.');
INSERT INTO `tb_penyakit` VALUES ('34', null, null, '71', 'Hipertensi', 'Tiga buah bawang merah.', 'Bawang merah dikupas dan dicuci. Bawang merah dapat dimakan setelah diiris kasar atau langsung dimakan.');
INSERT INTO `tb_penyakit` VALUES ('35', null, null, '72', 'Diabetes', '3 buah bawang merah, sepuluh buncis, dan sepuluh daun salam.', 'Semua bahan dicuci, direbus dengan setengah gelas air, dan disaring. Air sari diminum satu kali sehari. Kadar gula darah sebaiknya diperiksa 2 minggu kemudian.');
INSERT INTO `tb_penyakit` VALUES ('36', null, null, '73', 'Kutu Air', '3 buah bawang merah dan 1 sendok makan minyak kelapa.', 'Bawang merah dikupas, dicuci, diparut, dan dicampur dengan 1 sendok makan minyak kelapa, lalu dipanaskan. Setelah menjadi hangat, ramuan dioleskan di sela-sela jari yang gatal. Kaki hendaknya dicuci dulu dengan air hangat dan dikeringkan. Kaki harus selalu dalam keadaan kering dan hindari tempat yang becek.');
INSERT INTO `tb_penyakit` VALUES ('37', null, null, '74', 'Sakit Kepala', 'Bawang putih.', 'Umbi bawang putih dilumatkan dan diborahkan pada dahi.');
INSERT INTO `tb_penyakit` VALUES ('38', null, null, '75', 'Flu', 'Bawang putih, bawang merah, dan jahe dengan takaran yang sama.', 'Semua bahan dikupas, dicuci, dan diseduh. Selama 15 menit. Jahe disisihkan. Bawang merah dan bawang putih dimakan. Air seduhan diminum.');
INSERT INTO `tb_penyakit` VALUES ('39', null, null, '76', 'Bronkitis', '30 g bawang putih dan gula batu.', 'Bawang putih dikupas, dicuci, dan dilumatkan. Bahan dicampur dengan gula batu dan segelas air matang, lalu didiamkan selama 5-6 jam. Minum satu sendok makan penuh setiap hari selama beberapa hari.');
INSERT INTO `tb_penyakit` VALUES ('40', null, null, '77', 'Cacingan', '3 siung bawang putih.', 'Bawang putih dikupas, dicuci, dikunyah sampai halus, dan ditelan bersama air hangat. Lakukan satu sampai dua kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('41', null, null, '78', 'Migrain', 'Dua siung bawang putih.', 'Bawang putih dikupas, dicuci, dikunyah secara perlahan sampai lumat, dan ditelan. Setelah itu, segera minum air hangat. Lakukan hal ini dua kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('42', null, null, '79', 'Maag', 'Bawang putih tunggal.', 'Bawang putih dikupas, dicuci, dan dikunyah. Lakukan hal ini tiga kali sehari.');
INSERT INTO `tb_penyakit` VALUES ('43', null, null, '80', 'Cantengan', 'Dua siung bawang putih, dua buah kemiri dan garam.', 'Bawang putih dikupas, dicuci, dan dilumatkan bersama dengan kemiri. Garam dapur ditambahkan secukupnya. Ramuan ditempelkan pada bagian kuku yang bengkak dan dibalut. Ganti balutan dua kali sehari pada pagi dan sore.');
INSERT INTO `tb_penyakit` VALUES ('44', null, null, '81', 'Osteoporosis', '2 ons bayam dan 200 ml susu kacang kedelai.', '2 ons bayam dicelupkan ke dalam air, didihkan sebentar, dan diblender dengan 200 ml susu kacang kedelai lalu diminum.');

-- ----------------------------
-- Table structure for `tb_tumbuhanobat`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tumbuhanobat`;
CREATE TABLE `tb_tumbuhanobat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_tumbuhan` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tumbuhan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegunaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_tumbuhanobat_kode_tumbuhan_unique` (`kode_tumbuhan`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_tumbuhanobat
-- ----------------------------
INSERT INTO `tb_tumbuhanobat` VALUES ('1', null, null, '1', 'Adas', 'Adas mengandung minyak astiri, seperti limonia yang berbau harum, dan flavonoid. Kandungan flavonoid adas yang berkhasiat menyembuhkan radang. Kandungan minyak astiri dapat membunuh mikroba. Kandungan adas hitam juga berkhasiat karminatif (menghilangkan masuk angin) dan diuretik (melancarkan buang air kecil).', 'images/obat-herbal/adas.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('2', null, null, '2', 'Alang-alang', 'Alang-alang mengandung kalium yang tinggi yang berkhasiat untuk menurunkan panas dan melancarkan buang air kecil. Selain itu dapat digunakan untuk menghentikan pendarahan.', 'images/obat-herbal/alang-alang.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('3', null, null, '3', 'Apel', 'Apel mempunyai kandungan senyawa pektin. Selain itu, buah apel megandung zat-zat gizi, antara lain kalori sebesar 58 kalori, hidrat arang 14,9 gr, lemak 0,4 gr, protein 0,3 gr, kalsium 6 miligram, fosfor 6 miligram, dan air 84,1% dalam setiap 100 gr.', 'images/obat-herbal/apel.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('4', null, null, '4', 'Asam Jawa', 'Asam jawa mengandung tanin, saponin, seskuiterpen, alkaloid, dan flobatamin.', 'images/obat-herbal/asam-jawa.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('5', null, null, '5', 'Bangle', 'Senyawa kimia yang terkandung umbi rimpang bangle terutama adalah gom, mineral, albuminoid, lemak, getah pahit, sineol, pinen, dan seskuiterpen.', 'images/obat-herbal/bangle.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('6', null, null, '6', 'Bawang Merah', 'Bawang merah mengandung flavonglikosida, saponin dan minyak astirin. Kandungan flavonglikosida berkhasiat anti radang dan antibakteri, sedangkan kandungan saponin berkhasiat ekspetoran(mengencerkan dahak). Bawang merah juga memiliki sejumlah zat lain yang berkhasiat antipertik (menurunkan panas), karminatif (menghangatkan dan memudahkan pengeluaran angin dari perut), diuretik (melancarkan buang air kecil), mencega penggumpalan darah, serta menurunkan kolestrol dan kadar gula dalam darah. Menurut penelitian terakhir bawang merah juga dapat mencegah kanker karena kandungan sulfurnya.', 'images/obat-herbal/bawang-merah.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('7', null, null, '7', 'Bayam', 'Daun bayam terkenal sebagai sayuran sumber zat besi. Selain itu, bayam mengandung antioksidan, seperti karotenoid, polifenol, dan flavonoid. Bayam mengandung vitamin A dan C dan mineral kalsium. Setiap 100 gr bayam mengandung 36 kalori.', 'images/obat-herbal/bayam.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('8', null, null, '8', 'Belimbing Manis', 'Buah belimbing tinggi serat sehingga mengurangi penyerapan lemak, menurunkan kadar kolestrol, dan mencegah tekanan darah tinggi. Buah belimbing juga dapat memperlancar pencernaan. Analisis fitokimia menunjukan adanya kandungan saponin, tanin, alkaloid, dan flavonoid. Kandungan vitamin C tinggi sehingga baik untuk mencegah kanker. Kandungan air yang tinggi berkhasiat menurunkan panas, melancarkan buan air kecil, dan meluruhkan dahak.', 'images/obat-herbal/belimbing-manis.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('9', null, null, '9', 'Beliming Wuluh', 'Belimbing wuluh berkhasiat sebagai antiradang, karena mengandung flavonoid. Skrining fitokimia awal menunjukan adanya kandungan flavonoid, saponin dan triterpenoid. Kandungan kalium berkhasiat diuretik (melancarkan buang air kecil) sehingga dapat menurunkan tekanan darah.', 'images/obat-herbal/belimbing-wuluh.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('10', null, null, '10', 'Beluntas', 'Beluntas mengandung alkaloid dan minyak atsiri. Kandungan beluntas bersifat mendinginkan sehingga meluruhkan keringat dan menurunkan suhu tubuh. Selain itu, juga bisa dimanfaatkan untuk menambah nafsu makan pada anak.', 'images/obat-herbal/beluntas.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('11', null, null, '11', 'Brokoli', 'Brokoli merupakan sumber vitamin (A, B, dan C) dan beberapa mineral (Kalsium, kalium, dan zat besi). Setiap 100 gr brokoli mengandung 101 kalori.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('12', null, null, '12', 'Brotowali', 'Brotowali mengandung zat pahit pikroretin dan alkaloid berberin. Zat pahit pikroretin merangsang kerja susunan saraf sehingga alat pernapasan berjalan dengan baik dan menggiatkan pertukaran zat sehingga menurunkan panas. Kandungan alkaloid berberin berguna untuk membunuh bakteri pada luka. Selain itu, brotowali juga bermanfaat untuk menambah nafsu makan dan menurunkan kadar gula.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('13', null, null, '13', 'Buncis', 'Tanaman buncis merupakan sumber vitamin (A, C, dan B kompleks) dan mineral (Fe, K, dan P). Setiap 100 gr buncis mengandung 35 kalori.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('14', null, null, '14', 'Cabai Jawa', 'Buah cabai jawa mengandung minyak atsiri, damar piperin, dan piperidin. Dan berguna untuk stimulans', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('15', null, null, '15', 'Cabai Merah', 'Tanaman cabai merah mengandung senyawa saponin, flavonoid, dan polifenol. Cabai banyak mengandung vitamin (A, C, dan B, khusunya niasin) dan mineral (P, Fe, dan K). Selain itu, cabai mengandung kapsaisinoid (Kapsaisin), zat warna kapsantin, dan karotenoid.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('16', null, null, '16', 'Cabai Rawit', 'Tanaman cabai rawit mengandung saponin, flavonoid, dan tanin. Buah cabai rawit mengandung kapsaisin, minyak atsiri, resin dan vitamin C.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('17', null, null, '17', 'Cengkeh', 'Kuntum bunga cengkeh mengandung minyak atsiri dan senyawa kimia seperti eugenin, asam oleanolat, asam galotanat, dan vanilin. cengkeh dianggap berkhasiat menghangatkan, menghilangkan rasa sakit setempat, membantu mengeluarkan angin, mengharumkan, antibakteri, dan menghilangkan kejang perut. Menurut WHO, cengkeh termasuk tanaman obat yang paling banyak dipakai di dunia.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('18', null, null, '18', 'Daun Dewa', 'Daun dewa mengandung senyawa flavonoid, saponin, dan minyak atsiri. Tanaman ini diindikasiakn untuk menurunkan kadar kolestrol darah, menghilangkan rasa sakit, dan antiinflamasi. Kandungan minyak atsirinya dapat merangsang sirkulasi darah. Minyak atsiri dan flavonoid kemungkinan juga bersifat atsiri.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('19', null, null, '19', 'Daun Jintan', 'Daun jintan mengandung minyak atsiri. Selain memberinya khasiat, minyak atsiri membuat daun jintan terasa pedas. Daun jintan juga dapat digunakan untuk mengurangi nyeri dan membersihkan luka.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('20', null, null, '20', 'Daun Singkong', 'Daun singkong banyak mengandung protein, vitamin (A, B, dan C), mineral (Fe dan Ca), dan serat. Setiap 100 gr daun singkong mengandung 73 kalori.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('21', null, null, '21', 'Delima Putih', 'Kulit batang dan akar mengandung alkaloid isopeletierin, yang dapat membunuh cacing pita dan bakteri. Jus delima dapat digunakan untuk mengatasi dispepsia karena mengandung asam sitrat dan natrium sitrat. Kandungan tanin pada ekstrak kulit, daun, buah, dan kulit buahyang belum masak dapat digunakan sebagaiastringen untuk menghentikandiare, disentri, dan perdarahan.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('22', null, null, '22', 'Handeuleum', 'Handeuleum mengandung lendir yang bermanfaat melunakkan kotoran sehingga mencegah sembelit. Selain itu, handeuleum juga mengandung zat tanin, alkaloid, sitosterol, dan glikosida. Tanaman ini juga bersifat mendinginkan.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('23', null, null, '23', 'Iler', 'Daun iler mengandung minyak atsiri, yang mengandung karvakrol (antibakteri) dan eugenol (mengurangi nyeri). Selain itu, daun iler mengandung etil salisilat (mencegah iritasi) dan sedikit lendir.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('24', null, null, '24', 'Jagung', 'Jagung berkhasiat sebagai diuretik (melancarkan buang air kecil) karena kandungan kaliumnya yang tinggi, terutama pada rambut dan tongkol muda. Kandungan tiamin jagung dapat mengeringkan luka, misalnya luka pada cacar air. Jagung juga mengandung fosfor yang bermanfaat untuk tulang dan gigi.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('25', null, null, '25', 'Jahe', 'Jahe memiliki rasa pedas sehingga memberikan rasa hangat pada tubuh dan mengeluarkan keringat. Jahe mengandung minyak atsiri, yang mengandung zingiberen, zingiberol, felandren, dll. Kandungan minyak atsiri bermanfaat untuk menghilangkan rasa nyeri, antiinflamasi, dan antibakteri.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('26', null, null, '26', 'Jambu Biji', 'Daun jambu biji mengandung tanin yang bersifat astringen sehingga bermanfaat sebagai antidiare dan mengurangi kontraksi usus. Daun juga mengandung minyak atsiri, flavonoid, asam guayavolat, asam guavanoat, dan guajaverin yang bersifat antibakteri. Buah jambu biji mengandung banyak vitamin C sehingga membantu penyembuhan penyakit. Kandungan pektin dapat menurukan kolestrol.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('27', null, null, '27', 'Jamur Kuping', 'Setiap 100 gr jamur kuping kering mengandung energi 331 kal dan 1404 kj; air 14,9 gr; protein 16,0 g; lemak 0,9 g; karbohidrat 64,6 g; mineral 3,8 g; kalsium 51 mg; fosfor 223 mg; dan zat besi 6,7 mg.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('28', null, null, '28', 'Jamur Kayu', 'Tanaman jamur mengandung protein, vitamin B, mineral fosfor dan kalium serta serat.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('29', null, null, '29', 'Jeruk Nipis', 'Jeruk nipis mengandung asam sitrat, asam amino, minyak atsiri, dan vitamin B. Rasa jeruk nipis tertinggal pada gini dan mulut seorang perokok.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('30', null, null, '30', 'Jintan Hitam', 'Kandungan biji jintan hitam antara lain minyak atsiri, minyak lemak, tokoferol, flavonol triglikosida, nigelin, nigelon, dan saponin.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('31', null, null, '31', 'Kacang Hijau', 'Kacang hijau banyak mengandung potein, vitamin B1, A, dan E. Selain itu, kacang hijau juga memiliki kandungan yang dapat melancarkan buang air besar dan menambah tenaga.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('32', null, null, '32', 'Kacang Panjang', 'Kacang panjang mengandung vitamin A, B, C, serta fosfor. Biji kacang mengandung protein, karbohidrat, dan sedikit lemak. Setiap 100 gr kacang panjang mengandung 44 kalori.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('33', null, null, '33', 'Kacapiring', 'Kacapiring mempunyai kandungan minyak menguap, antara lain lilanol dan stirolil. Daun kacapiring mengandung gardenosid, geniposid, zat samak krosin, dekstrosa, dan manit.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('34', null, null, '34', 'Kaki Kuda', 'Kaki kuda mengandung beberapa senyawa kimia, antara lain velarin, heterosida, glikosida asiatikosida, asam asiatikat, pektin, resin, tanin, dan zat samak. Tumbuhan ini juga kaya mineral, seperti garam kalium, magnesium, kalsium, dan besi.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('35', null, null, '35', 'Kangkung', 'Kangkung merupakan salah satu jenis sayuran yang kaya gizi karena mengandung vitamin A dan C, mineral besi, kalsium, fosfor, karoten dan sitosterol. Setiap 100 gr kangkung mengandung 29 kalori.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('36', null, null, '36', 'Kapulaga', 'Kapulaga mengandung minyak atsiri, antara lain sineol, tripenol, alfaborneol, dan beta kamfer. Kandungan minyak atsiri tersebut dapat berkhasiat mengencerkan dahah, memudahkan pengeluaran angin dari perut, menghangatkan, membersihkan darah, menghilangkan rasa sakit, dan mengharumkan.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('37', null, null, '37', 'Katuk', 'Daun dan akar katuk mengandung saponin, flavonoid dan taninselain itu, daun katuk juga mengandung lemak, protein, dan vitamin A, B, dan  C. Katuk berasa manis dan bersifat mendinginkan sehingga baik untuk menurunkan demam dan membersihkan darah.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('38', null, null, '38', 'Kayu Gambir', 'Kayu gambir mengandung senyawa kimia seperti kalsium oksalat, saponin, flavonoid, politenol, alkaloid, dan kalium.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('39', null, null, '39', 'Kayu Putih', 'Kayu putih mengandung minyak kayu putih, yang diperoleh melalui penyulingandaun muda. Daun kayu putih mengandung minyak atsiri, yang terdiri atas sineol dan tripenol. Kayu putih juga mengandung lignin dan juga melaleusin.', 'images/404.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('40', null, null, '40', 'Kayu Sanrego', 'Kayu sanrego mengandung alkaloid lunakridin, lunakrin, lunin dan lunalon. Selain itu, sanrego mengandung sitosterol dan glikosida. Ekstrak metanol dan n-butanol dapat menghambat baktri E-Coli, Shigella, dan Staphylococcus aureus. Ekstrak sanrego tidak bersifat toksik.', 'images/obat-herbal/kayu-sanrego.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('41', null, null, '41', 'Kecubung', 'Kecubung mengandung beberapa senyawa kimia antara lain hiosin, kalsium oksalat, zat lemak, atropin dan skopolamin. Kecubung berbunga putih sering dianggap sebagai kecubung yang paling beracun dibandingkan kecubung yang lainnya yang juga mengandung alkaloid. Karena itu, pengobatan dengan kecubung harus sangat hati-hati dan hanya sebagai obat luar saja.', 'images/obat-herbal/kecubung.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('42', null, null, '42', 'Kedelai', 'Kedelai mempunyai protein, zat besi, kalsium, dan vitamin A, B, B1, dan B2. Kandungan gizi kedelai lebih tinggi dibandingkan jenis kacang yang lainnya. Selain itu, kedelai mengandung vitamin B12 yang baik untuk pembentukkan sel-sel darah merah. Kedelai juga mengandung lesitin, yang mengandung asam lemak tidak jenuh. Asam-asam lemak ini berfungsi sebagai lipotropikum, yakni zat yang mencegah penumpukan lemak dihati. kandungan serat kedelai yang sangat tinggi dapat membantu merangsang metabolisme dan menurunkan kadar kolestrol darah.', 'images/obat-herbal/kedelai.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('43', null, null, '43', 'Kelapa Hijau', 'Air kelapa hijau, terutama dalam buah yang muda, mengandung glukosa, sakarosa, mineral, dan asam amino. Air kelapa hijau juga memiliki kandungan kimia berupa enzim yang dapat menguraikan zat racun.', 'images/obat-herbal/kelapa-hijau.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('44', null, null, '44', 'Kelor', 'Akar dan daun kelor mengandung zat yang berasa pahit, getir, dan pedas. Daun kelor mengandung alkaloid moringin dan moringinin. Akar kelor mengandung alkaloid, tanin, saponin dan flavanoid. Biji kelor mengandung minyak dan lemak.', 'images/obat-herbal/kelor.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('45', null, null, '45', 'Kembang Kol', 'Kembang kol mengandung sulforafan, glukosinoat, karotenoid, dan vitamin C dan B. Selain itu, kembang kol merupakan sumber mineral kalsium dan zat besi yang terbaik.', 'images/obat-herbal/kembang-kol.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('46', null, null, '46', 'Kembang Pukul Empat', 'Daun kembang pukul 4 mengandung antrakuinon, trigonelin, arabinosa, glaktosa, dan beta-stosterol. Daun kembang pukul 4 dapat mempercepat pematangan bisul. Umbi bunga pukul empat mengandung alkaloid. Kembang pukul empat memiliki rasa manis, memberi rasa sejuk, dan memperlancar sirkulasi darah.', 'images/obat-herbal/bunga-pukul-empat.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('47', null, null, '47', 'Kenanga', 'Kenanga mempunya minyak atsiri yang khas.', 'images/obat-herbal/kenanga.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('48', null, null, '48', 'Kencur', 'Rimpang kencur mengandung minyak atsiri, borneol, asam metilfumarat, ester etil sinamat, pentadekana, sinamat aldehida, dll. Kencur juga berkhasiat menghangatkan, menyingsetkan, menghilangkan rasa sakut, memudahkan peluruhan air dan anging dalam tubuh, serta mengencerkan dahak. Kencur segar mengandung antibakteri walaupun hanya sedikit.', 'images/obat-herbal/kencur.png');
INSERT INTO `tb_tumbuhanobat` VALUES ('49', null, null, '49', 'Kentang', 'Kandungan zat gizi terbesar kentang adalah karbohidrat. Selain itu, kentang mengandung tiamin, zat besi, niasin, fosfor, kalium dan vitamin C. Kulit kentang merupakan sumber serat yang baik.', 'images/obat-herbal/kentang.png');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
