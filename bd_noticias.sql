-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-12-2020 a las 15:51:38
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_noticias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Gabriel Colomé', '2020-12-20 22:00:00', '2020-12-20 22:00:00'),
(2, 'Héctor Chamizo', '2020-12-20 22:00:00', '2020-12-20 22:00:00'),
(3, 'J. G. Albalat', '2020-12-20 22:00:00', '2020-12-20 22:00:00'),
(4, 'Nacho Herrero', '2020-12-20 22:00:00', '2020-12-20 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Economia', '2020-12-20 22:00:00', '2020-12-20 22:00:00'),
(2, 'Politica', '2020-12-20 22:00:00', '2020-12-20 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_20_211242_create_autores_table', 1),
(5, '2020_12_20_212316_create_categorias_table', 1),
(6, '2020_12_20_213803_create_noticias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_publicacion` date NOT NULL,
  `contenido` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `autor_id`, `fecha_publicacion`, `contenido`, `url`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Hic non accusantium et aliquid est.', 4, '2007-11-17', 'Commodi et tempore incidunt consequatur accusantium sed saepe. Doloremque consequuntur debitis qui dolores qui est.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(2, 'Praesentium quia ab itaque voluptates et.', 1, '1978-12-08', 'Dolor eos et tempora. Molestiae ipsum aut et dolores aut distinctio non. Dolor facere omnis itaque doloribus. Maxime fugiat id ipsam explicabo dicta ipsum molestiae tempore.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(3, 'Odit dolorum nemo earum magni fuga voluptatem vel quaerat.', 3, '2018-10-20', 'Iusto repudiandae omnis perspiciatis qui commodi ullam. Et sit non qui reiciendis praesentium. Harum fugit deleniti quidem vel dolorem. Modi expedita veritatis ea pariatur autem.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(4, 'Enim consequatur aut dolor voluptatem vitae.', 4, '2017-04-28', 'Soluta ut ut voluptas voluptate quo eaque beatae non. Similique delectus dolorum laudantium ut illo.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(5, 'Odit neque porro aspernatur provident eos.', 4, '1998-10-16', 'Consequatur debitis et harum. Optio magnam voluptatibus earum. Harum corrupti iste at molestiae eveniet sit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(6, 'Quaerat sequi voluptate omnis et architecto incidunt nulla tempora.', 3, '1986-02-14', 'Itaque et at est veritatis. Impedit mollitia iure dolor eum non. Aut ut deleniti rerum. Quis dolores aut doloribus nihil ut et quibusdam.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(7, 'Dignissimos omnis voluptate quis molestiae maxime quis iste.', 1, '1971-01-28', 'Culpa libero maxime accusamus incidunt. Placeat in aut at eos numquam non voluptate. Atque vitae minima aut culpa et voluptatem. Impedit sunt animi nostrum exercitationem delectus delectus et.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(8, 'Architecto ex vero voluptas omnis sequi laudantium facere voluptatibus.', 1, '1989-12-25', 'Veniam modi aut esse eum. Id natus saepe ut qui fugit. Facere expedita ut qui eos vel recusandae impedit et. Enim quia voluptatem dolore non libero at placeat sed.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(9, 'Sunt inventore dolorem quas tenetur.', 1, '1999-11-16', 'Consequuntur voluptatem quod maxime illo. Voluptatum sapiente ut non quae. Qui expedita rerum dolorem quidem consequuntur sequi et.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(10, 'Tempora accusamus distinctio inventore.', 3, '2001-11-01', 'Aut accusamus eos quia rerum. Minus amet nisi eius eos ut aliquam maiores. Maiores atque aut numquam architecto rem qui sed.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(11, 'Autem nulla voluptate id enim consectetur eos.', 2, '1977-12-12', 'Placeat est maxime tempore. Nam culpa cupiditate hic nemo adipisci culpa ipsam facere.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(12, 'Temporibus error porro eaque magnam est.', 2, '2001-01-08', 'Eligendi illum consequatur eius voluptas labore minus et ab. Aut amet est adipisci dicta inventore molestias atque. Corrupti dolorum iste quis ut sit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(13, 'Consequatur suscipit voluptatem et.', 3, '2004-03-14', 'At sint debitis est rerum molestiae. Sunt quae corrupti nam ut. Maxime dicta blanditiis iste aut exercitationem iure.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(14, 'Rem expedita et voluptas est ut.', 3, '1990-07-28', 'Dolorem dolores quo laboriosam sunt ut. Eos minus quam quia et dolores ut. Fuga doloribus ad optio quo ut voluptatem. Amet recusandae tempora aut iste aut harum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(15, 'Magni totam ea recusandae sunt.', 1, '1974-04-14', 'Qui aut incidunt corporis non. Suscipit eum est expedita tempore. Recusandae velit temporibus aliquam similique laboriosam aut.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(16, 'Rerum omnis cumque veniam voluptate ducimus ea hic dolorem.', 3, '1970-11-20', 'Voluptatem voluptatem cupiditate eum nemo dicta et officia. Facere ratione nobis repellat et quasi dolor sit. Ad dolorem incidunt quis sed. Ut autem odio quod id.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(17, 'Placeat odit pariatur laborum odit.', 1, '1990-05-02', 'Ut excepturi dolores sint sit repellat atque sed. Reiciendis velit quam error. Optio enim dolores ratione.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(18, 'Maiores qui laboriosam deleniti unde.', 2, '1982-05-26', 'Dolorum natus veniam architecto culpa repellendus fugiat qui. Quasi neque qui et consectetur sint minima et. Dolor nemo deleniti eius mollitia distinctio distinctio. Est qui et magnam rem est et natus.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(19, 'Rem consequatur magni explicabo nobis delectus.', 4, '2010-07-04', 'Et beatae possimus nostrum dignissimos. Et aut ipsum soluta sunt recusandae. Quia nesciunt sed quae voluptatem et. Et quis modi aut non corrupti necessitatibus natus.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(20, 'Vitae laudantium sed voluptas laborum.', 2, '1970-05-02', 'Voluptatem earum eos officiis quia quam. Perferendis quis aut amet modi nulla voluptatum. Dolorem animi veniam non.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(21, 'Ut ad doloremque soluta voluptatem.', 1, '1982-06-02', 'Tenetur delectus deleniti corporis quo exercitationem sit. Doloremque sit voluptas ab nisi est soluta quibusdam. Sed perspiciatis tempore consequuntur exercitationem. Quibusdam accusamus aliquid eius quae sint vitae omnis.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(22, 'Id cum occaecati ullam et ut doloribus ut.', 3, '1976-05-06', 'Dolor itaque animi iusto corrupti sed non vel voluptatem. Aut aliquam quia totam harum. Quia aut necessitatibus ex corrupti quasi unde et.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(23, 'Facilis reprehenderit neque quod ut nihil dicta eos.', 3, '2017-09-28', 'Tempore expedita dolorum architecto vero qui non porro modi. Voluptatem aliquam facere debitis. Ratione sit maiores similique omnis odit. Sed omnis sed possimus beatae incidunt illum ad.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(24, 'Quaerat nesciunt placeat dicta perferendis natus.', 1, '1988-04-28', 'Dicta soluta nobis veniam enim nesciunt. Aspernatur necessitatibus aut iste est quas. Nihil nisi accusamus autem ea.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(25, 'Dolorem mollitia qui excepturi sed ut.', 1, '1993-12-19', 'Illum eligendi voluptates sequi eos voluptas. Iste eum et aut quia cumque.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(26, 'Suscipit quia aliquid possimus sequi.', 4, '1987-02-23', 'Est eligendi unde distinctio et voluptatum eos temporibus enim. Voluptate dolor fugit eum aut possimus aliquid autem ea. Voluptatem ut vel consequatur optio pariatur delectus aut.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(27, 'Officiis optio amet quo sed dolor et.', 1, '2005-09-24', 'Eaque architecto quibusdam provident soluta. Veniam sed omnis deleniti sunt. Consequatur ut culpa aut. Odit quis reprehenderit veritatis in nesciunt quidem pariatur.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(28, 'Maiores iste pariatur perspiciatis dignissimos omnis repudiandae nobis.', 1, '1977-07-15', 'Est iste eos est asperiores dignissimos quo sint. Beatae doloremque suscipit et dolorem unde aperiam doloribus. Non est blanditiis ullam porro velit laborum. Cum sint est esse quidem libero velit sit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(29, 'Amet omnis enim dolor libero tenetur repellendus.', 2, '2001-10-14', 'Qui at tempora et quo laboriosam numquam omnis. Minima accusantium architecto alias et tempora. Laborum ullam quod placeat ut. Minus hic reiciendis neque et et occaecati qui.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(30, 'Cum qui totam aliquid et doloribus consequatur delectus.', 3, '2008-04-08', 'Aspernatur expedita natus aut. Quisquam qui in dolorem aut id rerum facilis. Nostrum itaque ut culpa et. Aperiam autem quisquam voluptatibus.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(31, 'Nihil explicabo expedita enim minus eligendi.', 4, '1990-12-11', 'Amet aut animi quisquam sit aut. Eum enim ex doloremque. Iste aut consectetur esse id suscipit id.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(32, 'Molestiae aut autem dolor iste illo.', 1, '1977-07-13', 'Inventore eos earum velit velit doloremque autem. Tenetur qui quam assumenda eveniet rem. Quia exercitationem fugiat accusamus soluta dolor. Sit iusto aut sapiente quo officia aut. Enim ut corporis distinctio perferendis nesciunt laborum soluta.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(33, 'Nam sapiente error incidunt provident dolores porro maiores.', 2, '2001-09-07', 'Est autem rem est iusto. Magnam qui ut distinctio. Aut sint et labore et quis et. Voluptatem vel asperiores ducimus ut maxime.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(34, 'Quod blanditiis nesciunt hic id praesentium.', 4, '2015-10-04', 'Maiores exercitationem qui voluptate et aliquam reprehenderit aut dolorum. Quis recusandae quo dolor dignissimos sunt et. Ullam omnis eligendi maiores vel. Non quis consequatur aut soluta et cupiditate in rerum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(35, 'Et quasi et quia doloremque.', 1, '1979-03-12', 'Dicta distinctio consectetur omnis pariatur voluptas. Saepe ea consequatur quod nesciunt aspernatur harum et dolorem. Et labore recusandae dolores quasi ducimus. Omnis et soluta officiis dolores.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(36, 'Sit adipisci sapiente ab eos odio veniam.', 4, '1979-11-12', 'A error fugiat facere accusamus enim excepturi minus. Doloribus facilis sed quam ut quibusdam. Tenetur quis nulla nemo.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(37, 'Minus quia soluta aut voluptatem.', 1, '1974-07-25', 'Ut quia doloribus quia libero aut sequi consequuntur. Quia at delectus minima vel numquam. Est eum soluta et a a sed. Sed cum et vitae cumque ex.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(38, 'Voluptatum nisi quia non omnis placeat molestiae id.', 2, '1978-03-28', 'Iusto unde et maiores necessitatibus nobis. Sed similique a quaerat modi vero. Consectetur quia et perferendis delectus.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(39, 'Nostrum autem ipsa ipsum aut omnis sint.', 3, '1987-09-19', 'Consequuntur accusantium quia et voluptates laborum sunt ipsam. Quo quod amet omnis et est sequi laudantium. Voluptatum dolorem consequuntur sit omnis quasi. Excepturi quam soluta et dolores quae non.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(40, 'Sunt et minus neque rerum earum officiis.', 3, '2008-06-30', 'Quo hic voluptates quae in. Dicta vitae placeat voluptatem corrupti asperiores qui. Fuga molestias adipisci id aliquam voluptatibus.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(41, 'Atque occaecati est voluptatem maiores.', 1, '1998-06-19', 'Placeat officiis debitis sit doloremque maiores maxime consequatur. Sit blanditiis dolor beatae. Omnis consectetur et quo enim omnis quasi. Perferendis aut et vero corporis expedita aperiam. Sequi et eaque consequatur blanditiis consequatur.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(42, 'Fuga accusamus aut totam deserunt nulla veritatis.', 4, '1999-04-09', 'Quas qui aut reiciendis vel exercitationem. Laudantium asperiores exercitationem et vitae doloribus vero. Repellendus voluptatem sunt sint nulla qui dolore aspernatur.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(43, 'Quo eveniet doloremque harum.', 2, '2002-05-04', 'Quidem error aut non sit illo ab itaque. In in dolorum necessitatibus sequi voluptas id repudiandae. Sunt porro in repudiandae nemo ut rerum odio cum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(44, 'Eligendi quo provident nam distinctio vel.', 2, '1979-01-15', 'Dignissimos numquam aperiam beatae pariatur. Velit quidem tempore molestiae nihil. Temporibus mollitia aut perferendis aspernatur. Sed autem aut qui cupiditate.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(45, 'Incidunt expedita libero est.', 4, '2003-08-31', 'Aut aut temporibus et numquam molestiae dolor et ut. Corporis aliquid itaque quo et perferendis provident. Laudantium eum atque repellat adipisci repellendus sequi. Illo fuga dignissimos iure.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(46, 'Repellendus tempora id nihil reprehenderit cumque.', 4, '1982-12-16', 'Placeat distinctio accusantium voluptatibus perspiciatis sed. Sed aspernatur omnis voluptates magnam corrupti. Veritatis sed provident inventore molestias.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(47, 'Modi veniam ullam deleniti rerum delectus aperiam consequuntur reprehenderit.', 1, '2011-10-01', 'Consectetur minus aliquam eos sed. Molestias vel et quos vero. Assumenda ut adipisci cumque sint est. Aut aut repudiandae nemo vel ea minima omnis.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(48, 'Quisquam eius rerum eum voluptatem nihil eos a.', 2, '2005-09-23', 'Delectus repellat illum repudiandae repudiandae assumenda. Quia veniam nemo expedita perspiciatis et fugit officiis. Sunt perferendis et impedit maiores magnam. Tempora esse nihil libero tempora dicta.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(49, 'Molestiae commodi expedita nisi consequatur.', 4, '1993-02-26', 'Nulla eos culpa ipsum et perferendis. Porro asperiores hic rerum tempore. Consequatur aut dicta dolore quo.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(50, 'Rerum doloremque qui reprehenderit qui voluptatem voluptatem.', 2, '2003-05-16', 'Corrupti vero aut et nihil. Quo laborum molestiae minima saepe cum. Voluptate odio labore libero eum fugit recusandae.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(51, 'Exercitationem consequatur aut amet explicabo rem atque.', 4, '2012-05-14', 'Perspiciatis ratione eveniet repellat. Deleniti at omnis quia et est aut sit. Dolor et ullam eum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(52, 'Nihil autem nulla corrupti natus.', 2, '2010-04-11', 'Ea eveniet ut natus est rem quam praesentium. Labore perferendis id veritatis enim ut consequatur ex. Incidunt animi laboriosam sit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(53, 'At nam officiis eos necessitatibus ducimus.', 1, '1981-02-21', 'Rerum corrupti deleniti autem asperiores impedit distinctio nisi rem. Commodi est facilis distinctio autem adipisci placeat perspiciatis. Nesciunt ut repellat est molestiae. Blanditiis molestiae vero delectus ad sunt non.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(54, 'Saepe et et temporibus eveniet nisi similique.', 3, '2000-06-17', 'Architecto omnis et quia et consequatur molestias consequuntur. Deserunt hic est aut doloremque similique consequuntur dicta.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(55, 'Harum natus ipsum id architecto ad dolor.', 4, '2014-10-27', 'At quia quae architecto consequuntur eos. Velit omnis quia expedita. Molestias rerum repellat est accusantium qui ducimus. Sunt sit minus quasi voluptatem incidunt quia odit. Dignissimos facere quod quisquam laborum ipsa.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(56, 'Consectetur ut assumenda assumenda est corrupti dolor.', 2, '2013-05-04', 'Animi unde ratione officiis pariatur suscipit velit ut quidem. Aut quo laudantium quidem aut. Quis velit pariatur at mollitia et fuga autem. Sed consequatur dolor quia aliquid corrupti dolorem quis dignissimos.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(57, 'Dolorum modi debitis voluptatibus quam quam ex sint.', 4, '1996-08-20', 'Totam non velit beatae et. Officia excepturi error aut eveniet blanditiis ab error dolores. Magni quasi qui enim beatae et. Consequatur et earum qui enim voluptatem omnis dolorem quasi.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(58, 'Ex sint pariatur vel natus.', 2, '1996-03-15', 'Inventore occaecati hic illo quibusdam. Deleniti et et quos aut quisquam voluptatem. Quam reiciendis quia dolore sunt et. Hic exercitationem fugiat et debitis voluptas blanditiis voluptas accusamus. Culpa rerum aut eveniet non a aut recusandae suscipit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(59, 'Quae quidem et vero nihil dignissimos praesentium minus culpa.', 1, '1978-07-24', 'Ullam numquam incidunt quia ut sunt officia harum mollitia. Hic porro quia autem voluptatem porro ut. Iste esse et quo.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(60, 'Aut perferendis iure eos ullam.', 3, '2005-12-29', 'Porro tempore vitae sapiente impedit. Aut culpa et magni blanditiis qui at sint libero. Necessitatibus vitae et quod iste dolore.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(61, 'Deserunt iure nisi id animi voluptates tempora.', 4, '1996-09-18', 'Eligendi voluptatibus aperiam officiis. Perspiciatis deserunt sed non exercitationem sit. Et debitis deleniti et corrupti. Explicabo amet fugit adipisci qui facere dolorem error dolores. Voluptate quibusdam molestiae autem facere quibusdam.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(62, 'Explicabo molestias fugit et voluptate consequatur quidem.', 4, '2017-07-17', 'Rerum velit et omnis deleniti est. Voluptatem nemo ut sed voluptates non et suscipit. Pariatur ullam nam ea sunt quia voluptatem modi. Soluta et itaque molestias qui voluptatem vero. Vel qui natus vel eligendi vitae corporis nesciunt.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(63, 'Perferendis quisquam saepe possimus quae ut aut nobis.', 1, '1985-06-25', 'Maiores expedita reiciendis molestiae in officia harum. Omnis aut qui ut qui et recusandae et. Perferendis dolor recusandae et dolorum a enim ea est.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(64, 'Perspiciatis et alias facilis vel enim itaque et.', 3, '1993-01-28', 'Excepturi quis occaecati voluptatem vitae dolorum rerum. A quam cumque et atque reiciendis facilis. Reprehenderit dolores non et sed nam voluptatem eveniet. Porro consequatur aspernatur et sint quisquam ut.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(65, 'Est beatae natus iste.', 3, '2002-02-17', 'Blanditiis est rerum veritatis et dolor et. Nemo sed aut quia. Et et modi libero distinctio natus. Cumque ratione error deleniti omnis voluptatem fugiat vel.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(66, 'Velit ut et ut qui ducimus.', 2, '2011-04-13', 'Pariatur voluptas qui numquam explicabo ducimus enim nisi. Provident est et et voluptatibus soluta.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(67, 'Qui eos in accusantium.', 4, '1980-09-10', 'Ducimus unde recusandae nesciunt incidunt quis facilis. Doloribus quae esse eum impedit illo et aliquid. Qui et aliquam aliquam ab similique consequuntur rerum. Rerum cumque iure omnis incidunt aut quibusdam.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(68, 'Quibusdam enim rerum earum asperiores velit.', 1, '1981-12-26', 'Non aut sit minus nisi vel voluptatem dolorum. Incidunt architecto ea veniam laborum laudantium inventore laborum. Illum non omnis illo sint.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(69, 'Non hic quia molestias iure eum.', 2, '1983-12-04', 'Ut optio tenetur et rem eius vel. Repellat temporibus rerum dolorem dignissimos error voluptatem. Fugiat enim aut est non ducimus. Voluptatibus dolores error quos cumque aut.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(70, 'Illo et nulla aut atque.', 2, '2013-01-05', 'Autem quod ea cumque et unde dolor. Quisquam eveniet sunt deleniti. Eveniet illum quidem voluptatem.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(71, 'Deleniti eos cupiditate consequatur voluptate magni.', 2, '1993-02-16', 'Nihil ut beatae qui aut. Quis cupiditate eaque magni odio quod vero. Magnam corporis est magni nam rerum dolor corporis quaerat. Aspernatur voluptatum possimus nulla deleniti quas animi.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(72, 'In tenetur qui doloribus excepturi deserunt nulla recusandae voluptatem.', 4, '2008-03-23', 'Rerum ullam aut fuga et voluptatum ratione quae. Libero veniam itaque qui ut. Totam nesciunt inventore eligendi a sit enim. Sunt et occaecati ea repudiandae iusto.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(73, 'Dolor maxime perferendis qui aut.', 1, '2002-02-25', 'Corrupti tempora eum rerum error debitis dolores repellendus. Omnis aliquam libero repellat hic eum a voluptatum vero. Neque dolorem odit provident non officiis.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(74, 'Quos quasi molestiae pariatur quod quisquam omnis.', 3, '2018-08-27', 'Provident asperiores sunt facilis. Veritatis corporis est accusantium non.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(75, 'Mollitia placeat laudantium et quibusdam quis eius.', 2, '2018-06-26', 'Ut aspernatur amet sed ducimus sit. Occaecati reiciendis perferendis veniam asperiores laudantium perspiciatis. Expedita id aut voluptates consequatur impedit omnis doloremque. Dolor porro laborum ratione sint nihil.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(76, 'Tempore dolor culpa ut rerum.', 2, '2009-01-31', 'Ab sit veritatis quia quidem quod rem eum. Iste sed id recusandae velit iste voluptatum facere reprehenderit. Dolore molestiae perspiciatis nam qui delectus sed. Et recusandae omnis ipsam consectetur. Omnis deserunt optio eveniet assumenda exercitationem iste.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(77, 'Aut quae ducimus ut facere harum.', 4, '1994-02-25', 'Et doloribus error est quam voluptas. Autem ut explicabo enim maxime. Maxime earum rerum corrupti culpa omnis molestias esse.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(78, 'Animi itaque nesciunt assumenda.', 3, '2000-09-29', 'Et inventore velit molestiae ut natus similique eos. Qui maxime nesciunt vel eius nihil. Asperiores ut quas ducimus. Soluta aut architecto et rerum totam. Ut iusto libero quo consequatur odio animi quidem.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(79, 'Dolores soluta nisi sapiente corporis possimus exercitationem.', 3, '1998-10-02', 'Perferendis corporis tempora omnis aut amet. Ut ut praesentium rem quas voluptas consequuntur. Est nostrum rerum dicta. Earum ipsa aliquam magni non. Minus optio officiis aliquam labore.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(80, 'Sed at quae nemo aut delectus.', 4, '1978-12-23', 'Quia quia corporis ullam rem. Ut quod ipsam quos. Est nisi molestiae eum qui vitae aut corporis.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(81, 'Laboriosam quisquam quibusdam cupiditate voluptates consequatur error et.', 4, '1979-06-12', 'Officia ea maxime ut deleniti laudantium totam est. Ex consequatur nesciunt soluta molestias voluptatum reiciendis. Facere ratione totam enim dolores.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(82, 'Omnis eos accusantium aut possimus.', 3, '2018-03-04', 'Error nobis et culpa qui ad. Laborum nihil facere fugit eos nisi. Alias corporis maxime blanditiis laboriosam perferendis.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(83, 'Commodi molestiae commodi assumenda est.', 2, '2002-06-03', 'Tempore fugit eum aut. Rem accusamus et omnis ratione aperiam magnam deserunt. A vel ducimus et ut corrupti.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(84, 'Inventore quas ratione ratione harum et porro.', 3, '1999-03-24', 'Quia in ipsam voluptas dicta corporis at reprehenderit. Quam et sit facere sint esse officia. Animi consequatur magnam neque vel. Quis necessitatibus provident error consectetur.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(85, 'Vitae ipsam quae commodi.', 4, '1997-12-19', 'Voluptates commodi unde quod. Aspernatur aut occaecati qui itaque. Eius officia et eaque eos et rerum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(86, 'Laudantium blanditiis omnis eveniet ut aperiam nihil hic ut.', 1, '2020-06-09', 'Modi cumque omnis sequi sed. Aut facere quo animi culpa sed et sed eum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(87, 'Ab ipsam dicta veniam dicta et et animi.', 4, '2015-04-26', 'Et qui architecto sed eum est. Velit qui possimus possimus blanditiis consequuntur voluptatem at. Rerum omnis quae est aut. Nihil quos expedita voluptate sunt quam dicta nisi.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(88, 'Ut totam adipisci praesentium vel ea.', 2, '1999-01-12', 'Eos quo quas perferendis neque. Qui iste voluptatibus dolorem atque. Voluptas non ut pariatur consequatur et eos. Totam doloribus unde tenetur.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(89, 'Dolores esse est sed et repudiandae.', 2, '1977-11-12', 'Et et animi eum ut ut voluptatem ut. Et ut sunt recusandae sit voluptatem. Cumque qui non qui illum. Qui hic dolores cupiditate exercitationem et esse aliquid.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(90, 'Dolorum voluptas ullam officia id.', 2, '1975-03-01', 'Ipsum eius ad ab et nihil dicta quo. Qui mollitia ratione ea doloribus consequuntur et et.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(91, 'Expedita facere dolor minima itaque libero dolorem fugit.', 2, '1990-03-08', 'Illo autem quasi est doloremque quia. Optio eos alias perspiciatis iusto quasi quia et. Occaecati dolorem consectetur rem itaque voluptas. Iusto pariatur ea est quis qui placeat.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(92, 'Quisquam qui dolore voluptas mollitia sint ut inventore.', 2, '2000-02-06', 'Qui vero iure molestiae eligendi temporibus. Omnis est deleniti nihil quo qui. Cum dolorum tenetur aut quam est quaerat aliquam.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(93, 'Quia veniam fuga eos enim ut.', 3, '1979-12-20', 'Incidunt debitis sed deserunt quis porro repudiandae nulla. Eligendi id corporis harum at eos voluptas enim.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(94, 'Laboriosam voluptates dolor qui nostrum quia voluptate.', 4, '2000-04-27', 'Atque illum reiciendis excepturi consequuntur voluptatum libero eius pariatur. Est eligendi ut eos itaque. Cumque dolorum eos impedit suscipit voluptatum.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(95, 'Rerum deleniti beatae ab et id in.', 4, '1983-11-24', 'Dolorem expedita facere sint est rerum omnis sed. Doloremque quo nobis vel id ullam consequatur harum vitae. Ut quisquam excepturi quia deserunt qui facere iure at.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(96, 'Sit vero unde explicabo ut modi.', 4, '1998-07-06', 'Ut perspiciatis non quos. Corporis error est et ducimus. Cumque doloremque corporis non aut distinctio consequuntur rerum. Inventore nisi eum nihil repudiandae repellendus quidem.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(97, 'Veniam quisquam est rerum laborum minus saepe perspiciatis.', 1, '1973-08-31', 'Natus architecto quia et voluptas ad. Qui incidunt ut totam consequatur nulla quos. Aliquid qui nam doloremque consequatur quisquam. Culpa consequuntur error dolores non.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(98, 'Voluptas nam voluptates sit natus esse.', 1, '1988-04-11', 'Pariatur mollitia qui ullam incidunt. Nemo ut quia amet eveniet dolores. Id dolor et dolorem libero. Autem quos et facilis iure ratione velit.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 1, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(99, 'Et et voluptate rerum cumque.', 3, '2018-03-11', 'Eius minima quos itaque sit exercitationem ipsa autem. Ut perferendis animi qui autem asperiores. Quia ab dicta non molestias perferendis. Et atque commodi laudantium aut similique exercitationem.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37'),
(100, 'Non quia eos vel consectetur labore.', 3, '2000-12-15', 'Aut sapiente veniam tenetur sed quam. Corporis unde culpa unde dolore nulla dolor sapiente. Delectus omnis fugit incidunt culpa. Dolor sint sequi voluptatibus sed.', 'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg', 2, '2020-12-21 13:37:37', '2020-12-21 13:37:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticias_autor_id_foreign` (`autor_id`),
  ADD KEY `noticias_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_autor_id_foreign` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `noticias_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
