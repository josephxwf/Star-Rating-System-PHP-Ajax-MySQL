--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_score` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock'

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`id`, `product_id`, `user_id`, `rating_score`, `title`, `comments`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 4, 'its awesome', 'It''s awesome!!!', '2018-08-19 09:13:01', '2018-08-19 09:13:01', 1),
(2, 2, 2, 5, 'Nice product', 'Really quality product!', '2018-08-19 09:13:37', '2018-08-19 09:13:37', 1),
(3, 3, 3, 3, 'I like it', 'its''s best but item.', '2018-08-19 09:14:19', '2018-08-19 09:14:19', 1),
(4, 4, 4, 3, 'super awesome ', 'i think its supper products', '2018-08-19 09:18:00', '2018-08-19 09:18:00', 1),
(5, 5, 5, 1, 'Good idea', 'Nice', '2019-01-20 17:00:58', '2019-01-20 17:00:58', 1),
(6, 6, 5, 5, 'Nice product', 'this is nice!', '2019-01-20 17:01:37', '2019-01-20 17:01:37', 1),
(7, 7, 3, 4, 'really nice', 'Good!', '2019-01-20 21:06:48', '2019-01-20 21:06:48', 1);




ALTER TABLE `product_rating` ADD `reviewer` VARCHAR(255) NULL DEFAULT NULL AFTER `comments`;

ALTER TABLE `product_rating` ADD `email` VARCHAR(255) NOT NULL AFTER `reviewer`;

ALTER TABLE `product_rating` CHANGE `user_id` `user_id` INT(11) NULL DEFAULT NULL;
