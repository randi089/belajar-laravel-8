-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ranfeb_blog.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.cache: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.cache_locks: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.categories: ~3 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Programming', 'programming', '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(2, 'Web Design', 'web-design', '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(3, 'Personal', 'personal', '2024-08-08 20:16:07', '2024-08-08 20:16:07');

-- Dumping structure for table ranfeb_blog.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.jobs: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.job_batches: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.migrations: ~6 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_08_02_062739_create_posts_table', 1),
	(5, '2024_08_03_110431_create_categories_table', 1),
	(6, '2024_08_09_122956_add_is_admin_to_users_table', 2);

-- Dumping structure for table ranfeb_blog.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table ranfeb_blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.posts: ~21 rows (approximately)
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 'Ut quae omnis.', 'accusantium-aut-est-nisi-sint-qui', NULL, 'Ex deleniti hic corrupti fuga dignissimos. Quaerat quia hic tempore similique voluptatem odio. Architecto minima praesentium sed at qui perferendis est. A optio eveniet et.', '<p>Voluptates non tenetur quam aut harum animi id. Nobis quia quos unde et deleniti. Distinctio natus at quia consequatur eos nemo. Doloremque officiis et est tempore rerum est aperiam.</p><p>Sint nihil ullam doloribus quia ut aut accusantium ut. Deserunt et est voluptates voluptates qui rerum. Recusandae suscipit omnis fugit.</p><p>Consequuntur non est fuga beatae doloribus eum. Doloribus a dolor ullam quia. Impedit sed quidem libero magnam asperiores quia vitae aut. Assumenda quisquam voluptas et dolor pariatur sed. Et fuga molestiae velit velit voluptatem itaque.</p><p>Assumenda dolores et nam nisi sit ratione porro. Et sint minus qui autem qui et qui. Mollitia ut consequatur repudiandae at impedit.</p><p>Est laboriosam pariatur at non aut necessitatibus ut. Sint labore ipsam quidem voluptatem quo suscipit. Blanditiis qui qui facilis. Amet sit sint ea deleniti non mollitia.</p><p>Recusandae est adipisci ipsa ullam aperiam eum. Dolore inventore quas reiciendis quo dicta ipsam maxime. Occaecati alias occaecati sapiente ratione et. Voluptatem laudantium pariatur consequuntur sequi ullam quam.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(2, 2, 3, 'Debitis suscipit dicta eaque labore.', 'et-vel-molestias-magni-quisquam', NULL, 'Sit non corrupti et fuga labore magnam placeat repudiandae. Nostrum et repellat consequatur quod illum. Ut non rerum animi alias sed. Quia itaque dolores dolores cum possimus et.', '<p>Quasi eius soluta ad accusantium numquam. Rem in itaque enim numquam reprehenderit.</p><p>Voluptas eius sed dicta maiores iure suscipit. Sed maxime est ipsum soluta. Iure et enim perspiciatis earum tenetur repudiandae qui.</p><p>Inventore tempora molestias aut. Tempora esse vero eos. Aspernatur distinctio et dolorem reiciendis et ipsa.</p><p>Quia nihil fugiat aperiam sed voluptatem rerum quia quis. Et mollitia quis velit velit. Facilis eligendi aut ut ratione. Est nam ipsum harum ex est accusamus ducimus.</p><p>Deleniti ratione voluptatem perspiciatis veritatis commodi necessitatibus eum. Aut qui alias ipsa hic non distinctio numquam. Sit quidem magni excepturi.</p><p>Officiis cum fuga repellendus ut. Est totam veritatis occaecati eum illo. Recusandae est qui adipisci amet minima.</p><p>Quasi beatae non eius deleniti. Vero itaque exercitationem nesciunt consequatur quas. Nihil modi laudantium odio et est. Eos itaque ut omnis qui labore tempore et quo. Molestiae repellendus aliquid consequatur harum ducimus autem.</p><p>Unde voluptatem sequi vel quo. Sed aperiam doloribus voluptate fugit sed. Quasi est sequi natus voluptates eligendi voluptatem.</p><p>Corporis nobis ut odit veniam suscipit voluptatem ut. Eaque repellat quidem quod itaque id magni voluptatem. Pariatur cum aliquid quis eum ut et facilis. Corporis sed inventore qui itaque reiciendis placeat aut magni.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(3, 3, 1, 'Est rerum autem cumque ut.', 'cumque-tempore-laudantium-ducimus-magnam-unde-accusamus', NULL, 'Quis atque sunt nobis quidem iste nulla. Necessitatibus vel et tempore dolores qui ex. Dicta sit magni necessitatibus maiores.', '<p>Ut ut alias molestiae sint repellat voluptatibus. Vel nam dolor reiciendis quibusdam ea. Magnam ut maiores molestias quo rem blanditiis rem. Expedita et molestiae nemo minima autem ipsam nisi.</p><p>Numquam exercitationem molestiae dolorem qui doloremque in dolor. Quis cum illo voluptas ut quia. Quae velit laboriosam et voluptates cupiditate.</p><p>Tenetur reiciendis eos tenetur sunt tempore. Voluptatibus quae consequatur nisi maiores sunt deserunt hic. Repellendus non et facere neque.</p><p>Saepe minus corporis dolores rem reprehenderit impedit a. Nostrum illum in perferendis quia ut. Est nostrum et temporibus reprehenderit ea adipisci quo qui. Itaque ducimus consequatur unde.</p><p>Fuga fugiat ipsa ex velit distinctio numquam doloribus. Fugit dolor voluptas quos ullam asperiores sequi doloremque id. Rerum animi sint aut molestiae.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(4, 1, 3, 'Rerum esse repellendus pariatur quis.', 'incidunt-perferendis-dignissimos-officia-laborum-nihil-facilis', NULL, 'Quo id quaerat dignissimos cum ea fugit quasi quibusdam. Ullam aut modi et natus. Velit architecto nemo et harum saepe quo provident.', '<p>Unde nihil iusto et inventore expedita fugiat doloribus. Velit voluptas provident cumque neque asperiores id. Perferendis et enim veritatis repellendus esse quas non.</p><p>Placeat sint assumenda voluptatem ut ducimus. Ut voluptate et perferendis quisquam enim nesciunt. Delectus vel nam quia dolores. Repudiandae minima qui molestiae sequi id omnis.</p><p>Voluptatem nulla labore tempora maxime dolorem. Similique quod quod nulla tempora quae impedit voluptatum. Omnis quae enim eligendi omnis et ducimus nisi.</p><p>Et provident minima odit magnam consequatur possimus. Quae voluptas quidem labore expedita placeat veniam expedita. Dolores distinctio occaecati culpa eaque. Maxime voluptatem commodi doloribus excepturi.</p><p>Quam voluptas quae doloremque quidem fugiat eos. Hic voluptas qui et unde suscipit pariatur et. Neque ea praesentium dolor deleniti modi totam pariatur. Modi voluptas optio voluptas consequatur nihil quia aliquam.</p><p>Illum distinctio id similique omnis eveniet. Dicta quis inventore dolore asperiores voluptatem et. Quia autem harum molestias ad ullam laudantium fugit. Consequatur aliquid nihil ab neque omnis ullam et.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(5, 2, 1, 'Dolore omnis voluptas nesciunt non qui.', 'ut-aut-sapiente-facere', NULL, 'Est vitae repudiandae occaecati et aut rerum possimus. Saepe cum nihil minima ad rerum voluptatem neque ipsam. Aut voluptatum omnis et nulla.', '<p>Quis et voluptatibus eos est error assumenda sit. Cumque consequatur quod temporibus neque. Id deserunt eius error iure quo ex nihil cumque.</p><p>Mollitia ut eos ducimus numquam harum eveniet aut soluta. Voluptatibus eius animi tempora modi non in natus. Eos ut nihil qui ut provident iste consequuntur.</p><p>Fuga voluptatem similique perspiciatis ducimus. Repudiandae neque voluptatibus ut et amet dicta. Hic commodi vero et libero.</p><p>Impedit laboriosam recusandae itaque voluptatem eum quam eos. Qui numquam rerum possimus est labore modi. Recusandae autem optio quaerat qui corporis aut sunt et. Sed corporis omnis quo sequi est inventore. Dolores eum pariatur mollitia officiis fugiat.</p><p>Accusantium cum architecto accusantium cumque similique et. Reprehenderit nihil non ea praesentium aspernatur. Quos eveniet praesentium consequatur mollitia consectetur eum.</p><p>Sed ipsam ut repellendus eius. Quia et consectetur occaecati similique omnis sit. Quae qui assumenda dolorum numquam ea.</p><p>Voluptatem rem officiis alias ab. Quaerat officiis veniam ea tempora voluptatem et. Odio aut est omnis qui rerum molestiae. Consequuntur ut explicabo veniam ut aut aut mollitia.</p><p>Eos est doloribus consequatur dolores. Laboriosam minima veniam nobis porro adipisci qui in voluptate. Est est officia fugit tenetur ut incidunt quaerat.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(6, 2, 2, 'Optio rerum.', 'inventore-ratione-perspiciatis-enim-est-enim-sunt', NULL, 'Harum esse explicabo fugit nemo. Laborum hic voluptas quasi rerum eum. Eaque occaecati debitis molestias et. Officia maxime dolorum quaerat omnis qui consequatur corporis.', '<p>Est sunt nesciunt autem ducimus voluptatum. Qui numquam rerum ut laboriosam. Ea id molestiae mollitia.</p><p>Enim ut consequuntur vel aliquid. Voluptatem voluptas quia voluptatibus sed. Ut voluptate est repellendus quos numquam cumque ipsa. Omnis suscipit autem temporibus.</p><p>Deleniti quia totam animi et ut. Qui odit aut tempora impedit voluptas beatae. Voluptatibus enim quos mollitia eum itaque aut. Aut sequi expedita eum sint quam rem.</p><p>Quidem vero id nihil accusamus ipsa. Aliquam animi voluptatem voluptas autem magni in in. Ut quae ratione voluptas est.</p><p>Ratione rerum voluptates ipsam ut non rerum. Consequuntur iusto distinctio voluptatibus et quia omnis magni. Et quam dolorem voluptatem harum recusandae omnis beatae.</p><p>Dolor eos tempore accusamus sed. Veniam voluptas enim id sapiente recusandae sed tenetur.</p><p>Error vero consequuntur veritatis cum. Tenetur et omnis eius quia tenetur quaerat.</p><p>Modi autem delectus molestiae tenetur. Veritatis esse aut est. Sit nihil omnis reprehenderit sit repellat quia.</p><p>Voluptate aspernatur sit quis possimus non fugit ut. Rerum officia molestias facilis dignissimos. Atque et hic est ipsa rerum. Dolores et enim velit similique.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(7, 1, 3, 'Est magnam adipisci est voluptatem ad vero.', 'delectus-iste-iusto-quos-sint-saepe', NULL, 'Accusamus est voluptatibus distinctio magni expedita. Minima laudantium quos molestiae est quae ut autem earum. Autem omnis maxime quo impedit. Qui id aliquam modi possimus. Aut voluptatibus et error sed earum alias quibusdam.', '<p>Iusto eius ut autem vero est rerum. Eum fugit voluptates quaerat sed id repudiandae magni. A aut voluptatem minima quia neque dignissimos repudiandae.</p><p>Et provident mollitia corrupti possimus culpa consequatur. Sequi perspiciatis deleniti aut labore sed. Qui non molestiae dolores sunt repellendus quia rem pariatur.</p><p>Corrupti omnis aliquid deserunt id et. Quidem laboriosam laudantium modi qui facere. Nemo nulla adipisci nam culpa explicabo sapiente.</p><p>Commodi omnis et exercitationem enim pariatur dolores. Dolores assumenda corrupti minima incidunt qui hic ullam sed. Odio sed rerum dolor fugiat corporis quo. Consectetur sed pariatur consequatur nam dicta est dolorum.</p><p>Eum adipisci est sint quae incidunt itaque. Qui culpa numquam dolorem incidunt aut porro recusandae. Libero voluptatum aliquam veritatis placeat culpa omnis.</p><p>Dolores et excepturi exercitationem et sed dolor ut. Laborum veritatis incidunt ipsum. Sunt et in tenetur beatae sed qui.</p><p>Reprehenderit veritatis dolorum soluta vel nobis. Ut delectus unde et tempore eos. Quidem eius est et quo sit neque est. Minima numquam suscipit vero aut doloremque consectetur unde.</p><p>Quo ullam non adipisci aut doloribus. Non quidem veniam dicta atque voluptatibus.</p><p>Non officiis est ullam sit nihil voluptatem exercitationem. Rerum consequatur aliquam repellendus aspernatur eos totam.</p><p>Aut eum et error est eveniet. Et quo officia earum deserunt laboriosam atque. Id ratione a doloremque reiciendis ut.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(8, 1, 1, 'Assumenda et beatae sunt debitis ut amet maiores incidunt eligendi.', 'a-voluptatibus-aut-rerum', NULL, 'Autem consequatur earum eligendi quibusdam. Vel et sed labore ipsum fugit perspiciatis. Tempore alias modi quis maiores harum vero maiores dolorem. In repellendus et quae.', '<p>Quia et eos adipisci velit. Quod rerum officiis possimus. Fugit reiciendis accusamus quas.</p><p>Dolorum facilis aut porro. Ipsa quaerat laudantium occaecati perspiciatis. Saepe vel nemo libero ad soluta libero et.</p><p>Aut aliquam sequi odit sint consequatur molestiae libero. Ea dicta itaque aut officia magni rerum. Quod in deleniti velit repellendus eum sunt maiores. Ad suscipit et voluptas eum aut ut architecto dolor.</p><p>Sapiente quasi mollitia est voluptates. Labore consequatur quis rerum amet ea et. Ut reprehenderit nam quisquam voluptas aspernatur voluptates voluptas. Molestiae reiciendis aut molestiae sint officia temporibus qui tempore.</p><p>Id molestiae non non laudantium reprehenderit repudiandae. Dolor unde odio nobis et deserunt incidunt. Consectetur totam dolorum dicta sit provident. Occaecati aut dolorem magnam omnis ea temporibus. Explicabo optio et aut qui accusamus.</p><p>Maxime quia repudiandae molestias neque mollitia aut. Quia quia et et vel cum. Rerum accusamus voluptatem reiciendis ab ut hic tempore.</p><p>Iste quaerat aut nam nisi quae. Quis qui temporibus qui praesentium ad ut. Autem quia quas possimus expedita modi mollitia sit veniam.</p><p>Inventore ex aut et. Saepe nemo veniam aut.</p><p>Quia ipsum ad nostrum iste. Saepe quia ea consequuntur minus consequatur.</p><p>Nobis autem quaerat amet laborum. Qui aut ut magni quia ea nulla molestias. Laudantium quis dolores deserunt animi possimus quaerat. Dicta aliquid qui cum iste.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(9, 3, 3, 'Eum inventore quam.', 'quia-odio-magnam-quibusdam-ut', NULL, 'Ad sit optio sapiente sit sapiente architecto voluptas quia. Tempora nisi deserunt non aut. Dicta optio aut nesciunt et odio quis. Necessitatibus qui rem a laborum est aut ad voluptates. Sunt dolorem et ipsum rerum ipsa possimus nisi quos.', '<p>In occaecati inventore quisquam est ipsam fugit laudantium in. Porro neque ut nobis soluta sapiente.</p><p>Sit dicta harum dolores qui. Rem dignissimos minima autem aut adipisci et. Molestiae molestiae animi ullam adipisci laboriosam. Excepturi unde ad repellendus et sit perspiciatis quod.</p><p>Doloribus ex eius nisi voluptates aut voluptatem. Velit dolorum ipsa saepe earum nihil possimus alias. Eligendi laudantium ut aut numquam quidem eum. Molestias iure nesciunt et. Omnis ullam officiis magni officiis.</p><p>Ipsa veritatis consequatur architecto earum suscipit est nostrum. Amet architecto voluptatem iure iusto. Tempore voluptas nisi qui aut eligendi et.</p><p>Necessitatibus voluptate consequatur doloribus eos. Velit sed sunt nisi et in dolorem. Quasi veritatis dignissimos et alias.</p><p>Tempora dicta repellendus commodi id sint eaque deserunt. Molestiae minus id repellat eveniet. Veniam facilis ut expedita ea sint minus et.</p><p>Ea optio suscipit et consequatur tenetur similique. Nulla maxime atque nobis incidunt suscipit nihil. Qui culpa quibusdam id sint consequatur minima.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(10, 2, 1, 'Autem eaque ullam placeat velit cupiditate vero.', 'ratione-dicta-quidem-quia-aut-dignissimos-facilis', NULL, 'Saepe et incidunt rerum. Officia aut consequuntur deleniti perspiciatis. Dolores repellendus sit sed et sint voluptates. Rem quidem numquam eos provident accusantium consequatur.', '<p>Quibusdam illum qui pariatur aut ut ab. Velit est modi rem aspernatur nisi quia. Quos quia odio quos natus. Quae voluptas quos voluptatem quas veritatis rerum. Dicta fugiat quasi dolores a quia et.</p><p>Amet iure amet dolores ipsam atque quo. Autem sunt et neque tenetur libero nihil maiores. Omnis illo atque quos consectetur accusamus non.</p><p>Sint saepe ex inventore ut enim eum voluptatem. Temporibus quis officiis eveniet eos. Labore voluptas nobis sunt et natus. Id impedit optio ut ut deleniti. Saepe nihil consequuntur impedit.</p><p>Et necessitatibus optio consequatur laboriosam. Impedit dolor ipsa dolor aperiam. Sed aut possimus ea. Minima inventore rem quae id est.</p><p>At ea officia vel non corporis dolores eum et. Sequi nemo iusto odio ut sunt quis pariatur. Voluptas temporibus omnis labore culpa sit sunt et.</p><p>Non magnam hic pariatur rerum aut sunt nesciunt. Nemo enim quasi ad exercitationem aut rem est. Beatae quis odio sit ad et repudiandae quia. Ipsa tempore libero et similique quia autem.</p><p>Sit optio recusandae dolorem vitae. Inventore necessitatibus quam ad totam rerum. Nemo cupiditate fugiat molestiae corporis blanditiis autem ut. Ipsam enim similique commodi voluptatibus omnis sed.</p><p>Illo voluptas eos neque qui. Praesentium qui quaerat accusamus rerum. Voluptas totam quia qui et beatae. Tempore eum nemo dolorem quidem maiores.</p><p>Cum velit enim aliquam rerum vel nostrum. Voluptatum aperiam temporibus et aut dolores enim. Harum veniam distinctio mollitia expedita. Enim minus molestiae in nostrum est dolorem velit.</p><p>Sequi eligendi nulla soluta voluptatem corrupti. Odio est ut explicabo voluptas voluptas voluptatem fuga. Sed amet rerum ad quae. Culpa optio et sed deserunt exercitationem dolore voluptate.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(11, 3, 1, 'Eum quo excepturi.', 'voluptate-officia-quia-illum-saepe-consequatur-et-delectus', NULL, 'Odit esse et aperiam vero mollitia. Nihil fugiat reiciendis ducimus. Ut ut unde et est. Et omnis perferendis necessitatibus nihil rerum qui.', '<p>Laboriosam ratione et vitae commodi. Sed illo omnis et inventore ipsa veritatis sed. Quis rerum quibusdam ut vitae magnam quo.</p><p>Repellat totam possimus aliquam mollitia minus molestiae quia. Repellendus aut qui esse quis consequatur dolor.</p><p>Voluptatem nihil esse itaque quod cupiditate ut quasi voluptatem. Voluptatem nam voluptatem minima eum. Facere debitis neque minus quos expedita distinctio.</p><p>Ducimus laboriosam nisi ipsum magnam. Debitis earum non hic quod totam aut reprehenderit tenetur. Sed suscipit molestiae eligendi non. Dolorem labore cupiditate nesciunt voluptates quo.</p><p>Aut eum ea repellat ut at. Et sed ducimus necessitatibus eos dicta. Labore omnis consequatur similique aut dolorem.</p><p>Repudiandae ut minima ab quos. Facere vel reprehenderit amet est. Eaque vel et provident sed laborum et neque. Deleniti dolores perferendis dolor ea eaque suscipit commodi.</p>', NULL, '2024-08-08 20:16:07', '2024-08-08 20:16:07'),
	(12, 1, 2, 'Libero aut sint quo placeat.', 'laboriosam-dolorem-voluptatem-ipsam-est-hic-ut', NULL, 'Maxime nulla eius alias est tempore aliquid iure. Impedit accusamus nam id quaerat assumenda excepturi. Molestiae odit ut ut.', '<p>Ullam qui est ut et magni modi. Fuga iure expedita dolorum sapiente doloribus. Omnis consequatur hic expedita iure ullam ratione harum.</p><p>Qui et nobis inventore. Consectetur aspernatur aperiam qui. Ut natus est consequatur dolore similique quibusdam rem. Harum fugit iste molestias voluptatum.</p><p>Repellat accusamus rerum explicabo assumenda et illum voluptatem. Sint veniam sint nobis sit veniam. Aut aut dolorem id quia vel minus. Ut exercitationem dolorum ipsa ducimus et.</p><p>Rerum dolorem itaque laboriosam dolore nemo quasi. Aspernatur quia dignissimos similique id. Minima molestiae quis aperiam et quam culpa. Aliquam delectus molestiae et qui.</p><p>Aut soluta et voluptates consequatur. Error dolorem harum corrupti accusamus. Voluptas est nihil quia sunt soluta.</p><p>Eius repellat et autem qui consequatur. Odit ipsum ipsam ea atque placeat harum est. Veritatis enim amet dolorem vitae ipsa rerum libero.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(13, 3, 3, 'Ab eveniet iusto ea.', 'molestiae-aliquam-eaque-est-aliquid-voluptatibus-repudiandae-ab', NULL, 'Voluptatibus ut dolor architecto sapiente est. Non excepturi qui praesentium ipsa error numquam aut. Accusamus sunt at delectus eos quaerat cum et. Eaque necessitatibus voluptas possimus tempore rerum voluptates qui.', '<p>Et molestiae ut in. Perferendis neque nulla autem impedit facilis molestias. Qui tenetur magni eos voluptas. Accusantium expedita dolorum fuga veniam incidunt animi sed.</p><p>Veniam sit sunt ea libero cum. Animi facere aliquid rerum et. At ut architecto voluptatem sunt quisquam officiis qui quasi. Facilis officiis explicabo sed odit voluptas aliquam.</p><p>Suscipit nam quam modi voluptate doloremque. Quis aperiam ducimus quia nam amet enim enim. Iste tempore tempore rerum non. Consequatur esse et ut ut.</p><p>Itaque quisquam culpa non id iure quas. Quibusdam qui velit odit odio. Vel quasi optio deleniti aliquid.</p><p>Ipsum quod sed omnis molestiae. Rerum accusamus aut aperiam ad vitae et.</p><p>Voluptas nisi mollitia ut rerum et. Eligendi ut nisi aut laboriosam. Architecto illum adipisci quisquam accusantium tempore commodi.</p><p>Totam veritatis dolorem ut. Veniam blanditiis corporis quidem illo. Quaerat in quam quasi repellendus praesentium rerum occaecati. Quo nobis nam rerum. Sapiente provident aperiam excepturi officiis occaecati perspiciatis animi et.</p><p>Ut necessitatibus nisi voluptates vel. Qui sequi nostrum eos et reiciendis et illo nulla. Et rerum voluptates perspiciatis omnis modi distinctio omnis.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(14, 2, 1, 'Harum vel et neque ullam sint.', 'consequatur-enim-ipsa-ut-velit-dignissimos-laboriosam-ullam', NULL, 'Labore hic provident est. Dicta laboriosam consequatur voluptas molestiae consectetur modi expedita. Aut sint expedita sint quia laudantium et et tenetur.', '<p>Et quia voluptas earum ullam temporibus doloribus blanditiis dicta. Quisquam quidem voluptates odit voluptates sit. Nemo qui ipsam iste delectus.</p><p>Aspernatur quo iusto ad in sequi soluta corporis. Non veritatis consequuntur voluptatem praesentium totam tempore iste voluptate. Natus deleniti earum ipsam cumque molestias natus dolorem. Explicabo nihil rerum fuga laboriosam eos optio ea.</p><p>Repellat itaque aut pariatur labore et. Quia harum quibusdam est accusantium molestias. Quo non impedit voluptas dolores nostrum ut et. Reprehenderit sit earum in.</p><p>Quibusdam et odio ea eos voluptatibus. Cum omnis nostrum unde sapiente commodi voluptatem. Pariatur quasi maxime ipsam delectus. Ut ea ad consequuntur earum quis a.</p><p>Ut quia quo voluptatem magni quam earum rerum aut. Ut tempore sit sit ducimus nobis est officiis tempora. Qui dolor voluptas ullam. Itaque assumenda nihil possimus.</p><p>Temporibus aliquam voluptatum voluptates dolorum et. Dolorem aliquam quis nemo tempore quam consequatur. Deleniti amet molestias iste eum distinctio omnis.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(15, 1, 2, 'Iure dolorum.', 'eveniet-libero-eum-sit-molestiae-possimus-dolorum', NULL, 'Ut tempore veniam ex ab ipsa rerum quam id. Odit omnis ab deleniti quis. Maxime fugit nisi fugit vel quaerat quasi vitae laudantium.', '<p>Vel aut labore beatae incidunt aut ea. Minima rerum qui ut harum dolores voluptate. Soluta voluptatem vel consectetur eligendi eaque laboriosam.</p><p>Autem impedit repellendus corporis quia rem veniam nemo. Quidem id quo accusamus asperiores. Explicabo in quibusdam maxime qui. Tenetur aperiam possimus aut non omnis alias.</p><p>Corporis rerum sint dignissimos ut nobis corrupti et voluptates. Neque sunt id maiores recusandae. Velit rem ut iste ducimus. Ut minus rerum vel ea vel maiores.</p><p>Quaerat sint eos possimus. Fugiat eius enim ut saepe dolorem cupiditate unde sapiente. Minus velit ut explicabo qui enim reiciendis exercitationem consequuntur. Quia laboriosam beatae rerum itaque dignissimos omnis non.</p><p>Qui quia sequi repellendus aut. Autem laboriosam perferendis ut. Est natus modi incidunt non ea. Quia rerum deserunt qui recusandae voluptate veniam doloremque nihil.</p><p>Est dolore nobis aspernatur dolorum voluptate consequuntur dolorem minus. Omnis quia et omnis voluptatem sed et sunt. Magni dolorum et ut sed est dolorem rerum rerum.</p><p>Fugiat possimus placeat a ea sunt. Nostrum saepe quia mollitia deserunt repudiandae eos. Incidunt nobis et expedita corrupti ab eveniet nulla. Id in quo quo laudantium.</p><p>Rerum consequatur reiciendis aliquid. Expedita quis officiis eum ut quis omnis aut. Necessitatibus et molestiae a tenetur in repudiandae delectus. Nobis aut occaecati dolore est.</p><p>Accusamus quasi enim recusandae. Et magni vel enim nemo et ullam nemo. Illo omnis adipisci libero voluptatem qui sit.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(16, 1, 3, 'Ea unde.', 'rerum-inventore-voluptas-unde-molestiae-ab', NULL, 'Ipsum explicabo consequatur mollitia nihil. Molestias fugit est est consectetur modi accusantium quis. Labore et necessitatibus fugiat minima accusamus dolorum. Quas ad nulla voluptas impedit.', '<p>Tenetur ut aut harum ut. Sunt rerum unde est neque. Dolorum dolorem et maiores et.</p><p>Harum corrupti dolorem omnis eius. Impedit tenetur debitis eos enim facere. Rerum qui temporibus ea quas.</p><p>Eum enim nobis autem eum blanditiis. Vitae in aspernatur porro et distinctio ratione ab dolorem. Et ipsa labore et repudiandae qui.</p><p>Sapiente dolores dolores dolor veniam laboriosam quisquam. Ab a quia maxime ipsam nihil ex nam. Neque provident itaque nostrum cumque sequi et optio.</p><p>Et sit molestiae ut veniam praesentium mollitia. Corrupti et et quia ea dolores. Commodi omnis reprehenderit veniam eveniet dolorem earum quia et.</p><p>Ab exercitationem excepturi voluptatibus et. Consequatur voluptas esse officia sed molestias illum id. Saepe quo rem aperiam nihil quas doloribus.</p><p>Nihil eum rem quas aut ex adipisci exercitationem. Voluptatem sunt et et ratione. Dolore eum officiis dignissimos nobis accusantium perferendis velit temporibus.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(17, 3, 1, 'Aut quod id modi velit dolor.', 'eius-sunt-eius-eos-eos-consequatur-rerum-officia-est', NULL, 'Numquam facilis cumque sint suscipit unde sed omnis. Vero et soluta natus illum provident repellendus. Et voluptas quo eos consequatur omnis sed.', '<p>Sint et itaque voluptas neque. Nostrum harum eligendi qui cupiditate. Accusamus saepe ullam sed voluptas harum rerum temporibus.</p><p>Aut eos ratione earum molestias sed sequi exercitationem. Ut modi ad aut unde repudiandae.</p><p>Et ea et molestiae atque in. Officiis modi et nisi cum sunt minus. Facere voluptatem officiis neque illo.</p><p>Omnis sit aut consequatur sapiente necessitatibus dolores. Dicta aut quia dicta ut ut suscipit ducimus molestiae. Veritatis quas ab aliquid dicta. Id necessitatibus dicta sunt quaerat.</p><p>Libero blanditiis perferendis animi eum totam ab. Tempora sapiente recusandae illum odit. Ut iure vero molestiae deserunt distinctio suscipit dolores architecto.</p><p>Modi et sed consequatur beatae fuga. Modi voluptas minus quas vel repudiandae tenetur quod. Enim voluptas enim aut sunt id quod. Inventore ab neque repellendus et aut et sit.</p><p>Aperiam laudantium ad maxime fugiat. Odio corporis blanditiis molestiae molestiae. Sit voluptate porro harum autem dolores facilis. Assumenda magni aut natus et et consequatur autem.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(18, 3, 3, 'Quam quaerat dolor dolorum temporibus sed rerum.', 'necessitatibus-et-delectus-sint', NULL, 'Recusandae possimus beatae dignissimos itaque inventore. Est explicabo reiciendis dolor voluptas. Velit et harum consequatur inventore ut non id. Atque eligendi id tempore ut. Eum voluptas reiciendis magnam quia a omnis sit.', '<p>Ut at consequatur est facere exercitationem. Veniam ipsum sit voluptas ipsum. Aut voluptatem nesciunt autem quo debitis iusto quidem.</p><p>Mollitia odio nam eum autem doloremque. Deleniti totam quod et omnis odio molestiae aspernatur. Quia repudiandae blanditiis rerum laborum ex consequatur facere. Id dolores sit adipisci consequatur sed sit.</p><p>Maxime voluptatem quis cum a modi in. Provident sint rerum enim culpa aut tempore sunt. Voluptatem soluta eius voluptatem totam.</p><p>Ut animi harum numquam nihil explicabo repudiandae. Ea sed consequatur enim corporis nihil tenetur. Repudiandae libero saepe explicabo aut expedita. Assumenda et consectetur dolorem dolorem dolores maxime.</p><p>Veniam sunt commodi tempora ratione in sint. Atque quam non vero voluptas sit. Quas aut reiciendis dolorem quo dolor est. Neque commodi ab et culpa voluptate molestiae.</p><p>Ut nisi minima qui. Vero iusto beatae numquam ipsam unde nisi praesentium eius. Unde ut voluptatum ipsum harum.</p><p>Facere voluptate odit qui vel dicta voluptas. Aut laudantium velit architecto asperiores quidem. Eaque est animi aut voluptatibus sed accusamus laudantium.</p><p>Cupiditate consequuntur odit temporibus voluptatibus eligendi. Est sint delectus dolores soluta dolore aliquam. Adipisci porro repellendus quia id nulla et voluptatem. Atque assumenda aut tempora fugiat id. Repellat quod asperiores corporis minima deleniti sed.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(19, 2, 3, 'Omnis nesciunt doloribus non.', 'excepturi-voluptas-voluptates-sed-soluta', NULL, 'Ut a tempora et omnis sunt. Modi natus deserunt et dolore sit corporis repellendus enim. Fugiat quos accusamus saepe quia facere. Voluptas accusantium nihil eum minus sit placeat. Quaerat omnis fuga dolores cupiditate accusamus tenetur quia.', '<p>Mollitia dolor voluptatem deleniti officia. Qui quis fugit ad illo corporis in. Voluptatem blanditiis cum fugit quaerat perspiciatis. Sunt qui tempora qui ea aut ea.</p><p>Itaque soluta rerum ipsum optio enim. Eligendi eveniet fuga at eveniet. Repudiandae eius unde aut placeat ratione dolores ducimus.</p><p>Ut et recusandae esse aut cumque vel id. Amet voluptatem quo necessitatibus porro eum officiis repellendus. Tempore labore repellendus qui id aut. Consectetur ut dolorem quia voluptas ad.</p><p>Tempora ducimus optio aut eius rerum. Debitis rerum sit laborum vel. Nisi omnis magni saepe alias inventore eius.</p><p>Et sit quos inventore commodi. Et enim sit vel delectus sed accusamus odio beatae. Non ut eum repellendus ut.</p><p>Ut omnis sunt dolor quibusdam delectus esse. Sequi qui commodi nesciunt est qui. A sed et accusantium.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(20, 3, 2, 'Soluta mollitia rerum occaecati.', 'distinctio-repudiandae-esse-voluptas', NULL, 'In aut tempore laudantium quo eveniet. Et quis iure ut qui est recusandae accusantium. Tenetur illo deleniti natus nisi consequatur. Dicta ullam placeat aspernatur accusamus.', '<p>Similique est cumque recusandae. Consectetur impedit voluptas fugiat consequuntur eius ullam. Voluptas iste neque commodi aut voluptas rerum sint.</p><p>Quis iure ad voluptas. Fuga sunt non nobis commodi autem inventore. Numquam doloribus quia rerum non id vitae. Et tempora nulla consequuntur maxime aperiam amet est dicta. Ab et voluptatem mollitia et pariatur blanditiis.</p><p>Hic eos quia esse. Nam necessitatibus occaecati cumque sint numquam illo fugit. Quis aut mollitia voluptatem sunt.</p><p>Impedit veniam ab modi provident error. Atque nisi aliquam aut sed excepturi. Sapiente voluptatem ut aliquid qui aut. Quasi distinctio quo aut ducimus.</p><p>Nisi ullam voluptatibus magni rem quia reprehenderit ducimus. Sapiente recusandae animi voluptas. Non et iste quibusdam quae laudantium.</p><p>Nemo sit id officia non. Unde qui ipsam blanditiis nam et laboriosam a. Sint inventore illum culpa veritatis consequatur aperiam repellat. Ea dolores sed asperiores maiores consequatur et. Esse aut est qui dolore aut id.</p><p>Rem voluptas id eos autem modi. Nesciunt et hic ad velit. Rem dolor inventore inventore dolorem minima libero. Libero nihil provident sit dolorem nisi autem.</p>', NULL, '2024-08-08 20:16:08', '2024-08-08 20:16:08'),
	(21, 2, 1, 'Post Baru Cuy', 'post-baru-cuy', 'post-images/Im0qreO8QpoHqxVOa1Ul2TXdcBPCFtY3344I8RIo.jpg', 'post baruuntuk mencoba ini supaya berhasil agar berhasil tentu harus kita coba terus sampai berhasil jika gagal tidak apa-apa nanti kita coba lagi yes or no? mantap bana wkwkwkwkwkkwkwkwkwkwkwkwkwk ha...', '<div>post baru<br><br>untuk mencoba ini supaya berhasil agar berhasil tentu harus kita coba terus sampai berhasil jika gagal tidak apa-apa nanti kita coba lagi yes or no? mantap bana wkwkwkwkwkkwkwkwkwkwkwkwkwk hahahhahaha hehehehheheh coba lagi terus sampai berhasil.<br><br>untuk mencoba ini supaya berhasil agar berhasil tentu harus kita coba terus sampai berhasil jika gagal tidak apa-apa nanti kita coba lagi yes or no? mantap bana wkwkwkwkwkkwkwkwkwkwkwkwkwk hahahhahaha hehehehheheh coba lagi terus sampai berhasil.</div>', NULL, '2024-08-08 20:27:24', '2024-08-09 04:04:09');

-- Dumping structure for table ranfeb_blog.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('hDeO4u74XmMPQ1z1jB8Lqz36Xok8Yt0LPlA7og0n', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUFJZm1EcnhGZlFUdkh0NFVGT3VOZTNTWjRuanh4a0xZMkZkVndYTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9jb2JhLWxhcmF2ZWwudGVzdCI7fX0=', 1723211598);

-- Dumping structure for table ranfeb_blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ranfeb_blog.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
	(1, 'Randi Febriadi', 'randi1', 'randifebriadi@gmail.com', '2024-08-08 20:16:08', '$2y$12$ZCD3GcpDon/7KoKP.eHR.uVfv5k8KvienNzrx9z4vMQJmWlQZeHzS', 'W1yvtxA85z0JHATkTCa49MLWFnni5LKWjFM4n0JCbtB4DnRAVKE9pbSNwiYc', '2024-08-08 20:16:08', '2024-08-08 20:16:08', 1),
	(2, 'Tasya Aryati Sakinah', 'tasya2', 'tasyaaryati@gmail.com', '2024-08-08 20:16:08', '$2y$12$ZCD3GcpDon/7KoKP.eHR.uVfv5k8KvienNzrx9z4vMQJmWlQZeHzS', 'EI91Oyy5Pg119rcrmV6JbLBxgPni8E69K13GFMEog5MoMe8Od9OO7VonVFqL', '2024-08-08 20:16:08', '2024-08-08 20:16:08', 1),
	(3, 'Rumzi Rahman', 'rumzi3', 'rumzirahman@gmail.com', '2024-08-08 20:16:08', '$2y$12$ZCD3GcpDon/7KoKP.eHR.uVfv5k8KvienNzrx9z4vMQJmWlQZeHzS', 'LQAaBBlZ7i', '2024-08-08 20:16:08', '2024-08-08 20:16:08', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
