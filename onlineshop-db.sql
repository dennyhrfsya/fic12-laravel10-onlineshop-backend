/*
 Navicat Premium Data Transfer

 Source Server         : Server xampp
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : onlineshop-db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 04/07/2025 15:09:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Lizeth Green Sr.', 'Necessitatibus cupiditate omnis aut molestiae iste architecto. Cum officia dolor autem et earum. Amet modi similique ipsam at.', 'https://via.placeholder.com/640x480.png/0044dd?text=ad', '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `categories` VALUES (2, 'Makayla Rath', 'Animi suscipit qui blanditiis enim vel error eius ab. Sint accusamus rerum suscipit sint sed minima est. Omnis quo expedita illum. Aperiam quae adipisci nostrum.', 'https://via.placeholder.com/640x480.png/0011ee?text=ut', '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `categories` VALUES (3, 'Jedediah Bechtelar', 'Quo vel rerum omnis ut ratione ipsam dolorem. Voluptates quas necessitatibus debitis maxime non perferendis. Mollitia facilis consequatur temporibus. Sunt ipsam omnis nemo sunt et nostrum.', 'https://via.placeholder.com/640x480.png/00ff22?text=dolorem', '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `categories` VALUES (4, 'Jocelyn Littel', 'Labore libero quia id. Est doloremque hic voluptas ratione. Et placeat eum cupiditate velit. Dolor perferendis impedit dolores saepe consequatur. Vitae et soluta asperiores temporibus porro.', 'https://via.placeholder.com/640x480.png/00ee55?text=quam', '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `categories` VALUES (5, 'Russel Bashirian', 'Ullam aliquid qui qui ratione officia recusandae harum. Ducimus eligendi eos provident ad eaque sed ad libero. Rem consectetur cum enim laudantium.', 'https://via.placeholder.com/640x480.png/00aa66?text=id', '2025-07-04 08:07:13', '2025-07-04 08:07:13');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2025_06_13_182755_add_phone_rules_at_users', 1);
INSERT INTO `migrations` VALUES (7, '2025_07_02_023556_create_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_07_02_023809_create_products_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id` ASC) USING BTREE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 2, 'Carol Hessel', 'Maiores sint natus est nostrum aut laudantium. Dolores nisi iure illo aut. Culpa odit provident quam unde nulla. Et enim et eligendi vel eveniet praesentium.', 'https://via.placeholder.com/640x480.png/00ccff?text=eaque', 3169, 94, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (2, 3, 'Kristian Armstrong', 'Culpa qui dolores aut dolores occaecati fugiat. Minus voluptatem consequuntur nobis vel. Aut est laboriosam sed blanditiis quaerat odit quos aut.', 'https://via.placeholder.com/640x480.png/00aaee?text=pariatur', 1311, 76, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (3, 2, 'Kiara Kuphal', 'Incidunt consequatur dolores at. Voluptatum aliquam occaecati quod sit. Rerum esse modi quo beatae corporis at a.', 'https://via.placeholder.com/640x480.png/007766?text=ratione', 7475, 34, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (4, 2, 'Mr. Geoffrey Donnelly', 'Totam ducimus vero repellat. Sit sequi ad et accusamus. Autem dolor numquam natus.', 'https://via.placeholder.com/640x480.png/006699?text=est', 9367, 1, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (5, 1, 'Tomasa Frami DVM', 'Quia rerum sunt adipisci error tempore sunt sequi. Eum saepe minus cumque similique reprehenderit consequatur itaque esse. Voluptas ab omnis qui id inventore fugit.', 'https://via.placeholder.com/640x480.png/00aa44?text=enim', 7110, 48, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (6, 4, 'Laverne White', 'Eum harum aut voluptas eos quam iusto et. Sit ab sunt eligendi quae. Perspiciatis ea est nihil. Earum quo temporibus a quos sequi eos dolor.', 'https://via.placeholder.com/640x480.png/0066aa?text=sed', 6253, 8, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (7, 4, 'Clementine Grant', 'Cum autem aspernatur consequuntur impedit voluptatem. Nemo et qui non id earum recusandae et. Amet dolores nobis vel sapiente aut et iste dolorem. Est ex et ipsa in fuga quas.', 'https://via.placeholder.com/640x480.png/004488?text=et', 6060, 81, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (8, 2, 'Mr. Emerald Schamberger PhD', 'A minus tenetur hic autem est. Commodi aperiam rerum neque saepe. Ut debitis molestias qui ex hic ducimus iure rerum.', 'https://via.placeholder.com/640x480.png/00ee66?text=exercitationem', 4201, 64, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (9, 3, 'Bernita Keebler', 'Est eius quia ut officiis. Rerum iste eveniet praesentium nostrum ex accusantium. Ut eaque accusamus quos occaecati.', 'https://via.placeholder.com/640x480.png/001111?text=et', 7613, 20, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (10, 2, 'Mr. Hunter Huels MD', 'Deleniti ullam similique pariatur illum maxime est. Quasi accusantium minus qui sit quis. Autem et atque aut dolores ut.', 'https://via.placeholder.com/640x480.png/00aaff?text=ratione', 2111, 20, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (11, 2, 'Daniella Stoltenberg', 'Adipisci asperiores culpa quia. Voluptatem cum aut et. Earum unde aspernatur aperiam dignissimos aut sed quia. Aut inventore natus amet modi. Et aut repudiandae corporis occaecati voluptatem.', 'https://via.placeholder.com/640x480.png/0088ff?text=esse', 687, 50, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (12, 2, 'Maybelle Stark', 'Ut suscipit suscipit qui facilis dignissimos. Eos consequuntur illo officia molestias reiciendis sit. Magnam sint rerum non et dicta.', 'https://via.placeholder.com/640x480.png/00ff44?text=at', 6312, 8, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (13, 1, 'Isai Simonis', 'Ut eos et sit et nesciunt eveniet ipsa. Et debitis ex animi id dolor alias fugit. A est consectetur non.', 'https://via.placeholder.com/640x480.png/005533?text=distinctio', 7062, 70, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (14, 4, 'Zachery Hermann', 'Error magni totam adipisci cumque sapiente. Libero libero unde autem quae omnis illum et.', 'https://via.placeholder.com/640x480.png/009955?text=facere', 2677, 31, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (15, 1, 'Dr. Dangelo Kertzmann DVM', 'Tempora nam veritatis modi nobis voluptates est perferendis. At adipisci odit aliquam dolor. Facere quidem qui dolor sint ea voluptatibus dolorem.', 'https://via.placeholder.com/640x480.png/00aa99?text=ut', 999, 32, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (16, 2, 'Cameron DuBuque', 'Praesentium illum odit est. Sint asperiores expedita dolores et perferendis. Vel corrupti nulla ex quam.', 'https://via.placeholder.com/640x480.png/00bb77?text=velit', 1035, 18, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (17, 2, 'Margarett Nicolas', 'Laudantium quia provident odit impedit expedita et. Odit pariatur quaerat nam cupiditate consequatur minus. Ut modi ab et occaecati rerum est. Ut neque sit sint quia sed quidem quos.', 'https://via.placeholder.com/640x480.png/00aaaa?text=et', 8742, 97, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (18, 1, 'Donavon Langworth', 'Et eveniet et quia. Ea et harum consequatur quisquam sit ad veritatis. Tempora a expedita nihil temporibus qui tempore ipsam.', 'https://via.placeholder.com/640x480.png/00ddee?text=autem', 3588, 66, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (19, 4, 'Britney Shields', 'Ducimus eveniet qui dolores aliquid. Est impedit est aut commodi. Nihil autem eos quibusdam dolores et animi et.', 'https://via.placeholder.com/640x480.png/0099ff?text=distinctio', 1127, 19, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `products` VALUES (20, 4, 'Prof. Claud Fadel II', 'Mollitia sit sit exercitationem in veniam est excepturi. Culpa commodi quia aut. Molestiae mollitia numquam consequuntur eos. Dolores odio in harum repellendus.', 'https://via.placeholder.com/640x480.png/00cc55?text=placeat', 8806, 33, 1, '2025-07-04 08:07:13', '2025-07-04 08:07:13');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Prof. Wyatt Shanahan DDS', 'afriesen@example.net', '1-253-228-5822', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'WinjGzsPfI', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (2, 'Rebecca Hackett Sr.', 'laila.labadie@example.com', '857-517-2471', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'WIxzetrrMG', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (3, 'Bernard Murphy', 'hstark@example.net', '+1.458.230.5196', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'cjnrNG4vVo', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (4, 'Domenic Lebsack', 'king74@example.org', '+1-415-464-5693', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'hrrunQu496', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (5, 'Mr. Gregg Terry III', 'corkery.elvis@example.net', '(507) 923-4341', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'cS4q7qPwcI', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (6, 'Jazmyne Abbott', 'isaias.gislason@example.org', '(530) 474-8533', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'VAI7dXjuEq', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (7, 'Maegan Greenfelder', 'ckshlerin@example.org', '1-754-788-5545', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, '7Zn87BOqAY', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (8, 'Jailyn Gutmann', 'friesen.domenic@example.com', '534.665.8442', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'mZyKTrkrwn', '2025-07-04 08:07:12', '2025-07-04 08:07:12');
INSERT INTO `users` VALUES (9, 'Lester Torp', 'schmeler.joesph@example.net', '757.738.7351', 'USER', '2025-07-04 08:07:12', '$2y$10$nuM3j204MojLdIfc15amN.RIFzVtrvuGgimUV.WVWCBPxPuKD0x8a', NULL, NULL, NULL, 'zGdrJ6oA2c', '2025-07-04 08:07:13', '2025-07-04 08:07:13');
INSERT INTO `users` VALUES (10, 'Admin Dega', 'dedut@gmail.com', '08123456789', 'ADMIN', NULL, '$2y$10$toIoeLot3TJzFzOuwTiQp.hnWND2CteWUA3sX2oay01dfZ8IkaGSy', NULL, NULL, NULL, NULL, '2025-07-04 08:07:13', '2025-07-04 08:07:13');

SET FOREIGN_KEY_CHECKS = 1;
