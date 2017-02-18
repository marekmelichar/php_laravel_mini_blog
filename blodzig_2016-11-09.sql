# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: blodzig
# Generation Time: 2016-11-09 20:46:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_11_03_205511_create_posts_table',1),
	(4,'2016_11_03_205627_create_tags_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table post_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tag`;

CREATE TABLE `post_tag` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;

INSERT INTO `post_tag` (`post_id`, `tag_id`)
VALUES
	(2,2),
	(2,4),
	(1,1),
	(3,2);

/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `user_id`, `title`, `text`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,3,'Quas cumque aut deserunt.','Esse velit quibusdam at sed reiciendis. Molestiae non dolor voluptatem quas temporibus. Debitis ut nihil quia voluptatum inventore. Odit ducimus architecto commodi itaque.\n\nIste deserunt quasi maiores laboriosam et iure. Enim delectus in reiciendis velit. Dolores impedit laudantium ut omnis corporis tempore. Voluptatibus magni debitis voluptatum recusandae et illo.\n\nAperiam et iusto accusamus cumque occaecati. Quis magni quo aliquid eaque. Sunt mollitia voluptatem incidunt cum et alias.\n\nRepellat ex commodi autem qui facilis. Et voluptates architecto quaerat unde. Omnis voluptatibus voluptatem omnis rerum dolor.\n\nAssumenda qui sit vel optio necessitatibus quos. Velit odio cumque modi aliquid. Eum ratione voluptas facilis culpa iusto nesciunt consequatur.','ut-tempore-aut','2016-11-03 21:11:58','2016-11-03 21:11:58'),
	(2,1,'Est perspiciatis dolore quaerat.','Adipisci maiores illo quas velit tempore et neque ex. Beatae similique officia laborum saepe quae dignissimos. Provident temporibus nobis nam et dolor molestiae.\n\nIpsum rerum commodi consequatur. Occaecati temporibus et velit dolores repellendus. Sunt consectetur omnis amet magni libero consequatur omnis.\n\nCumque exercitationem repellendus ut iusto debitis quis eligendi. Dicta et aut eius dolores. Ut incidunt voluptatum est excepturi in omnis. Eius veritatis aut inventore sit.\n\nArchitecto iusto sit voluptatum dolor dolorem est libero. Vitae eos cum sapiente qui sit voluptatum doloremque. Perferendis aut aspernatur eum ut ut illum quam repellat. Quia et perspiciatis doloremque laudantium.\n\nOptio dolores voluptatem aut temporibus debitis. Sit aut minus facilis maxime. Nemo a qui dolores qui qui porro. Enim quod nesciunt ducimus soluta.','repellat-error-aut','2016-11-03 21:11:58','2016-11-03 21:11:58'),
	(3,3,'Voluptas iste et et.','Eligendi dicta minus rem et quam commodi et. Quae quos fugit ea omnis perspiciatis. Non maxime aliquam unde doloremque odit omnis laboriosam.\n\nQuia officiis dolorum quis aut excepturi. Voluptas perspiciatis beatae velit qui sint doloribus. Fuga unde voluptatum placeat qui aliquid cupiditate sequi.\n\nVoluptatem sit veritatis sit. Consectetur rem est sapiente aliquam consequatur est. Et porro sed iste. Eius nisi aliquam dolor vitae eveniet. Facere optio iusto non possimus amet impedit maxime.\n\nQui atque quis itaque provident quia et earum. Vel culpa nesciunt consequatur molestiae velit consequatur nostrum ab. Nulla neque ex deserunt fugit architecto.\n\nQuaerat animi cumque quae nobis. Modi doloribus eaque pariatur cumque. Sed enim voluptas similique explicabo id voluptatem.','ad-commodi','2016-11-03 21:11:58','2016-11-03 21:11:58'),
	(4,0,'1','hfgkgjkljhgchvjbnm','','2016-11-06 19:58:50','2016-11-06 19:58:50'),
	(5,0,'1','hfgkgjkljhgchvjbnm','','2016-11-06 20:00:09','2016-11-06 20:00:09');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'fugit',NULL,NULL),
	(2,'quia',NULL,NULL),
	(3,'nobis',NULL,NULL),
	(4,'tempora',NULL,NULL),
	(5,'maiores',NULL,NULL);

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Mr. Rico Lakin Sr.','pagac.moriah@example.org','$2y$10$JlC1KbVet9OESIEo1dJA4OAqQuWPg.OdRY6sajpTQkxi4rjdEwUSG','2OacauYeF3','2016-11-03 21:11:58','2016-11-03 21:11:58'),
	(2,'Shawna Keebler','tdeckow@example.com','$2y$10$JlC1KbVet9OESIEo1dJA4OAqQuWPg.OdRY6sajpTQkxi4rjdEwUSG','6IfmyImmCO','2016-11-03 21:11:58','2016-11-03 21:11:58'),
	(3,'admin','admin@admin.com','$2y$10$0e.PL7UmSYVU1nZ.HZCtveR0KkRKkELC7rRlypz4buc.dDxwXmZCe','MiOZQLe7jgJWt5QkrVvGK4vPy7nNwqYBcydDJLGrugCGcmnCtavmO7iTuqEe','2016-11-04 21:32:17','2016-11-05 09:29:15'),
	(4,'root','root@root.com','$2y$10$7EzGFsbW3rVf76QNF8nVCuBAXKjmqn2bWxp0g8a4jpaBQcArp8BOe','9SW6SDSAXnGSa1odCjWIKbcKdfeCOg1uLuJyt7LKV9J8SuyJuZnMTG1R8ccq','2016-11-05 09:29:47','2016-11-06 07:56:46'),
	(5,'','','',NULL,'2016-11-06 20:00:55','2016-11-06 20:00:55');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
