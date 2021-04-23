#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Temporibus aliquid vero quisquam molestias ab cumque. Et earum qui id enim similique et. Et eos saepe ut iste rerum velit. Repudiandae aut libero non ', '2013-10-19 06:44:41', '2014-08-16 17:33:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Aut et repellendus molestiae omnis. Eum eum corrupti porro molestiae. Autem voluptatem doloribus quia.', '2021-03-26 05:53:02', '2017-01-08 02:47:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Ipsam nesciunt molestias sed et rem. Ut autem provident voluptatibus nulla. Voluptas ut sit sit rerum. Recusandae saepe in ut et.', '2015-12-19 03:30:18', '2013-04-10 21:56:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Quis voluptatum necessitatibus quae dolor. Ex mollitia nesciunt qui consequuntur aut ea repellendus. Cum ullam est est quia molestias voluptas.', '2017-09-22 21:20:30', '2020-06-05 17:07:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Ut magnam distinctio beatae autem qui occaecati. Consequatur sed veritatis aliquid neque voluptatibus odit et quibusdam. Nostrum fugiat est iure enim.', '2018-06-29 21:00:00', '2017-08-22 10:02:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Non cupiditate molestiae aut commodi mollitia aut quam. Quos unde omnis et culpa quia. Ut dolor dolores iure.', '2020-11-15 15:19:52', '2017-12-24 05:36:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Saepe dolores id qui sed nisi. Dolores reiciendis quisquam itaque earum id. Error vero nam quisquam voluptas repellendus assumenda placeat. Quibusdam ', '2016-06-22 07:45:41', '2015-01-03 16:21:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Enim aut nostrum dolore laboriosam eos velit sit. Et impedit aut dolorem eveniet distinctio vel temporibus non. Voluptatibus qui repellat sint officia', '2015-10-03 17:35:22', '2014-01-17 10:01:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Suscipit voluptatem minus quo autem harum voluptatum in voluptates. Ea velit rerum quae nulla quae ea eos. Magni deleniti hic debitis nesciunt et dese', '2012-11-18 18:19:36', '2016-01-17 10:17:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Voluptatem quisquam sed vel sint perferendis enim. Sit aut est ex temporibus voluptas deserunt excepturi. Amet qui expedita autem ut. Eos repudiandae ', '2016-09-04 02:52:31', '2019-10-06 11:59:02');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2017-01-25 06:56:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '2013-07-24 14:50:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2014-05-24 13:40:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2020-01-05 10:13:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2014-01-17 11:33:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2015-03-01 12:20:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2014-04-25 18:32:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '2013-12-01 12:52:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2018-08-30 15:38:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2013-10-30 00:06:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2016-12-10 00:32:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2014-01-16 13:39:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2016-07-16 03:14:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2019-04-14 19:24:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2015-07-05 17:26:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2018-12-11 02:43:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2011-07-31 06:07:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '2019-03-14 02:06:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '2015-09-11 12:37:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2013-08-03 22:01:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2018-11-11 06:11:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '2019-12-25 16:58:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2020-02-03 15:59:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2017-06-20 21:01:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2021-04-07 14:17:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2016-05-20 20:37:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2020-08-31 12:31:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2013-07-03 12:49:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '2011-08-14 09:10:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2020-04-11 01:02:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2016-03-04 23:45:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2012-11-10 20:53:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2016-11-16 13:43:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2012-03-24 02:59:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2020-07-20 01:15:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2015-10-05 17:07:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2020-07-31 16:14:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '2017-10-14 14:58:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2015-06-09 14:54:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2018-09-26 11:29:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2018-07-18 08:12:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '2016-12-14 06:44:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2012-05-10 05:15:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2013-11-16 12:35:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2013-06-07 19:04:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '2018-11-05 19:05:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2014-06-27 00:29:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2012-05-31 21:44:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2012-12-20 06:58:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2017-06-24 23:18:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2012-10-17 18:52:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '2019-12-24 04:19:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2016-02-05 03:16:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2013-08-24 13:04:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2015-12-12 18:17:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2011-09-28 11:23:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2014-10-22 01:31:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '2017-05-09 22:40:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2019-07-14 16:04:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2013-12-11 13:55:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2019-02-05 16:25:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '2021-02-18 04:09:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2014-03-16 17:01:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2019-03-26 23:05:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2020-02-21 16:57:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2019-06-30 03:13:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2013-07-11 22:07:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '2017-07-12 08:07:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2011-09-25 12:26:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2011-11-18 06:26:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2018-12-25 10:44:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '2021-01-22 02:24:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2014-05-09 19:05:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2018-05-04 16:20:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2019-04-09 13:54:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '2018-06-17 10:11:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2020-11-16 20:31:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2020-01-29 07:04:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2019-09-06 05:42:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2014-08-04 08:38:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2015-04-01 21:26:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2019-08-26 06:09:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2014-01-30 11:36:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2013-08-13 10:58:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2015-09-11 18:02:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2012-09-13 08:22:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2020-10-14 09:21:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '2020-03-08 16:25:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2017-01-12 22:29:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2020-07-09 07:26:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2013-01-11 17:25:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2019-09-18 06:52:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2015-05-29 21:36:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2013-05-29 09:45:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2016-12-15 16:40:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '2013-02-27 03:05:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2011-04-25 05:36:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '2015-07-03 16:22:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2019-09-04 03:21:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2015-11-08 01:06:32');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2017-10-14 10:24:22', '2012-10-15 10:00:00', '2019-12-15 17:23:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2017-09-07 23:37:28', '2016-05-28 21:09:45', '2019-06-01 07:38:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2012-04-10 18:49:31', '2014-09-16 05:24:23', '2014-10-11 01:27:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2016-02-11 09:10:29', '2014-03-02 23:32:57', '2016-03-09 10:05:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '2012-01-18 12:44:56', '2017-12-02 08:10:44', '2012-03-07 20:24:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 1, '2019-08-25 01:09:31', '2014-05-30 04:15:15', '2019-05-26 00:28:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 2, '2019-05-16 02:50:12', '2021-03-08 19:46:14', '2015-09-13 07:25:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 3, '2017-09-21 12:56:23', '2015-09-23 11:00:19', '2015-12-23 07:24:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 4, '2011-12-23 19:14:18', '2014-11-26 06:25:31', '2020-04-18 12:05:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 5, '2016-12-31 04:02:34', '2015-11-26 09:40:44', '2018-06-25 16:22:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2011-05-19 00:10:58', '2015-02-07 09:29:45', '2015-12-30 12:23:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '2016-04-12 18:38:46', '2012-02-14 05:02:35', '2015-05-06 13:06:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 3, '2021-04-11 03:50:05', '2015-12-29 00:06:44', '2020-06-06 05:28:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 4, '2014-02-06 06:07:19', '2011-05-21 23:08:33', '2014-09-17 11:12:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 5, '2015-07-07 19:40:16', '2011-10-04 11:36:50', '2016-01-23 11:51:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '2013-07-23 14:42:31', '2018-05-15 23:45:35', '2018-01-08 11:49:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '2017-07-03 03:56:04', '2017-05-16 12:30:22', '2012-09-08 11:29:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '2011-11-24 04:16:59', '2012-10-19 03:56:36', '2020-09-29 13:18:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 4, '2011-09-14 01:19:12', '2020-05-08 13:47:30', '2021-04-17 00:40:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 5, '2016-02-26 23:57:40', '2020-03-11 15:28:33', '2015-08-02 15:00:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '2011-10-16 08:40:24', '2015-10-15 20:32:34', '2017-08-25 11:04:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '2014-04-06 22:59:23', '2020-12-22 18:51:07', '2021-03-16 03:02:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 3, '2011-12-16 15:00:25', '2020-01-05 11:42:21', '2019-11-17 18:26:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '2020-10-11 11:52:44', '2018-12-07 20:46:48', '2020-04-24 06:16:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 5, '2013-11-30 08:50:05', '2013-07-25 17:02:54', '2019-09-03 18:34:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 1, '2011-10-09 08:49:26', '2016-11-04 15:18:11', '2020-02-21 06:11:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 2, '2011-08-25 19:09:43', '2014-03-30 12:11:35', '2019-10-10 00:49:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 3, '2014-08-06 08:01:28', '2012-08-10 22:50:20', '2015-07-08 19:57:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 4, '2017-09-01 09:35:02', '2014-08-24 22:34:48', '2019-07-09 03:27:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 5, '2014-07-17 01:39:51', '2012-11-03 14:28:28', '2017-05-14 18:58:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2015-07-17 01:07:39', '2012-03-04 22:51:46', '2013-09-04 07:43:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '2018-09-06 21:41:39', '2021-01-21 06:45:53', '2018-07-31 21:38:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2014-04-06 22:31:31', '2020-11-08 15:29:37', '2012-04-25 11:28:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 4, '2015-04-26 02:38:18', '2016-09-25 22:55:01', '2019-03-20 18:56:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 5, '2017-03-24 20:06:24', '2013-09-09 03:56:19', '2013-05-14 18:41:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 1, '2016-03-30 00:13:23', '2015-09-05 03:41:11', '2017-01-25 13:05:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 2, '2019-04-30 18:13:35', '2016-10-22 10:09:26', '2013-11-06 11:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 3, '2019-12-21 23:42:59', '2018-01-31 18:03:31', '2016-02-27 16:36:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 4, '2015-02-22 03:22:53', '2012-08-03 15:30:53', '2016-07-08 03:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 5, '2019-05-22 03:20:44', '2020-04-08 19:48:48', '2018-04-16 11:38:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '2015-02-28 18:50:23', '2016-09-01 10:32:09', '2018-12-23 13:56:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '2012-10-05 14:49:48', '2017-11-06 05:43:21', '2015-02-26 05:44:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 3, '2019-11-09 03:20:24', '2019-06-06 09:45:46', '2019-12-25 21:19:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 4, '2016-12-24 11:01:05', '2012-08-03 00:19:16', '2013-12-02 17:38:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 5, '2018-02-07 00:30:50', '2019-06-12 13:56:47', '2011-06-27 19:05:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '2019-07-19 19:43:00', '2021-03-08 12:50:45', '2013-02-08 02:00:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2015-09-21 16:16:24', '2015-02-11 23:06:58', '2018-08-24 01:04:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2015-12-19 20:13:45', '2012-12-16 22:26:52', '2015-02-05 16:58:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 4, '2019-09-08 02:22:19', '2011-07-04 17:54:00', '2017-06-09 13:24:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 5, '2014-02-01 14:09:43', '2018-01-03 10:01:13', '2014-04-14 19:59:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '2020-05-14 23:28:27', '2015-01-05 07:08:40', '2021-02-05 13:51:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '2017-08-30 20:30:00', '2014-08-05 23:30:23', '2013-12-25 18:30:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 3, '2017-01-19 20:46:22', '2018-10-27 12:48:25', '2011-09-03 14:13:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 4, '2012-07-04 22:52:48', '2018-03-30 02:37:00', '2019-06-28 08:48:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 5, '2018-11-17 04:25:52', '2013-02-15 13:46:06', '2015-12-31 18:30:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 1, '2014-05-09 21:38:50', '2018-07-28 14:21:47', '2018-02-01 06:40:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 2, '2012-12-11 02:50:38', '2017-06-29 20:28:09', '2018-07-06 12:47:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 3, '2013-12-11 01:59:45', '2011-10-10 11:01:06', '2020-12-08 05:46:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 4, '2014-07-31 06:57:54', '2017-02-07 20:12:58', '2014-01-15 01:32:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 5, '2021-01-03 18:24:25', '2013-09-17 18:43:28', '2012-11-12 19:54:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2012-05-02 01:16:09', '2019-08-11 06:06:35', '2020-11-08 19:17:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2020-08-28 10:49:30', '2016-09-01 02:42:10', '2012-03-29 03:45:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '2017-03-25 08:29:48', '2018-05-27 15:31:45', '2021-01-20 11:00:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 4, '2020-08-31 07:00:57', '2021-02-28 01:00:45', '2011-04-27 00:31:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 5, '2020-05-11 20:06:43', '2021-04-01 20:49:10', '2011-08-06 05:10:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 1, '2014-05-25 08:13:51', '2014-12-11 10:16:47', '2019-07-23 23:52:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 2, '2019-02-13 03:27:12', '2019-03-05 13:19:34', '2015-07-13 03:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 3, '2013-08-19 14:34:27', '2017-01-06 06:58:53', '2016-06-02 11:11:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 4, '2019-02-03 10:29:05', '2016-12-30 07:34:41', '2011-12-17 19:29:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 5, '2016-02-03 10:18:17', '2014-02-04 03:53:09', '2019-11-30 02:33:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '2012-04-30 08:31:14', '2013-05-16 10:46:50', '2012-05-01 23:14:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '2020-06-24 03:11:08', '2020-02-13 15:39:59', '2012-01-02 20:48:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '2015-02-12 13:45:55', '2015-12-13 01:57:16', '2020-08-21 10:46:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 4, '2013-01-17 11:48:32', '2017-10-19 09:17:42', '2017-01-17 05:50:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 5, '2019-04-14 21:02:54', '2020-04-07 04:58:56', '2017-03-08 04:33:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 1, '2012-08-08 16:00:15', '2016-05-24 15:36:38', '2019-09-21 21:24:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 2, '2016-12-20 11:04:35', '2015-02-24 15:46:43', '2014-04-09 20:48:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 3, '2013-02-05 03:32:11', '2018-10-01 05:24:16', '2018-11-12 22:05:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 4, '2012-03-29 07:52:01', '2019-07-08 12:03:05', '2020-02-16 05:28:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 5, '2013-10-30 07:44:20', '2011-06-05 12:29:27', '2016-01-26 16:20:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '2019-05-15 16:46:37', '2017-04-28 16:10:06', '2019-04-27 20:12:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '2015-07-24 23:12:34', '2017-05-06 04:33:41', '2018-11-27 13:59:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 3, '2014-07-05 16:17:40', '2016-09-16 12:14:17', '2015-01-26 16:36:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 4, '2012-04-10 12:05:52', '2015-03-08 16:00:00', '2020-05-31 11:43:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 5, '2013-10-03 06:12:06', '2011-10-22 15:22:07', '2018-10-14 02:00:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 1, '2011-09-06 05:06:07', '2019-09-03 19:45:37', '2018-06-19 15:28:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 2, '2013-02-24 13:14:49', '2015-09-05 03:32:59', '2017-11-10 05:27:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 3, '2014-08-04 03:51:33', '2014-01-13 01:02:42', '2017-04-29 21:40:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 4, '2013-01-06 11:16:37', '2021-04-11 17:05:00', '2015-12-25 08:26:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 5, '2018-01-20 22:22:34', '2020-08-21 19:09:44', '2015-02-15 07:31:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2016-05-05 23:06:08', '2019-10-03 05:24:12', '2014-03-28 01:10:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '2012-02-20 15:12:00', '2020-02-03 10:36:55', '2013-10-23 18:27:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '2011-06-28 20:56:26', '2017-08-13 03:45:10', '2020-01-23 13:29:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 4, '2020-08-04 10:00:15', '2014-11-09 00:25:57', '2017-10-23 00:40:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 5, '2016-01-06 18:05:33', '2017-03-14 22:58:09', '2017-12-19 21:33:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 1, '2019-05-11 13:52:54', '2021-01-20 20:57:15', '2016-10-08 01:10:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 2, '2012-06-28 10:34:20', '2017-11-22 11:58:08', '2015-12-12 17:35:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 3, '2013-02-03 04:31:16', '2011-09-20 06:27:47', '2017-06-13 10:06:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 4, '2015-02-18 17:11:53', '2013-09-18 12:34:51', '2011-10-10 08:05:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 5, '2021-03-24 20:04:26', '2015-07-16 03:55:08', '2020-10-05 10:38:20');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'nostrum', '2014-11-03 22:01:13', '2015-12-07 16:34:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'reiciendis', '2016-11-20 17:25:11', '2014-08-05 05:04:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'harum', '2011-11-13 09:53:45', '2013-01-22 05:28:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'facere', '2012-04-16 02:46:22', '2014-08-18 07:15:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'inventore', '2020-04-09 12:17:35', '2016-01-21 09:42:14');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'http://prohaska.com/', 335, NULL, 1, '2019-06-02 04:16:27', '2020-07-31 12:01:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'http://www.harberhagenes.com/', 0, NULL, 2, '2019-12-10 19:41:20', '2011-05-27 21:24:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'http://www.cummeratalehner.com/', 2, NULL, 3, '2012-09-07 20:47:19', '2021-01-16 01:42:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'http://www.swaniawskiboyer.com/', 509, NULL, 4, '2020-02-06 12:40:26', '2015-01-21 06:48:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'http://schmidtcarter.com/', 339906764, NULL, 5, '2013-07-17 09:13:51', '2013-12-22 04:29:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'http://nolanbauch.info/', 65, NULL, 1, '2016-08-17 14:54:14', '2013-04-12 04:32:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'http://www.bernhard.com/', 49182, NULL, 2, '2016-02-11 08:45:40', '2019-11-02 17:04:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'http://www.fahey.com/', 956, NULL, 3, '2016-12-28 04:06:15', '2013-02-23 03:12:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'http://reilly.com/', 3, NULL, 4, '2019-01-16 12:04:11', '2013-06-22 06:40:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'http://www.wisozkhaag.com/', 625150854, NULL, 5, '2015-05-19 14:41:10', '2012-07-03 03:37:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'http://parker.com/', 8, NULL, 1, '2019-05-25 19:03:58', '2019-12-18 14:57:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'http://strosin.com/', 0, NULL, 2, '2012-03-25 01:28:02', '2015-09-08 15:02:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'http://www.schiller.com/', 34, NULL, 3, '2019-11-01 07:56:49', '2019-01-03 09:21:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'http://mante.biz/', 0, NULL, 4, '2015-07-08 22:42:33', '2020-05-25 03:08:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'http://www.naderkautzer.com/', 163189, NULL, 5, '2011-05-29 12:47:11', '2013-05-24 01:53:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'http://hamill.com/', 31, NULL, 1, '2016-01-29 17:38:51', '2016-12-23 14:46:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'http://www.stokes.com/', 5, NULL, 2, '2020-03-21 09:56:25', '2015-02-17 15:55:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'http://zieme.com/', 79512, NULL, 3, '2020-06-07 20:38:55', '2016-09-22 07:03:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'http://www.padberg.net/', 24596, NULL, 4, '2021-01-17 06:43:18', '2017-03-31 05:39:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'http://torphy.com/', 80, NULL, 5, '2018-01-24 14:20:57', '2014-09-28 10:00:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'http://www.wittingjones.com/', 1515, NULL, 1, '2014-09-23 22:53:35', '2020-07-03 06:26:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'http://vonrueden.info/', 0, NULL, 2, '2014-07-15 09:58:35', '2012-02-27 06:21:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'http://dibbert.com/', 591, NULL, 3, '2012-07-16 07:00:59', '2017-10-29 13:02:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'http://www.mckenzie.com/', 345, NULL, 4, '2015-10-07 09:38:16', '2018-06-28 22:43:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'http://www.farrell.info/', 52756, NULL, 5, '2020-12-04 13:31:33', '2013-08-12 02:58:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'http://hauckyundt.net/', 9716, NULL, 1, '2013-05-01 14:09:05', '2020-02-25 04:02:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'http://www.kassulkegrant.biz/', 60425481, NULL, 2, '2016-12-18 15:28:33', '2018-03-27 00:28:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'http://robelokuneva.org/', 564723778, NULL, 3, '2019-01-19 05:45:28', '2018-03-07 04:54:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'http://www.croninvon.net/', 9, NULL, 4, '2017-01-02 02:31:17', '2014-10-14 19:21:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'http://www.goyette.com/', 64530, NULL, 5, '2020-12-30 09:34:32', '2014-07-07 20:31:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'http://mertz.com/', 751526127, NULL, 1, '2013-04-11 03:08:03', '2016-05-20 19:01:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'http://brekke.info/', 67935514, NULL, 2, '2014-03-24 11:05:10', '2015-07-05 16:35:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'http://rowefahey.com/', 5297, NULL, 3, '2019-10-24 10:44:53', '2020-01-06 22:25:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'http://greenfelderlueilwitz.com/', 0, NULL, 4, '2018-03-13 02:22:37', '2018-08-03 07:07:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'http://beatty.biz/', 3696523, NULL, 5, '2013-07-20 16:36:18', '2019-01-07 15:33:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'http://kuphal.org/', 110712727, NULL, 1, '2014-12-30 18:59:52', '2014-12-03 02:18:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'http://www.abbott.info/', 920, NULL, 2, '2017-09-06 23:17:20', '2011-10-11 18:33:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'http://www.padbergsauer.net/', 0, NULL, 3, '2019-06-05 23:32:45', '2019-03-11 07:21:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'http://kemmerhoppe.com/', 96, NULL, 4, '2011-11-14 04:20:20', '2015-10-30 00:29:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'http://jerde.biz/', 20, NULL, 5, '2020-05-20 16:09:57', '2011-06-10 22:24:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'http://kohleryundt.com/', 1192, NULL, 1, '2013-09-13 04:59:40', '2020-01-27 09:32:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'http://pagac.com/', 8691455, NULL, 2, '2019-09-05 15:37:42', '2018-06-21 15:31:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'http://www.mitchell.com/', 55165, NULL, 3, '2013-07-01 04:21:45', '2019-11-17 18:18:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'http://langoshbeatty.net/', 65546516, NULL, 4, '2018-10-07 02:18:11', '2017-08-17 01:37:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'http://koss.com/', 39750, NULL, 5, '2015-12-14 09:50:40', '2019-06-28 00:57:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'http://beattywilkinson.info/', 0, NULL, 1, '2015-08-10 23:02:54', '2015-12-26 22:35:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'http://www.wildermanharvey.info/', 0, NULL, 2, '2013-07-07 01:43:12', '2021-01-25 09:49:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'http://www.gorczany.info/', 80226599, NULL, 3, '2011-12-19 16:08:05', '2017-11-15 16:48:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'http://www.okuneva.com/', 0, NULL, 4, '2019-03-22 21:28:11', '2019-04-12 07:22:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'http://www.doyleturner.com/', 47, NULL, 5, '2011-09-03 14:20:35', '2019-01-22 13:49:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'http://www.friesen.biz/', 3448, NULL, 1, '2012-11-03 12:54:58', '2018-08-10 05:36:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'http://strosin.net/', 61312, NULL, 2, '2013-12-31 01:46:43', '2017-06-24 21:14:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'http://luettgen.biz/', 864616804, NULL, 3, '2018-01-11 06:45:20', '2021-01-14 20:40:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'http://batz.com/', 9660002, NULL, 4, '2014-08-17 07:23:12', '2011-08-07 01:33:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'http://mayert.com/', 326619674, NULL, 5, '2020-05-08 10:42:21', '2013-08-13 23:25:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'http://nolan.com/', 9351, NULL, 1, '2012-03-30 07:29:09', '2019-06-17 15:09:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'http://bayerluettgen.biz/', 0, NULL, 2, '2020-07-30 00:39:24', '2018-02-09 20:25:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'http://www.treuteljast.com/', 156444112, NULL, 3, '2021-01-14 21:40:30', '2014-09-26 17:15:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'http://www.schuster.com/', 317736, NULL, 4, '2014-07-22 01:23:56', '2018-08-18 15:01:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'http://runolfsdottir.org/', 361, NULL, 5, '2013-06-28 18:26:18', '2014-03-25 18:09:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'http://hellerbode.com/', 0, NULL, 1, '2021-02-07 19:13:56', '2015-01-07 14:46:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'http://mayer.com/', 18746, NULL, 2, '2017-02-14 21:26:35', '2016-10-15 21:54:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'http://swaniawski.com/', 17, NULL, 3, '2013-04-05 19:04:15', '2011-05-11 07:39:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'http://wolf.biz/', 0, NULL, 4, '2012-07-21 08:34:28', '2019-01-06 23:10:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'http://parisian.biz/', 34770210, NULL, 5, '2019-08-18 01:34:23', '2018-08-27 05:57:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'http://www.connellydubuque.com/', 4, NULL, 1, '2011-10-24 08:53:02', '2011-05-06 07:03:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'http://ruecker.net/', 72490926, NULL, 2, '2015-07-30 05:05:03', '2014-10-06 11:14:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'http://www.kuphal.com/', 5163624, NULL, 3, '2011-08-28 14:39:00', '2020-04-14 18:44:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'http://hartmannflatley.biz/', 47, NULL, 4, '2020-05-07 00:46:22', '2012-03-05 21:05:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'http://pollich.net/', 39079, NULL, 5, '2020-02-22 12:12:44', '2017-07-30 06:21:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'http://emmerich.com/', 15, NULL, 1, '2020-07-09 13:31:27', '2017-04-06 08:56:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'http://bins.com/', 14, NULL, 2, '2011-08-17 23:16:20', '2021-03-03 04:24:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'http://www.homenicklesch.com/', 224, NULL, 3, '2013-01-08 03:36:38', '2013-03-24 03:36:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'http://www.morarreichert.net/', 12, NULL, 4, '2017-12-27 14:18:15', '2017-03-14 13:29:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'http://graham.com/', 8591, NULL, 5, '2015-12-31 20:45:04', '2013-10-29 22:19:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'http://kulasmoore.com/', 892, NULL, 1, '2015-12-11 02:15:47', '2017-05-22 05:58:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'http://simonissmith.com/', 0, NULL, 2, '2016-12-29 04:59:38', '2015-09-11 02:59:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'http://gleichner.com/', 36, NULL, 3, '2015-01-10 06:34:43', '2012-12-10 18:17:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'http://stokes.com/', 32668648, NULL, 4, '2013-04-30 15:44:24', '2014-06-19 19:54:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'http://www.hoppe.org/', 890309175, NULL, 5, '2017-02-15 04:20:51', '2019-09-07 17:56:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'http://rathherman.com/', 0, NULL, 1, '2011-04-25 22:26:17', '2013-04-09 11:54:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'http://www.braunmorar.com/', 90, NULL, 2, '2013-06-17 17:11:04', '2019-12-06 09:36:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'http://rueckerpouros.com/', 0, NULL, 3, '2014-01-17 12:28:58', '2017-10-18 00:13:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'http://www.murphyberge.info/', 9218, NULL, 4, '2017-08-14 08:08:06', '2017-01-27 18:20:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'http://hermann.com/', 23, NULL, 5, '2012-11-28 09:33:57', '2020-09-29 17:55:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'http://www.barrowsprice.com/', 14, NULL, 1, '2019-05-31 05:37:29', '2013-06-17 10:15:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'http://farrellkoss.com/', 89893, NULL, 2, '2019-04-09 07:44:32', '2017-08-07 18:28:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'http://www.nikolaus.info/', 3761230, NULL, 3, '2012-07-28 14:40:31', '2013-12-25 09:31:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'http://www.hodkiewicz.com/', 8027727, NULL, 4, '2018-07-26 08:06:01', '2012-11-12 12:32:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'http://ullrichjenkins.net/', 3, NULL, 5, '2014-12-13 07:19:06', '2013-01-14 01:50:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'http://www.sporer.com/', 630, NULL, 1, '2019-11-12 17:32:51', '2015-10-26 22:27:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'http://www.goldnerlubowitz.org/', 6568, NULL, 2, '2014-03-03 09:33:28', '2012-12-11 03:15:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'http://larson.biz/', 719, NULL, 3, '2017-04-25 21:47:22', '2019-12-24 21:22:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'http://www.zemlak.com/', 0, NULL, 4, '2016-08-12 14:34:21', '2017-12-28 19:31:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'http://www.pagac.com/', 352089741, NULL, 5, '2013-06-08 02:18:24', '2016-01-26 16:18:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'http://doyleaufderhar.biz/', 91671422, NULL, 1, '2011-12-03 16:46:06', '2018-10-22 22:45:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'http://halvorsonboyer.com/', 582678446, NULL, 2, '2015-03-25 06:48:19', '2012-05-03 21:53:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'http://gislason.com/', 4189950, NULL, 3, '2012-09-10 03:47:00', '2014-07-18 18:29:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'http://swift.com/', 0, NULL, 4, '2020-12-11 18:15:26', '2021-01-03 19:13:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'http://berge.com/', 74149202, NULL, 5, '2020-05-02 00:05:14', '2011-09-10 17:18:08');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'non', '2018-09-08 03:59:13', '2020-06-30 10:20:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'placeat', '2015-09-29 02:44:11', '2015-06-27 05:49:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'odio', '2013-06-12 03:49:27', '2014-01-28 13:33:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'distinctio', '2020-06-09 14:31:18', '2017-02-27 08:19:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'illum', '2013-12-15 22:31:35', '2017-09-16 20:57:55');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Est voluptates aliquid doloribus sapiente non perspiciatis. Molestias tempora autem pariatur. Delectus non officia ullam ab delectus harum. Sint consequatur voluptas temporibus ducimus distinctio.', 0, 0, '2012-05-03 20:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Dolor laborum labore aut similique iure. Alias rerum facere eligendi porro.', 1, 0, '2011-06-09 06:17:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Possimus rerum beatae aspernatur ut sit. Cumque quidem pariatur ut ex unde corrupti inventore. Sit consectetur quas sint vel.', 1, 1, '2016-07-27 16:21:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Est officia dolor voluptatem consequatur nihil repellat. Itaque laboriosam non omnis aut. Beatae eligendi exercitationem ab expedita quo porro illo.', 0, 0, '2013-03-15 23:49:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Eos minima aperiam quis ratione. Suscipit ab omnis quaerat voluptas suscipit corrupti. Fuga corrupti facilis nihil et omnis.', 1, 1, '2017-01-11 05:10:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Quo id qui eligendi rerum sed non perspiciatis. Voluptatem est reiciendis qui. Voluptatem non rerum consequuntur et tempora vitae recusandae. Ipsam repellat expedita commodi harum.', 1, 1, '2017-04-19 04:19:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Aut minus consectetur optio alias distinctio ab. Iure ea voluptatem asperiores non laborum et quia aperiam. Voluptas iusto saepe quaerat ipsum pariatur et. Magnam molestiae non sapiente occaecati.', 1, 0, '2014-04-19 10:59:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Aperiam deleniti iste soluta voluptatem voluptatem sed. Molestiae nostrum harum ut voluptatem iste quidem. Nisi officiis delectus aut facilis. Iure molestiae est in nulla sed praesentium et.', 0, 1, '2017-10-06 06:39:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Modi culpa atque labore numquam et blanditiis. Nisi omnis nisi ipsam aspernatur doloremque omnis omnis. Tenetur aspernatur tempora reprehenderit.', 1, 0, '2011-06-10 05:18:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Aut aut asperiores omnis dolores eos laudantium consequatur. Occaecati nulla perspiciatis sint voluptates et iste corporis. Voluptatem saepe error et error pariatur.', 0, 0, '2018-12-25 22:33:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Dolor commodi unde id tempore. Architecto minus aut aut facere suscipit vitae rerum. Ut dolorum et rerum id exercitationem. Suscipit omnis distinctio quis et delectus et.', 1, 0, '2014-06-17 11:36:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Ut a hic expedita consequuntur sit. Ut ut magni cupiditate fugit id atque ea. Blanditiis quo doloribus minima tempore doloribus ea maiores quibusdam.', 1, 0, '2018-03-11 04:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Reiciendis repudiandae similique qui quibusdam dolorem. Incidunt rerum saepe sed quis. Voluptatum doloribus maxime molestias et odio tempora.', 0, 0, '2013-06-20 09:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Eaque est excepturi in veniam laboriosam enim iste odio. Neque deserunt eaque beatae aliquid consequuntur id. Doloribus iste qui eos qui illo ea.', 0, 0, '2014-04-29 10:26:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Omnis expedita et molestiae sint voluptatem quo. Ut fugiat optio ipsum. Iure doloribus dicta est id optio voluptatibus.', 0, 0, '2020-01-29 03:37:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Alias alias sit nulla voluptatibus illo. Doloremque suscipit sint ut et quis reprehenderit molestiae. Magni voluptatem facere eius beatae pariatur magni.', 1, 1, '2012-07-02 10:27:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Est ea labore vitae corrupti distinctio explicabo deleniti voluptatem. Eveniet dolores iste recusandae nisi.\nSapiente atque et iure impedit fugiat. Nemo magnam id sed. Omnis tempore aut quos ad rem.', 1, 1, '2015-09-30 23:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Neque neque quas aliquid voluptas tenetur recusandae sed. Suscipit ducimus dolores atque et. Aut quam iusto quia optio. Debitis nesciunt in est illo eum eius molestias dolorum.', 0, 1, '2015-08-08 05:36:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Ipsam rem molestiae fugiat. Alias a excepturi laboriosam dolores id dicta dignissimos. Consequatur dolor quaerat facere reprehenderit. Veniam explicabo nihil sed rerum temporibus sunt.', 1, 0, '2021-01-10 00:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Nihil at maxime est nulla commodi et alias. Asperiores ut nostrum velit aspernatur ipsam quod est. Ipsum fugiat et provident. Eaque id atque autem in quos voluptas.', 1, 1, '2020-01-31 09:24:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Quo labore dolorum eveniet qui. Molestias omnis dicta voluptatem sunt. Accusamus deserunt dolor nobis nisi molestias. Delectus quasi earum error ut aliquid.', 0, 1, '2019-02-02 17:57:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Dolores et ea harum. Maiores delectus voluptatem rerum. Velit fugit et unde in et mollitia omnis.', 1, 1, '2019-10-10 22:56:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Doloremque ut totam et autem molestiae. Voluptatem ex qui et aspernatur.', 0, 1, '2018-07-10 02:03:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Rerum non veritatis beatae est corporis animi. Aut laudantium cumque maxime tempore non aut perferendis.', 1, 0, '2014-08-13 22:14:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Repudiandae repellat asperiores fugiat atque id consequatur vel sed. Adipisci quo eveniet aut maxime vel molestiae. Sed ex ut nulla adipisci ipsum doloribus iusto aut.', 1, 0, '2015-05-28 21:47:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Quis mollitia velit delectus dolores voluptates non. Sint ut officiis quasi aut aut. Suscipit tempore quae laboriosam voluptatibus cupiditate. Repellendus nemo ipsa aut neque.', 0, 0, '2014-10-19 13:03:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Qui unde iure quam nihil aperiam. Eius porro iure labore et voluptatem non illum.', 0, 0, '2012-04-07 18:17:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Sit quam qui recusandae enim. Nostrum qui molestiae nemo. Blanditiis accusamus et veniam aperiam possimus recusandae. Illo architecto voluptas perferendis saepe ad fugit.', 1, 1, '2021-04-15 10:17:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Doloribus vitae omnis autem veritatis. Nobis illo voluptatem cumque officiis est occaecati. Veniam sed laboriosam quae dolorem sequi.', 1, 1, '2019-02-10 07:32:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Minima nobis sunt in omnis possimus. Repellat exercitationem reprehenderit rem ea et doloribus. Enim adipisci sapiente eligendi et in numquam.', 1, 0, '2021-03-17 16:00:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Velit dolorem libero corrupti possimus ut est. Earum sed velit architecto eum perferendis ut et veniam.', 0, 1, '2019-10-22 21:52:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Consequatur qui enim reprehenderit placeat nostrum est. Aut molestiae officia omnis perferendis. Rerum consequatur consectetur inventore.', 1, 1, '2020-11-01 14:40:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Voluptatem impedit delectus libero non. Sit ex aliquam molestiae qui iusto reprehenderit nulla. Ea iusto suscipit minus. A repudiandae aut omnis libero.', 0, 0, '2018-12-17 05:35:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Consequuntur accusamus ipsa ipsam aliquam pariatur. Nisi saepe aut quis nulla sed dicta. Maxime quae ut soluta dolore aut.', 0, 0, '2015-03-30 17:56:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Consequatur et ex fugit et provident asperiores corrupti. Quo temporibus fuga eum commodi libero iusto.', 0, 1, '2015-05-04 10:45:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Dolorem optio exercitationem aperiam. Ut amet nihil cum et. Dignissimos modi velit excepturi iusto. Enim laborum magnam harum.', 1, 0, '2019-09-10 04:26:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Dignissimos voluptates qui laborum nihil non possimus. Ut neque voluptas iste nihil. Nobis error quis voluptatibus neque facilis fugiat consectetur.', 1, 1, '2016-11-12 22:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Aspernatur omnis ut architecto illum quidem facilis minima. Molestias quo saepe totam quasi autem necessitatibus perferendis.', 1, 1, '2013-06-07 01:16:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Ipsum debitis incidunt vel labore dolores praesentium dicta quis. Occaecati voluptatem mollitia qui ipsam. Quas incidunt sed saepe. Consequatur nobis qui nisi quos.', 0, 1, '2015-09-06 16:59:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Accusamus eveniet rerum vel sed sed consequatur. Quod in et consequatur doloremque doloribus voluptatum beatae dolorem.', 1, 0, '2016-08-05 06:24:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Repellat nisi molestias non ea quia quis. Repellat rem dolor soluta. Aut veritatis voluptatem sit iusto explicabo reprehenderit distinctio.', 1, 0, '2012-03-12 12:14:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Amet error libero vel. Voluptatum nobis sed dolore. Sint temporibus porro quia molestiae non occaecati cumque. Quos eum doloribus exercitationem minima quia illo autem.', 0, 1, '2016-09-09 16:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Mollitia dolor cum aliquam dolorum perferendis ex. Dolores ullam aut veritatis repudiandae perspiciatis nihil iusto fugit. Dolorem sunt asperiores labore iure.', 0, 1, '2017-10-13 19:34:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Sit iste ullam culpa ab facilis et facere. Alias accusantium voluptatem deserunt soluta ut. Voluptate impedit quo ipsum voluptatibus.', 1, 0, '2014-09-23 09:37:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Aut tempora eligendi cumque eligendi. Excepturi voluptate sint distinctio natus sit. Voluptatum velit qui facere veniam doloribus.', 1, 0, '2016-01-30 02:25:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Sed labore eligendi rem dolores. Consectetur quos ipsum ut eum nisi qui. Quis reiciendis placeat dolor molestias omnis commodi maxime.', 1, 1, '2013-10-22 18:32:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Praesentium officiis incidunt qui porro temporibus dolorum veritatis. Quia repellat odio distinctio possimus eveniet sed. Et nobis nobis quia officiis perferendis vero itaque quasi.', 1, 0, '2016-03-22 06:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Dolores pariatur molestiae dolores quibusdam. Laudantium temporibus assumenda illum aut. Voluptate voluptas aperiam quis pariatur consequatur.', 0, 0, '2015-11-06 13:38:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Nemo fugiat soluta voluptatem autem asperiores. Quia optio voluptatem est quae est rem et. Laboriosam qui exercitationem magnam qui eum iure saepe.', 1, 0, '2018-10-23 04:05:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Non magni qui aut quam ipsa in. Possimus rerum enim et accusantium sint officia aliquid. Eveniet eaque sint tempora perspiciatis saepe eius magni. Dolor nobis laudantium dicta.', 1, 1, '2016-01-27 08:06:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Error tempora quia fuga enim sed omnis officia. Corporis quia ea facere quasi laborum eum vitae ratione. Voluptas assumenda voluptas impedit ut eius.', 0, 1, '2018-04-30 06:28:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Neque non soluta et aut quaerat voluptates. Praesentium ad velit id neque quam pariatur. Doloribus impedit minima distinctio. Hic perferendis repellendus in soluta enim expedita doloribus.', 0, 1, '2021-02-28 10:33:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Est sit quae nihil quia omnis. Facilis dolores non recusandae nobis explicabo recusandae quas. Nostrum illo iusto fugiat impedit.', 0, 0, '2011-09-25 10:17:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Modi qui hic facilis facere. Libero ad dolor qui molestiae. Odio aut quia rerum atque odit non. Eaque quod quod eos voluptatibus.', 1, 0, '2011-05-11 14:41:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Odio commodi quasi sint doloremque magnam in sed et. Veniam alias dolorem sit illum odio voluptatem. Nemo voluptatem laboriosam nihil occaecati veniam. Dolorem rerum mollitia debitis nihil.', 0, 0, '2012-05-17 15:29:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Quia itaque occaecati at. Consequatur sit nesciunt ut eum. Minima facilis sint natus ad harum. Eum sit eum tempore aliquam quis sit. Rerum tempora cum nemo ut magnam.', 1, 1, '2012-12-23 13:23:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Recusandae in veritatis qui eos laudantium blanditiis veniam. Fugiat qui voluptatum suscipit. Vero aut perferendis quis qui.', 1, 1, '2016-04-03 19:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Facere voluptatibus quia quis sequi commodi harum ut. Odio consequatur voluptates officiis ipsum vel. Quibusdam hic fuga quo. Omnis corrupti quia aspernatur qui omnis ut sit.', 1, 0, '2018-10-03 05:22:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Iste fugiat dolor et officia dicta dolorem eligendi. Id qui rem et voluptatem.\nLibero veniam dolorem qui pariatur. Ratione distinctio asperiores est quidem ducimus et dolor voluptatibus.', 1, 1, '2015-05-23 18:35:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Distinctio quia sint vel aut a. Maxime dignissimos sequi eum odio ipsa aut. Consequatur porro dolorum non sit deleniti. Est ratione omnis delectus sed architecto ut aperiam.', 0, 1, '2017-05-10 22:02:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Explicabo quasi ipsam nihil harum incidunt nihil. In rem non aliquam ex. Voluptatem provident et voluptatibus harum beatae. Omnis qui sequi eveniet.', 0, 1, '2019-11-05 01:16:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Eos est laudantium placeat nemo qui. Dolores dicta nihil aliquam ipsam sint tempore. Error dolor ea ut sequi. Est dolorum quasi enim.', 0, 0, '2013-08-10 08:06:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Quos hic delectus harum voluptatem. Et dolorum sit saepe ratione voluptas eum laboriosam. Et consequuntur id quaerat quia id. Pariatur qui quae culpa sit esse.', 0, 0, '2011-05-18 05:44:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Ab quis omnis nobis voluptas rem. Autem voluptas recusandae est et. Consequatur asperiores porro modi dicta totam harum similique.', 1, 1, '2020-07-03 21:47:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Corrupti quos autem quod velit iure asperiores. Rerum magnam accusamus aut sint omnis. Cumque ea amet sed inventore ullam voluptatem. Est delectus omnis quaerat et consequuntur.', 0, 0, '2011-05-21 05:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Dolore fugit sed beatae similique tempora qui. Quasi quo facere rerum magni ea omnis est. Et iste sapiente quaerat suscipit recusandae.', 0, 1, '2016-06-19 23:39:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Voluptatem et consequuntur architecto consequatur quo recusandae exercitationem. Dolorem molestiae sed culpa tempora facere quaerat. Aliquid necessitatibus earum et reprehenderit cum aliquid.', 1, 0, '2012-05-24 05:35:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Cum vel libero asperiores omnis dignissimos. Eaque ducimus quod laborum inventore est. Blanditiis et quibusdam voluptatem est excepturi sunt deleniti. Quis qui eaque quibusdam vero.', 1, 0, '2016-08-01 23:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Magnam in neque et eum quidem facilis reprehenderit. Est et blanditiis modi et quia saepe. Nobis praesentium animi aut ea voluptatum magni.', 0, 0, '2014-11-11 21:28:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Beatae numquam quia harum provident dolorum repellat reprehenderit. Eos delectus quibusdam eos maxime ut quos veritatis. Molestias illum non vero quasi dolore modi.', 0, 1, '2020-12-23 16:36:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Mollitia delectus libero et non cupiditate nostrum in. Fugit veritatis et qui et. Repellat dolore maxime tempora exercitationem quasi ea ipsa iusto.', 1, 1, '2014-06-07 15:20:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Sint at autem dolores incidunt sit placeat fugiat. Illum aut ut earum hic ut rerum. Dolor illum sit qui nobis. Aut sed rerum sit et.', 1, 1, '2013-10-11 15:51:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Qui voluptatibus iusto nihil et non ut. Voluptatem reprehenderit sit quis rerum aut error. Dolorum rerum at occaecati quam ab quos eaque et. Sit et perspiciatis est excepturi.', 0, 0, '2021-01-06 04:13:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Corporis suscipit aut laboriosam ipsam eos nesciunt a. Ea voluptas soluta laboriosam non impedit.\nDoloremque fugiat consequatur non at. Ut dolorem corrupti quae culpa dolorem.', 0, 1, '2020-06-14 09:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Vel ea tempora esse et enim. Aliquid dolores facilis sed ad dicta nam rerum.', 1, 0, '2021-02-14 03:52:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Nisi asperiores culpa quidem dignissimos quae. Quia recusandae ducimus iusto voluptatem aut quam explicabo. Quia et aut eum et at consequatur unde. Tempora quia in maxime modi ab consequatur animi.', 0, 1, '2016-02-29 15:25:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Aut ex molestias architecto ut incidunt. Sunt nisi a qui aut corrupti. Nesciunt quia nam recusandae velit voluptate adipisci.', 0, 0, '2013-08-17 05:36:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Fugit atque nesciunt aut consequatur fugiat. Voluptatibus nisi atque ipsum consectetur. Cum inventore tempore et eaque a deleniti.', 0, 1, '2019-10-14 08:11:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Dolore quibusdam molestias soluta consequatur sed quia. Quibusdam ad et impedit ipsam alias itaque. Sit cupiditate ea recusandae blanditiis quos.', 0, 0, '2013-03-23 15:40:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Similique possimus est vel et porro. Enim odio ut ex sed consequatur. Neque necessitatibus laboriosam iusto ratione.', 1, 1, '2011-11-19 05:18:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Debitis inventore non odio. Quibusdam quae aliquid tenetur mollitia impedit. Laborum iure sapiente vel velit iste iusto consequatur.', 1, 0, '2012-03-05 21:07:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Ducimus quisquam molestiae molestias quaerat. Eligendi at voluptatem occaecati est ut illum aliquam nobis. Quis delectus ut quo dolor voluptatem delectus temporibus quia.', 1, 0, '2016-08-07 17:29:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Autem repellendus corrupti omnis facere dicta ad. Blanditiis non pariatur ad rem. Aspernatur incidunt et consectetur impedit occaecati est est. Et laudantium aut dolore soluta sunt inventore eaque.', 1, 1, '2012-07-11 19:03:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Voluptas ut magni doloribus eius occaecati atque. Sunt quia tempore id deleniti blanditiis. Non ut consequatur aut delectus rerum. Et soluta beatae inventore est.', 0, 1, '2012-01-19 21:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'In qui occaecati saepe dolor. Voluptate laudantium quis reiciendis eum voluptate aut. Voluptas rerum voluptatem sit repellat eaque tempore consectetur. Placeat magnam corrupti aut ea consectetur.', 0, 0, '2012-09-24 12:53:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Quis id qui unde labore. Voluptatem deleniti minima quia quibusdam molestias. Placeat rerum at debitis in maxime. Veritatis quae vero rerum et. Omnis quasi molestiae quos ut labore.', 0, 1, '2015-10-13 21:10:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Error unde voluptatem id atque labore quidem facilis. Velit itaque qui sunt qui tenetur quas accusantium.', 1, 0, '2018-03-31 22:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Tempore quis explicabo at quia accusantium itaque. Veritatis occaecati distinctio optio non animi suscipit. Eius facilis illum aut accusamus nulla autem non. Ipsa est consequatur dolore totam.', 0, 0, '2014-03-01 06:24:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Aut reprehenderit earum quo qui molestiae omnis. Quibusdam facere quibusdam ea sapiente quis recusandae. Est vero doloremque ratione.', 0, 1, '2020-01-19 09:29:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Voluptatem iusto alias eaque sequi dicta ea rem culpa. Voluptatum odit voluptates nobis odio. Suscipit corrupti ut omnis adipisci error.', 0, 1, '2014-08-15 18:28:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Dolor id quisquam quis sed cumque. Eos sed velit et eligendi aliquid non.', 0, 0, '2013-11-01 20:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Sed vitae ullam et. Praesentium occaecati consequatur in et illo voluptatibus. Hic et incidunt reprehenderit asperiores ut beatae quisquam quia.', 0, 0, '2020-07-10 09:44:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Libero est cupiditate in. Autem sed qui eligendi veritatis deserunt. Officia hic natus dolore fugit aut. Aperiam laborum impedit cum omnis.', 1, 1, '2012-11-29 09:42:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Fugit est molestiae quibusdam praesentium ipsa ab. Porro aut et ab quibusdam.', 1, 0, '2011-10-30 20:03:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Quia reprehenderit sint aut et dolor et quisquam et. Omnis modi sunt quidem qui facilis ratione. Nisi quibusdam consectetur ut nemo labore dolor quisquam.', 0, 0, '2017-07-27 17:03:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Alias eveniet veritatis sit quas voluptate dignissimos totam. Doloribus omnis ut animi et nulla et. Ex ut ipsum consequatur voluptatem doloremque voluptas.', 0, 1, '2011-12-11 19:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Quia earum nam quis temporibus odio quaerat illo. Numquam ipsa ratione vero doloribus ut.', 1, 0, '2014-09-14 04:16:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Id et molestiae ab repudiandae assumenda cum libero. Sunt impedit unde rerum. Qui explicabo possimus et corrupti officia eum. Dignissimos voluptatem molestiae illo sed voluptatem porro numquam.', 0, 1, '2013-05-07 07:42:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Ipsa recusandae tempore nostrum voluptatibus. Et nihil est dolorem repellat nemo cum non. Dicta pariatur quasi numquam. In magnam voluptas necessitatibus sapiente.', 0, 0, '2015-11-28 05:42:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Nobis beatae quia est est est rem. Non id reiciendis eius fugit accusantium quae. Repudiandae cupiditate eligendi voluptatum explicabo.', 0, 0, '2017-08-19 00:52:34');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '1999-02-14', 'Durganstad', 'Micronesia', '2017-03-15 17:58:53', '2018-08-02 12:42:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1979-02-02', 'Port Shana', 'Algeria', '2021-04-09 15:11:39', '2012-11-09 04:10:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '2007-11-21', 'East Germaine', 'Philippines', '2020-07-26 22:19:01', '2017-10-30 09:28:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'f', '1970-07-17', 'South Jennifer', 'Chile', '2019-12-20 05:29:51', '2013-11-27 17:33:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '1996-10-26', 'Mercedestown', 'Botswana', '2012-09-20 01:21:53', '2012-05-17 05:45:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1988-12-14', 'Markustown', 'Sao Tome and Principe', '2012-09-04 22:54:26', '2019-04-19 11:20:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '2000-11-01', 'South Winnifred', 'Russian Federation', '2013-02-18 22:58:40', '2016-05-01 10:05:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '1991-08-12', 'Framiville', 'Netherlands', '2016-05-15 13:34:11', '2012-02-27 17:23:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '2011-02-22', 'Laurianeport', 'Mauritius', '2013-11-19 03:13:00', '2020-05-21 06:11:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1973-06-26', 'North Archstad', 'Mayotte', '2017-01-20 04:08:21', '2014-02-15 14:16:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '1971-09-07', 'Rempelview', 'Albania', '2017-04-24 01:16:33', '2013-09-10 02:04:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '2015-11-17', 'Wilmaland', 'India', '2014-01-25 04:30:45', '2014-01-31 07:00:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '2018-04-07', 'Port Haylee', 'Niger', '2018-11-28 02:51:59', '2017-08-03 01:55:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1986-09-02', 'Lake Barry', 'Lithuania', '2012-09-16 01:23:55', '2017-05-10 09:32:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '2006-06-02', 'Gleichnerfort', 'Brunei Darussalam', '2017-01-22 12:28:15', '2019-03-07 11:41:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1987-12-18', 'Lake Dandre', 'Saint Vincent and the Grenadines', '2017-08-29 21:52:26', '2015-03-30 20:09:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '2006-01-03', 'Port Fred', 'Eritrea', '2012-05-30 00:52:10', '2013-04-16 22:45:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '1994-01-27', 'North Robertatown', 'San Marino', '2020-05-21 09:31:33', '2012-05-11 09:54:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '1993-04-05', 'Elissaside', 'Israel', '2016-07-27 07:49:59', '2013-11-02 14:20:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2014-12-23', 'Christybury', 'Dominican Republic', '2020-08-21 21:57:07', '2016-05-04 07:26:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '1978-12-11', 'Francismouth', 'Armenia', '2018-08-07 10:23:56', '2019-03-20 07:40:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '1975-04-06', 'New Jewel', 'Algeria', '2017-05-22 06:27:04', '2012-06-23 07:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '2015-07-20', 'North Carriechester', 'Guatemala', '2016-04-03 18:09:00', '2015-01-25 21:25:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2020-05-25', 'East Wayne', 'Spain', '2020-05-22 14:05:39', '2014-05-29 05:42:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '2009-07-21', 'Sipesfurt', 'Puerto Rico', '2017-01-14 08:45:54', '2019-06-06 16:48:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '1995-10-14', 'Lake Millie', 'Denmark', '2012-09-19 01:10:07', '2013-12-29 19:42:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '1974-07-29', 'Mariannahaven', 'United Arab Emirates', '2019-01-13 21:51:25', '2014-06-04 21:06:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '2003-10-07', 'Port Tomasa', 'Latvia', '2012-03-25 20:57:18', '2020-07-20 15:26:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '1973-11-20', 'North Johnathon', 'Ethiopia', '2013-01-03 22:25:12', '2017-05-22 13:44:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '1996-06-01', 'Noemiebury', 'Zimbabwe', '2019-11-10 19:57:33', '2013-09-24 14:38:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1975-10-30', 'South Zolamouth', 'Philippines', '2014-11-15 14:23:15', '2017-10-07 23:14:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '1996-05-13', 'South Brandi', 'United Arab Emirates', '2012-10-29 02:24:03', '2015-12-31 23:54:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '2001-02-04', 'East Hiltonton', 'Portugal', '2011-11-10 00:30:24', '2019-08-01 15:33:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1984-02-07', 'East Abdulshire', 'Botswana', '2014-09-06 04:40:31', '2014-04-14 06:44:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1983-08-05', 'Aidenview', 'Kazakhstan', '2018-02-04 02:28:10', '2018-02-11 15:56:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '1985-06-06', 'Lake Santa', 'Faroe Islands', '2017-10-02 07:13:53', '2013-09-20 02:37:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'f', '1974-05-17', 'Elianeburgh', 'Madagascar', '2013-11-21 19:47:11', '2015-12-26 06:20:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '2011-04-15', 'Gusikowskiberg', 'Chile', '2017-12-11 10:27:45', '2011-12-08 23:23:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '1980-11-28', 'Millerville', 'Israel', '2013-12-30 04:29:13', '2011-08-19 00:14:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '2007-10-29', 'Majormouth', 'Jamaica', '2017-08-19 12:43:43', '2012-10-17 19:02:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '2005-02-21', 'Rolfsonburgh', 'Isle of Man', '2017-10-07 11:25:57', '2016-01-03 12:01:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '2013-12-20', 'Solonton', 'Luxembourg', '2019-02-19 20:45:14', '2020-06-24 06:38:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2010-08-14', 'East Dina', 'Guinea-Bissau', '2012-03-19 14:07:34', '2011-08-06 09:35:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2005-06-26', 'New Chet', 'Holy See (Vatican City State)', '2019-11-30 14:00:40', '2012-06-28 00:30:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '1993-09-15', 'Mylenestad', 'United Kingdom', '2018-05-30 09:45:48', '2018-02-07 22:43:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2011-07-20', 'East Susanburgh', 'Montserrat', '2012-05-22 04:24:10', '2011-11-28 09:07:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '2001-01-05', 'Janellechester', 'Bhutan', '2017-11-09 23:49:07', '2017-12-02 17:55:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '1983-05-13', 'New Wilford', 'Fiji', '2013-07-07 20:40:52', '2015-03-08 00:37:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1992-08-09', 'Lake Meggieview', 'Russian Federation', '2016-09-25 14:38:20', '2012-09-05 20:30:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1991-04-24', 'New Devontetown', 'Mozambique', '2018-07-13 05:40:33', '2018-11-04 00:57:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '1993-02-06', 'Boehmhaven', 'Timor-Leste', '2016-12-28 06:53:19', '2018-07-19 12:29:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2008-11-19', 'Jarrodtown', 'French Southern Territories', '2020-06-28 05:41:42', '2019-01-20 13:37:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '1987-09-16', 'Port Candace', 'Lithuania', '2015-07-25 13:27:21', '2018-01-09 22:48:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1971-03-07', 'Heathcoteside', 'Solomon Islands', '2011-08-06 23:04:26', '2016-07-24 09:41:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2018-09-11', 'South Maximo', 'Serbia', '2019-02-06 10:40:31', '2018-10-23 07:21:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2019-06-09', 'East Garrethaven', 'Albania', '2012-09-29 00:11:45', '2014-02-11 17:52:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '2020-12-14', 'Jeanetteberg', 'Maldives', '2017-08-19 21:20:58', '2019-03-02 04:17:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '1985-01-10', 'North Leopoldmouth', 'Madagascar', '2020-08-17 04:18:38', '2019-10-18 08:52:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '1970-05-20', 'Alexaneland', 'Uruguay', '2011-06-30 01:49:32', '2013-07-17 03:48:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1972-10-05', 'Rosafurt', 'Turkey', '2019-02-14 04:52:11', '2014-10-24 04:48:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1983-02-28', 'East Zelmamouth', 'Spain', '2014-07-09 06:18:30', '2017-01-27 23:19:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '2002-06-26', 'North Brennamouth', 'Guernsey', '2014-01-22 23:34:48', '2016-04-24 18:34:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '2001-08-07', 'Lake Sigmund', 'China', '2020-10-08 19:57:36', '2020-03-21 07:43:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1974-02-26', 'North Katrina', 'Rwanda', '2014-03-13 15:35:37', '2018-10-03 07:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '1972-06-30', 'Kilbackberg', 'Christmas Island', '2013-11-14 09:39:51', '2014-05-10 21:16:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '1996-12-23', 'Gabrielberg', 'Netherlands Antilles', '2020-09-29 08:31:24', '2013-04-04 01:28:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '2017-09-22', 'Schultzmouth', 'Angola', '2016-05-10 01:05:20', '2013-03-23 04:18:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '1982-06-23', 'South Carterburgh', 'Suriname', '2015-06-17 19:05:17', '2013-06-08 06:48:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1990-06-17', 'Frederikbury', 'Kenya', '2014-07-11 16:27:03', '2017-06-08 13:23:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1985-06-05', 'Lake Kristianview', 'Guatemala', '2016-06-02 17:00:25', '2013-09-23 16:58:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2012-01-05', 'Ryanland', 'American Samoa', '2012-10-03 12:23:12', '2013-11-29 00:48:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '2010-08-04', 'Port Geovanniton', 'Niger', '2020-10-27 23:26:53', '2013-10-04 14:49:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '2003-11-21', 'Wildermanside', 'Saint Pierre and Miquelon', '2019-05-27 00:53:13', '2015-07-30 18:11:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '1977-06-06', 'Beahanhaven', 'Svalbard & Jan Mayen Islands', '2017-10-04 20:16:34', '2017-06-04 17:27:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1971-07-21', 'Boganton', 'Azerbaijan', '2012-09-22 08:38:32', '2011-05-19 13:28:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '2017-10-30', 'North Finnview', 'Gabon', '2012-04-19 17:31:24', '2020-07-08 00:51:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '2015-08-01', 'South Antoninafort', 'Benin', '2017-11-21 17:39:57', '2014-06-06 21:18:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1984-07-22', 'Lexuschester', 'Israel', '2012-07-28 17:03:05', '2013-09-13 08:01:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '2001-07-18', 'Waylonberg', 'Singapore', '2016-12-15 18:52:49', '2015-03-07 09:28:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1988-12-18', 'Eleonorechester', 'Yemen', '2013-10-30 06:03:28', '2016-08-08 22:43:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '1992-04-23', 'South Gregory', 'Saint Martin', '2014-03-31 10:43:00', '2016-12-11 04:06:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '2019-07-26', 'North Leathaburgh', 'Argentina', '2020-11-15 17:09:36', '2014-04-09 18:41:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '1977-02-08', 'Orphaberg', 'Denmark', '2019-12-19 04:31:00', '2020-01-15 15:44:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '2017-10-30', 'Port Jacklyn', 'Zimbabwe', '2019-01-02 16:24:52', '2020-07-28 02:22:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '1970-08-18', 'Armstrongside', 'Niue', '2012-07-03 03:39:54', '2014-11-16 03:06:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '1978-10-31', 'Hansenberg', 'Turks and Caicos Islands', '2018-10-25 04:29:38', '2019-05-12 03:38:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2004-07-24', 'North Ali', 'Guatemala', '2013-04-04 10:30:15', '2017-06-27 04:35:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '2005-07-01', 'Hoegerview', 'South Africa', '2020-05-05 20:59:29', '2017-10-02 21:28:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '2014-06-27', 'McKenziechester', 'Vietnam', '2011-12-31 00:28:40', '2019-03-09 09:17:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '2015-05-31', 'Eulaburgh', 'Western Sahara', '2019-04-11 20:38:56', '2021-02-24 02:13:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '2001-05-30', 'Murazikport', 'Suriname', '2011-12-23 06:44:33', '2019-04-01 21:11:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1979-08-17', 'Delbertton', 'Uzbekistan', '2013-03-15 13:57:48', '2019-11-21 08:30:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '2015-09-08', 'Carmellabury', 'United States of America', '2020-05-09 17:58:53', '2018-08-08 12:24:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1980-08-25', 'Janetmouth', 'Saint Barthelemy', '2016-11-26 05:21:31', '2017-01-10 13:43:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '2000-12-04', 'Watsicaside', 'Peru', '2017-04-14 01:11:09', '2011-08-30 23:59:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '2012-11-09', 'Jenkinsmouth', 'Thailand', '2021-03-16 22:44:06', '2013-01-20 11:12:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '1990-12-17', 'Wandaport', 'Holy See (Vatican City State)', '2013-05-18 07:02:59', '2012-09-16 05:42:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '1979-10-30', 'North Hunter', 'Lithuania', '2018-03-18 00:27:49', '2017-04-29 09:47:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '2008-08-17', 'West Arlie', 'Qatar', '2012-10-02 10:30:29', '2011-12-15 01:23:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '1982-07-20', 'South Evanbury', 'Bermuda', '2011-11-08 10:12:30', '2018-04-01 15:46:56');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Emerson', 'Toy', 'charles03@example.org', '(155)521-1301x15220', '2015-11-03 10:12:31', '2016-07-24 06:28:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Timmothy', 'Russel', 'jaydon.abernathy@example.org', '794-392-2136', '2016-09-06 15:26:14', '2019-10-16 22:03:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Tamia', 'Hauck', 'gerlach.rebecca@example.net', '(277)800-3546', '2020-08-19 01:06:25', '2017-01-07 23:49:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Dan', 'Batz', 'jesus.beatty@example.com', '214-948-7625x801', '2019-11-13 22:09:14', '2015-01-24 17:47:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Geraldine', 'Reinger', 'qking@example.net', '1-498-632-8699x86225', '2012-10-19 15:02:34', '2017-05-14 21:49:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Unique', 'Stark', 'gretchen16@example.net', '788.919.2598', '2014-02-10 06:10:00', '2021-04-03 09:30:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Josiane', 'Hettinger', 'xbogisich@example.org', '(699)087-1201x20689', '2012-04-15 05:57:11', '2016-11-30 23:34:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Kiarra', 'Swift', 'zakary57@example.org', '836-798-6073x35879', '2012-06-23 18:13:44', '2019-01-19 12:42:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Cordia', 'Kassulke', 'kendall88@example.com', '1-849-188-0859', '2017-03-19 17:22:47', '2017-03-27 06:45:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alvis', 'Greenholt', 'keely.kutch@example.org', '001-569-7790x628', '2015-07-06 08:29:56', '2013-12-20 22:11:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Nathaniel', 'Schuppe', 'xkub@example.org', '291-566-6824', '2014-12-09 03:54:42', '2014-03-04 09:49:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Kiara', 'Hickle', 'spinka.juliana@example.org', '346-529-2421x27092', '2012-06-29 06:07:03', '2016-05-18 17:19:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Terrence', 'Kris', 'hackett.eusebio@example.net', '(885)142-8725', '2015-09-28 16:59:58', '2011-11-20 15:36:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Margot', 'Bogisich', 'halie.rodriguez@example.com', '707-620-1804', '2017-06-17 05:26:30', '2016-04-17 17:29:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Moriah', 'Hirthe', 'gusikowski.ana@example.org', '404-206-2964x2166', '2018-07-27 14:10:02', '2012-04-14 14:29:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Garett', 'Thiel', 'dschoen@example.com', '(519)405-3916', '2020-03-29 06:47:56', '2018-04-23 11:57:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Jon', 'Wuckert', 'hrosenbaum@example.com', '1-748-496-3768x55264', '2014-01-09 01:52:30', '2020-08-27 13:42:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Marta', 'Aufderhar', 'treutel.maurine@example.com', '+03(9)3665528322', '2013-10-17 20:47:39', '2015-11-05 12:07:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Hailie', 'Feest', 'ufadel@example.net', '485-184-8141x2373', '2012-03-08 23:54:12', '2019-04-11 10:24:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Lewis', 'Rosenbaum', 'jmckenzie@example.net', '859-446-1724', '2018-07-17 15:28:32', '2016-12-25 04:08:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Paige', 'Mante', 'raymundo77@example.com', '503-286-6101x7622', '2014-08-28 16:15:40', '2020-12-07 23:25:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Aida', 'Hintz', 'von.karlie@example.org', '1-450-465-8491', '2020-10-24 17:10:13', '2012-12-20 15:01:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Josefa', 'Schmidt', 'stiedemann.elbert@example.com', '+10(7)6598713391', '2012-10-18 12:18:31', '2016-09-09 00:25:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Sabina', 'Satterfield', 'bcrist@example.net', '1-510-356-1403', '2011-07-31 00:51:56', '2017-03-07 20:02:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Estevan', 'Sporer', 'fannie.armstrong@example.net', '(868)951-6564', '2016-05-05 15:05:40', '2016-09-30 02:24:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Clifton', 'Wunsch', 'lexi.hauck@example.net', '05503894405', '2014-10-09 23:19:30', '2014-09-22 18:35:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Eryn', 'Stokes', 'maxime48@example.net', '695-350-6405', '2014-02-23 15:01:08', '2014-08-19 03:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Verdie', 'Bednar', 'pink.mayer@example.org', '634-671-1569x7729', '2020-10-20 06:03:23', '2017-06-13 05:27:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Addie', 'Grant', 'marcia.weissnat@example.org', '082-776-9271x513', '2019-01-26 11:32:15', '2016-08-21 18:57:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Ericka', 'Braun', 'eino.mohr@example.org', '(456)142-1694x5034', '2011-08-08 21:29:46', '2017-07-27 00:51:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Uriel', 'Leffler', 'jwolf@example.com', '877.990.1130x97048', '2014-08-03 01:10:20', '2017-06-19 03:46:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Alexis', 'Spinka', 'lmohr@example.com', '+88(7)8799777480', '2016-10-25 14:15:33', '2019-04-15 13:17:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Kraig', 'Kuhic', 'ikiehn@example.net', '(106)147-1289x738', '2014-01-28 06:26:47', '2015-06-18 08:44:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Odie', 'Witting', 'umohr@example.com', '(715)789-1418x16571', '2020-10-04 06:25:53', '2013-04-12 11:04:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Amya', 'Rice', 'gunner.pfeffer@example.net', '00790747551', '2018-12-03 21:32:28', '2018-01-02 00:54:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Devon', 'Armstrong', 'gleason.marcel@example.com', '1-606-009-8076', '2016-09-02 11:40:55', '2014-04-17 09:21:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Colleen', 'Koss', 'yolson@example.org', '050.489.2265x04010', '2016-12-22 07:59:59', '2013-11-30 02:39:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Chris', 'Parker', 'liana.swaniawski@example.net', '1-365-510-1031x077', '2012-12-05 12:38:35', '2019-05-27 09:09:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Delia', 'Quitzon', 'fabiola08@example.net', '607.285.6901', '2011-10-30 03:22:59', '2021-01-22 15:45:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kayli', 'Mills', 'watsica.taryn@example.net', '1-563-892-1877x72005', '2018-06-10 20:43:58', '2013-02-27 00:35:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Marie', 'Kub', 'evan70@example.com', '1-314-151-5061', '2016-01-11 01:19:12', '2015-12-27 02:46:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Precious', 'Weimann', 'blanda.jordon@example.net', '+59(8)7104459250', '2013-01-17 15:37:30', '2019-06-19 12:48:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Johnathan', 'Bogan', 'kasey.bahringer@example.org', '396.355.7754', '2015-02-04 22:55:08', '2021-01-12 10:55:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Jadon', 'Skiles', 'ybergstrom@example.org', '1-669-507-5485', '2015-01-20 11:31:40', '2015-01-11 17:04:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Cassidy', 'Roberts', 'smitham.dave@example.com', '(826)001-9633x071', '2016-01-23 19:45:57', '2014-12-09 20:59:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Oral', 'Paucek', 'vcasper@example.net', '1-312-193-3887x252', '2018-08-12 08:10:02', '2017-04-19 23:46:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Junior', 'Osinski', 'xstreich@example.net', '950.746.8163x52635', '2019-05-27 08:37:32', '2019-02-28 02:13:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Lea', 'Gutkowski', 'georgette12@example.com', '448.565.4393', '2015-07-24 12:01:31', '2015-02-01 18:53:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Keaton', 'Block', 'myrtle24@example.org', '1-195-421-5590', '2017-08-04 15:12:18', '2013-07-05 01:28:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Jadyn', 'Hessel', 'javonte86@example.com', '243.532.4591x5948', '2020-09-15 12:58:20', '2020-03-06 10:32:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Pete', 'Donnelly', 'manuel.waelchi@example.org', '1-844-992-2679x8330', '2014-05-20 20:43:13', '2018-07-19 13:58:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Sherman', 'Stoltenberg', 'erica.connelly@example.com', '(528)646-9570x2091', '2014-11-30 19:55:19', '2017-04-01 06:18:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Cristopher', 'Bogisich', 'loyce.torp@example.com', '119.179.5824x7186', '2021-01-21 13:56:24', '2012-07-21 22:53:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Maria', 'Boyle', 'esanford@example.org', '953.367.4184x41011', '2014-11-20 16:05:34', '2015-05-10 20:44:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Astrid', 'Ferry', 'daniel.kim@example.com', '076-355-6634', '2015-10-05 01:57:17', '2016-10-14 06:26:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Ezra', 'Miller', 'joelle.graham@example.net', '(096)677-0518x801', '2015-02-24 06:05:26', '2016-08-11 21:32:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Ophelia', 'Streich', 'lavinia.kirlin@example.org', '268.232.8663', '2012-12-26 08:55:57', '2021-03-02 06:12:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Jedediah', 'Johns', 'eduardo87@example.com', '+95(2)1503288833', '2012-11-30 07:04:30', '2020-03-26 16:04:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Kayden', 'Gibson', 'ohaley@example.com', '07333601101', '2013-08-24 05:45:29', '2020-02-03 05:48:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Angelina', 'Willms', 'parker.jewell@example.com', '1-032-941-8411x9206', '2016-07-19 23:03:38', '2014-04-23 11:17:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Dayton', 'Kihn', 'junior.schinner@example.net', '385-021-7211x42394', '2019-10-25 14:42:02', '2012-02-16 05:20:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Gilberto', 'O\'Reilly', 'gretchen.corwin@example.org', '883.251.6661x087', '2017-04-04 16:45:05', '2015-05-07 12:56:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Jenifer', 'Douglas', 'desiree28@example.com', '1-232-662-8156', '2013-06-28 07:59:45', '2011-07-19 15:18:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Grace', 'Lebsack', 'wilburn.miller@example.org', '1-916-674-3570', '2019-11-09 17:45:40', '2011-05-09 07:51:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Roxanne', 'Douglas', 'krajcik.victor@example.net', '1-974-702-9132', '2018-11-09 13:43:13', '2013-04-13 03:29:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Camden', 'Maggio', 'nhills@example.com', '044-252-6560', '2019-03-18 06:34:31', '2020-05-25 22:17:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Loyal', 'Bashirian', 'bogan.nia@example.org', '016-600-1639x5825', '2013-03-14 21:02:58', '2012-07-02 21:34:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Sheldon', 'Nikolaus', 'rosemary.koss@example.com', '(411)554-5502', '2012-11-10 02:48:26', '2020-03-21 19:26:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Burnice', 'Hills', 'ifranecki@example.com', '00896391164', '2019-12-07 15:44:13', '2015-02-08 20:14:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Leilani', 'Lynch', 'ypadberg@example.org', '221.810.6631', '2013-04-15 12:58:00', '2020-07-26 05:17:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Lisandro', 'Franecki', 'umcclure@example.com', '(010)872-3975', '2018-07-01 17:29:22', '2018-07-12 23:43:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Matilda', 'Robel', 'camille.connelly@example.com', '1-176-332-4042x911', '2021-02-07 20:20:44', '2011-11-09 17:19:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Rebeka', 'Swaniawski', 'ckozey@example.com', '(523)750-2777', '2012-07-08 09:46:16', '2017-02-14 10:33:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Patsy', 'Mayert', 'lo\'kon@example.org', '(064)537-8424x04413', '2018-02-21 03:28:32', '2020-12-20 14:59:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Darius', 'Larkin', 'will.celine@example.net', '908.004.2623x647', '2019-10-26 16:40:42', '2019-01-14 14:44:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Albina', 'Murphy', 'knitzsche@example.org', '(191)639-4495', '2013-09-13 06:00:18', '2013-12-26 02:52:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Ara', 'Considine', 'jstoltenberg@example.net', '326-800-2647x9973', '2014-04-15 12:07:46', '2016-12-02 14:02:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Cedrick', 'Cassin', 'kshlerin.golden@example.org', '(892)076-6964x71114', '2014-04-14 16:59:15', '2018-07-22 19:29:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Floyd', 'Walter', 'dwisoky@example.org', '1-284-621-0048x011', '2016-09-16 04:33:47', '2014-03-13 22:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Juliana', 'Ruecker', 'yprice@example.com', '+11(4)6659303755', '2017-08-23 03:41:15', '2019-10-09 19:56:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Duncan', 'Zemlak', 'susie61@example.net', '340.201.4651x71774', '2012-09-02 20:40:12', '2016-02-12 23:07:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Kaelyn', 'Witting', 'velma.mosciski@example.net', '111.067.5675x54572', '2014-07-09 17:47:21', '2016-09-30 06:13:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Josefa', 'Kassulke', 'wtorp@example.com', '+50(4)1414699850', '2016-08-18 01:39:03', '2016-07-08 21:15:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Terence', 'Farrell', 'tpowlowski@example.com', '711.953.5934x190', '2015-06-30 04:05:36', '2016-05-15 21:11:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Ludwig', 'Jakubowski', 'hfadel@example.org', '611-206-0671', '2014-01-19 00:19:15', '2011-06-11 22:45:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Lily', 'Quigley', 'bschimmel@example.com', '(199)157-4556', '2018-05-13 16:18:57', '2017-09-28 21:44:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Cathrine', 'Langosh', 'erik.dooley@example.com', '188.400.5286x551', '2011-11-27 13:38:03', '2015-12-27 05:46:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Jarrett', 'McDermott', 'pkiehn@example.com', '572.452.8506', '2012-03-24 14:28:49', '2018-08-24 21:58:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Charlene', 'Ryan', 'alivia.glover@example.net', '910-657-7082x835', '2020-07-28 17:44:14', '2012-02-13 09:36:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Rowan', 'Treutel', 'wboehm@example.org', '694.192.0299x00236', '2014-03-26 14:21:00', '2021-04-11 10:30:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Deondre', 'Pollich', 'myrl48@example.com', '1-668-938-1512x28643', '2018-11-25 08:06:38', '2019-03-23 15:59:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Brant', 'Cummings', 'micah.lynch@example.com', '03802161555', '2011-05-16 13:14:26', '2021-02-15 00:37:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Herman', 'Shanahan', 'annetta.erdman@example.org', '(151)749-3200', '2020-01-10 13:35:24', '2011-09-30 05:52:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Kolby', 'Huels', 'halvorson.ocie@example.net', '(033)889-0700', '2019-07-24 04:23:26', '2012-03-03 16:35:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Sabryna', 'Lind', 'leonard38@example.org', '306.002.1074x8050', '2012-03-13 07:38:55', '2015-03-16 19:40:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Nya', 'Harber', 'hwaters@example.net', '1-651-326-5728x5871', '2012-02-10 17:15:08', '2020-04-16 04:33:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Lyda', 'Adams', 'eliseo.green@example.com', '(496)434-7051', '2016-06-17 22:33:04', '2016-08-28 11:09:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Aubrey', 'Upton', 'rippin.kiarra@example.org', '530-493-5372x130', '2018-02-15 17:44:26', '2014-09-12 13:03:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Marquis', 'Thompson', 'mante.carli@example.com', '(162)942-4106', '2018-03-16 07:50:14', '2015-11-01 19:23:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'David', 'Carter', 'angus13@example.com', '(569)192-6926x3804', '2016-06-03 13:00:59', '2019-06-04 23:40:21');


