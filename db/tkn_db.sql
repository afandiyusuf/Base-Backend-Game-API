-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2016 at 04:30 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_token`
--

CREATE TABLE IF NOT EXISTS `access_token` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `access_token` varchar(100) NOT NULL,
  `is_valid` tinyint(4) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`id`, `user_id`, `access_token`, `is_valid`, `last_update`) VALUES
(1, '1', 'gN6S9EvthZuJI1TC4u5AqASCn2Db14ceXoUghfCdzjEAVQRkXxAUJCGiROuYqkQS2S6wLI6QewbjwwbUdss6pwRQIrIDcrRptfFE', 1, '2016-03-24 13:18:11'),
(2, '2', '8P0vxo6XGmAebqLL8Ouz7f74eXug4DXCJwk5NjZ9ngLM23ZrUWw5zBHc6imL7IRdH42yq7feq2jdhzAY4WUuoQDdlvB7wF9H2w7T', 1, '2016-03-24 13:18:34'),
(3, '3', 'nGgeCqaLEYILzxLbWPDwU4bJ1ZLhoMc8BcRMMqyatdELOKZymMV0fvg41EodPr8rdAPbiikrFjYEqQBN9BzlXOJhpco2DYqCcQat', 1, '2016-03-24 13:18:51'),
(4, '4', 'gZoZcTHisvqfCwUhMb1nyc6Z0NY7LGZcT50eZIlEaOSs04V6AIkyxsrhUx7gkFGXT3ZlaqnSfZHxLuiNM70BTBarbaDhhwKAfTmk', 1, '2016-03-24 13:18:59'),
(5, '5', 'AWr9ysetR5I5C2LWq2IwlioMZx9btZRIlmOQJRTxddrfTFhXmTM9I8KLx7zhV33GuEzpi8XsXexhyabRGDdEsRuDszlgLZDwZPHR', 1, '2016-03-24 13:19:07'),
(6, '6', 'C9VEsgNHbn9cnelA82dR4w6tfSQohRO5gEPxMZedV6T3iG7zYYNHAGdUb2hcoKh0i16jtB3A2H0NA1hpcNKpsJJeu44SSv8NGhJX', 1, '2016-03-24 13:19:15'),
(7, '7', '8OTSbYWSayKY9Ma7JmyO0wKZyY49vWoeq83IpMTA3BfisOYNc7pBpLoDDsgp0pTQ5kArZteajw8u8I9m3LCgbTpa5OPxRKKl8pv3', 1, '2016-03-24 13:19:23'),
(8, '8', 'pySJxKGp7g2kIOiXsEhhVsmKcsnlToEx6s2honT4Tn3QabR5kZ9LXwhla15OxbUB9eBICTuB2nrfZpN5zco8nuyPvsa8xRxyATw1', 1, '2016-03-24 13:19:40'),
(9, '9', 'fxSDNeycNE3En1eZ73qF7YuEXvLpKS6V4MOE2rMzdBk8Isjk8J3ByDqWzUKPhKRchT8xExoN0qZuqLLxwg3qmaI8xa56bu0lQSPh', 1, '2016-03-24 13:20:00'),
(10, '10', 'VrsvIAAFvnjSUw0DZfvSmf957MNeQxLMDKUI68AtjUC3SMmUTZE1WeQQ7KMl0fN0JWKNRyXavji7eV54aCa2S6UtuA9lyPd7c0XL', 1, '2016-03-24 13:20:43'),
(11, '11', 'dpDIBtjH1BSozZbMQmzjWWTYrques3b2zxmSS6PIYsW1WPxLoWYqpZ6WAIeN1keYiysVwBICicnxGyhDjoLofVGL6TmfXuFMprVP', 1, '2016-03-24 13:20:59'),
(12, '12', 'p4Wce3KICZf7aALRY48TDaJJf6minzp59NG49vxHsVPXGLTiUezHK4cDgtD44adtgoNOrQHyFJMFzOoCdgmndP2qFIhI9EpJLRhq', 1, '2016-03-24 13:25:13'),
(13, '13', 'gCplSYsD4GtrYXhKaxf1JDbegXtRSJVQ9FUFb0gjyrjendVoe1qhe6GRW90AtpgqpANRRUrRp5xT9kWVGnZp6rxlYeUbrYYT3o2W', 1, '2016-03-24 13:26:38'),
(14, '1', 'gN6S9EvthZuJI1TC4u5AqASCn2Db14ceXoUghfCdzjEAVQRkXxAUJCGiROuYqkQS2S6wLI6QewbjwwbUdss6pwRQIrIDcrRptfFE', 1, '2016-03-24 13:18:11'),
(15, '2', '8P0vxo6XGmAebqLL8Ouz7f74eXug4DXCJwk5NjZ9ngLM23ZrUWw5zBHc6imL7IRdH42yq7feq2jdhzAY4WUuoQDdlvB7wF9H2w7T', 1, '2016-03-24 13:18:34'),
(16, '3', 'nGgeCqaLEYILzxLbWPDwU4bJ1ZLhoMc8BcRMMqyatdELOKZymMV0fvg41EodPr8rdAPbiikrFjYEqQBN9BzlXOJhpco2DYqCcQat', 1, '2016-03-24 13:18:51'),
(17, '4', 'gZoZcTHisvqfCwUhMb1nyc6Z0NY7LGZcT50eZIlEaOSs04V6AIkyxsrhUx7gkFGXT3ZlaqnSfZHxLuiNM70BTBarbaDhhwKAfTmk', 1, '2016-03-24 13:18:59'),
(18, '5', 'AWr9ysetR5I5C2LWq2IwlioMZx9btZRIlmOQJRTxddrfTFhXmTM9I8KLx7zhV33GuEzpi8XsXexhyabRGDdEsRuDszlgLZDwZPHR', 1, '2016-03-24 13:19:07'),
(19, '6', 'C9VEsgNHbn9cnelA82dR4w6tfSQohRO5gEPxMZedV6T3iG7zYYNHAGdUb2hcoKh0i16jtB3A2H0NA1hpcNKpsJJeu44SSv8NGhJX', 1, '2016-03-24 13:19:15'),
(20, '7', '8OTSbYWSayKY9Ma7JmyO0wKZyY49vWoeq83IpMTA3BfisOYNc7pBpLoDDsgp0pTQ5kArZteajw8u8I9m3LCgbTpa5OPxRKKl8pv3', 1, '2016-03-24 13:19:23'),
(21, '8', 'pySJxKGp7g2kIOiXsEhhVsmKcsnlToEx6s2honT4Tn3QabR5kZ9LXwhla15OxbUB9eBICTuB2nrfZpN5zco8nuyPvsa8xRxyATw1', 1, '2016-03-24 13:19:40'),
(22, '9', 'fxSDNeycNE3En1eZ73qF7YuEXvLpKS6V4MOE2rMzdBk8Isjk8J3ByDqWzUKPhKRchT8xExoN0qZuqLLxwg3qmaI8xa56bu0lQSPh', 1, '2016-03-24 13:20:00'),
(23, '10', 'VrsvIAAFvnjSUw0DZfvSmf957MNeQxLMDKUI68AtjUC3SMmUTZE1WeQQ7KMl0fN0JWKNRyXavji7eV54aCa2S6UtuA9lyPd7c0XL', 1, '2016-03-24 13:20:43'),
(24, '11', 'dpDIBtjH1BSozZbMQmzjWWTYrques3b2zxmSS6PIYsW1WPxLoWYqpZ6WAIeN1keYiysVwBICicnxGyhDjoLofVGL6TmfXuFMprVP', 1, '2016-03-24 13:20:59'),
(25, '12', 'p4Wce3KICZf7aALRY48TDaJJf6minzp59NG49vxHsVPXGLTiUezHK4cDgtD44adtgoNOrQHyFJMFzOoCdgmndP2qFIhI9EpJLRhq', 1, '2016-03-24 13:25:13'),
(26, '13', 'gCplSYsD4GtrYXhKaxf1JDbegXtRSJVQ9FUFb0gjyrjendVoe1qhe6GRW90AtpgqpANRRUrRp5xT9kWVGnZp6rxlYeUbrYYT3o2W', 1, '2016-03-24 13:26:38'),
(27, '14', '5Hz5kosQGl4hMhMSGppB0sjVPEkNKHOHRPABLK1YyGWMOlGuEY74DgzZSqSeYdpe1PZ0AZXYNUa8eiYXZpcoEVcWj5OwABnExHKg', 1, '2016-03-24 13:35:41'),
(28, '15', 'EtsNRXgfd752QaM9jPG2JjDGGlZxg9zz4qKgcolAeNIZhPHsVeEsfcpXSsipSebORfpCUINNClIO5m0DTu0K9Wy6srZaScaV1WrQ', 1, '2016-03-24 13:35:53'),
(29, '16', 'ezBofQVgXG3DXPkYltAfHmbV7HXYcdfR26Uze6hyRrcMxO0JlrzmR4d9dTM3XDCyevACAfZI93INuF5mIiWlpECfFWZ16Vn7MNDy', 1, '2016-03-24 13:36:03'),
(30, '17', 'VRgwRymtz26UaxkMfLoySW8cGNTbKxwtESmyv3fnTLxqUf4E9dbwISI1cX1CGGXhLLQtxqw9AnmN2QbosxlnWGFJ50xWZIKXexGf', 1, '2016-03-24 13:57:25'),
(31, '18', 'nut4ZkXPVSRdMPyGDqQd5n7gfUaPGKnmu5AOhE7G9GPVFS30WsETz9X3EaOtKezCZy4qXREpJm9vVNVcDmPrqNbIqiP0cA8KRTVV', 1, '2016-03-24 13:59:08'),
(32, '19', 'fKz3UcyOULeRmEs9QABasNtRNYqIWmiGwFsfA6JnLpsw8MuGhXaik8kmP3kjUV099sIjEThNZV34hMS46b6jzmzIf0CMfm5ta8lg', 1, '2016-03-24 14:02:17'),
(33, '20', 'Qh8mnjbRMnJMFa6C7U9kJkenBDaJkxkSZhwLcy7R1BX957o5sleEKZRj2h62WVihw9i1oFrKEGzoSX2raFHR8xR8QOodUcDzqTrb', 1, '2016-03-24 14:02:34'),
(34, '21', 'oFloQkRnn01ZXgxz5eDWIt1si6VYOI4OKnEQ3IpobOyi9fOUn8o5R30936TXWSLRYtQF8tPLTZXYcBWDxp0BS0SdGtKkVqlg4WUS', 1, '2016-03-24 14:04:12'),
(35, '22', '4AqbbQSJx8nbBz8mmITDhGPPj4HhWXHS8WzUl7vfy5effWZImgs2n9T1hcZ2vvZV3FA0nL09spYGKGHsdaUPmZPB6IaaXr8lRMtt', 1, '2016-03-24 14:04:30'),
(36, '23', 'Noe7M5AOGmTbsMRzztJOZ0chbuuN8ulHi8WRE02AEcPLhi2H0pSfN65K6vS4UcWwGgxYoimKvpDIZb5ckIU2tAQBTU7HygqIWL0s', 1, '2016-03-24 14:06:48'),
(37, '24', 'tAfiFpqOAUkjCz20ymbCMJOn6FyZTDtGZBcaJ2NEXURT1Fv4LjjUwjnE9Bh0ZG8aSvwTaxxnHLMlOEl0l9P5EKiOzpnTsA9y9hdv', 1, '2016-03-24 14:07:35'),
(38, '25', 'NYI3UvTM3mko3xCCguQFwbBgb60C5cCszXyZukpXbOgytkIvJoR2NXiR0t7dcWUMJOLOr2i0G7zAh1chAbgirBnlcJCGHyAZgxmu', 1, '2016-03-24 14:33:03'),
(39, '26', 'ng370cAxrDoe12AsBnKTv7ZNBeSRcbxkaWxTRZYM5hsIdi4V5Zp62PzuVO8N5ndelvox4ELU6OU4MqWgXtsbXrx3DgMAkrh0TVC2', 1, '2016-03-24 14:45:24'),
(40, '27', 'tSTd4mC8IrH1UdmIAhjxeIMnP8twOCCRbLWInFEWoVtSHCBmemNJudfRrOG3xdjcL2RBzmy7XM65moJnLN9iC5AIVQLY8bSTdFFQ', 1, '2016-03-24 14:45:55'),
(41, '28', 'uk60UraL3GufSDNPQqjlWCJ7Dji0S7Jma6e1rTwkbyP7mGSKroR3pfwnHn5zjlfXHgepPIKgbN3mJ6P1VJi8Jgc0EOJuCWDW7M6b', 1, '2016-03-24 14:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `game_score`
--

CREATE TABLE IF NOT EXISTS `game_score` (
  `id` int(4) NOT NULL,
  `level` varchar(20) NOT NULL,
  `score` int(4) NOT NULL,
  `game_token_id` varchar(100) NOT NULL,
  `user_id` int(4) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_score`
--

INSERT INTO `game_score` (`id`, `level`, `score`, `game_token_id`, `user_id`, `last_update`) VALUES
(1, 'level1', 9, '1', 1, '2016-03-24 13:18:12'),
(2, 'level2', 436, '1', 1, '2016-03-24 13:18:12'),
(3, 'level3', 77, '1', 1, '2016-03-24 13:18:12'),
(4, 'level4', 152, '1', 1, '2016-03-24 13:18:12'),
(5, 'level5', 375, '1', 1, '2016-03-24 13:18:13'),
(6, 'total score', 1049, '1', 1, '2016-03-24 13:18:13'),
(7, 'level1', 463, '2', 2, '2016-03-24 13:18:34'),
(8, 'level2', 464, '2', 2, '2016-03-24 13:18:35'),
(9, 'level3', 290, '2', 2, '2016-03-24 13:18:35'),
(10, 'level4', 283, '2', 2, '2016-03-24 13:18:35'),
(11, 'level5', 394, '2', 2, '2016-03-24 13:18:35'),
(12, 'total score', 1894, '2', 2, '2016-03-24 13:18:36'),
(13, 'level1', 199, '3', 3, '2016-03-24 13:18:51'),
(14, 'level2', 111, '3', 3, '2016-03-24 13:18:52'),
(15, 'level3', 23, '3', 3, '2016-03-24 13:18:52'),
(16, 'level4', 109, '3', 3, '2016-03-24 13:18:52'),
(17, 'level5', 245, '3', 3, '2016-03-24 13:18:52'),
(18, 'total score', 687, '3', 3, '2016-03-24 13:18:53'),
(19, 'level1', 174, '4', 4, '2016-03-24 13:19:00'),
(20, 'level2', 382, '4', 4, '2016-03-24 13:19:00'),
(21, 'level3', 100, '4', 4, '2016-03-24 13:19:00'),
(22, 'level4', 241, '4', 4, '2016-03-24 13:19:00'),
(23, 'level5', 87, '4', 4, '2016-03-24 13:19:01'),
(24, 'total score', 984, '4', 4, '2016-03-24 13:19:01'),
(25, 'level1', 93, '5', 5, '2016-03-24 13:19:08'),
(26, 'level2', 273, '5', 5, '2016-03-24 13:19:08'),
(27, 'level3', 14, '5', 5, '2016-03-24 13:19:08'),
(28, 'level4', 394, '5', 5, '2016-03-24 13:19:09'),
(29, 'level5', 345, '5', 5, '2016-03-24 13:19:09'),
(30, 'total score', 1119, '5', 5, '2016-03-24 13:19:09'),
(31, 'level1', 91, '6', 6, '2016-03-24 13:19:16'),
(32, 'level2', 372, '6', 6, '2016-03-24 13:19:16'),
(33, 'level3', 254, '6', 6, '2016-03-24 13:19:16'),
(34, 'level4', 8, '6', 6, '2016-03-24 13:19:16'),
(35, 'level5', 344, '6', 6, '2016-03-24 13:19:17'),
(36, 'total score', 1069, '6', 6, '2016-03-24 13:19:17'),
(37, 'level1', 183, '7', 7, '2016-03-24 13:19:24'),
(38, 'level2', 82, '7', 7, '2016-03-24 13:19:24'),
(39, 'level3', 133, '7', 7, '2016-03-24 13:19:24'),
(40, 'level4', 405, '7', 7, '2016-03-24 13:19:25'),
(41, 'level5', 11, '7', 7, '2016-03-24 13:19:25'),
(42, 'total score', 814, '7', 7, '2016-03-24 13:19:25'),
(43, 'level1', 356, '8', 8, '2016-03-24 13:19:41'),
(44, 'level2', 30, '8', 8, '2016-03-24 13:19:41'),
(45, 'level3', 76, '8', 8, '2016-03-24 13:19:41'),
(46, 'level4', 88, '8', 8, '2016-03-24 13:19:41'),
(47, 'level5', 41, '8', 8, '2016-03-24 13:19:41'),
(48, 'total score', 591, '8', 8, '2016-03-24 13:19:42'),
(49, 'level1', 39, '9', 9, '2016-03-24 13:20:00'),
(50, 'level2', 140, '9', 9, '2016-03-24 13:20:01'),
(51, 'level3', 112, '9', 9, '2016-03-24 13:20:01'),
(52, 'level4', 355, '9', 9, '2016-03-24 13:20:01'),
(53, 'level5', 141, '9', 9, '2016-03-24 13:20:01'),
(54, 'total score', 787, '9', 9, '2016-03-24 13:20:02'),
(55, 'level1', 277, '10', 10, '2016-03-24 13:20:43'),
(56, 'level2', 55, '10', 10, '2016-03-24 13:20:44'),
(57, 'level3', 155, '10', 10, '2016-03-24 13:20:44'),
(58, 'level4', 169, '10', 10, '2016-03-24 13:20:44'),
(59, 'level5', 280, '10', 10, '2016-03-24 13:20:44'),
(60, 'total score', 936, '10', 10, '2016-03-24 13:20:45'),
(61, 'level1', 333, '11', 11, '2016-03-24 13:21:00'),
(62, 'level2', 88, '11', 11, '2016-03-24 13:21:00'),
(63, 'level3', 161, '11', 11, '2016-03-24 13:21:01'),
(64, 'level4', 288, '11', 11, '2016-03-24 13:21:01'),
(65, 'level5', 35, '11', 11, '2016-03-24 13:21:01'),
(66, 'total score', 905, '11', 11, '2016-03-24 13:21:02'),
(67, 'level1', 101, '12', 12, '2016-03-24 13:25:14'),
(68, 'level2', 204, '12', 12, '2016-03-24 13:25:14'),
(69, 'level3', 103, '12', 12, '2016-03-24 13:25:14'),
(70, 'level4', 17, '12', 12, '2016-03-24 13:25:15'),
(71, 'level5', 195, '12', 12, '2016-03-24 13:25:15'),
(72, 'total score', 620, '12', 12, '2016-03-24 13:25:15'),
(73, 'level1', 383, '13', 13, '2016-03-24 13:26:39'),
(74, 'level2', 51, '13', 13, '2016-03-24 13:26:39'),
(75, 'level3', 95, '13', 13, '2016-03-24 13:26:40'),
(76, 'level4', 2, '13', 13, '2016-03-24 13:26:40'),
(77, 'level5', 29, '13', 13, '2016-03-24 13:26:40'),
(78, 'total score', 560, '13', 13, '2016-03-24 13:26:41'),
(79, 'level1', 255, '14', 14, '2016-03-24 13:35:41'),
(80, 'level2', 9, '14', 14, '2016-03-24 13:35:42'),
(81, 'level3', 437, '14', 14, '2016-03-24 13:35:42'),
(82, 'level4', 245, '14', 14, '2016-03-24 13:35:42'),
(83, 'level5', 406, '14', 14, '2016-03-24 13:35:43'),
(84, 'total score', 1352, '14', 14, '2016-03-24 13:35:43'),
(85, 'level1', 453, '15', 15, '2016-03-24 13:35:54'),
(86, 'level2', 223, '15', 15, '2016-03-24 13:35:54'),
(87, 'level3', 6, '15', 15, '2016-03-24 13:35:54'),
(88, 'level4', 391, '15', 15, '2016-03-24 13:35:54'),
(89, 'level5', 213, '15', 15, '2016-03-24 13:35:55'),
(90, 'total score', 1286, '15', 15, '2016-03-24 13:35:55'),
(91, 'level1', 450, '16', 16, '2016-03-24 13:36:04'),
(92, 'level2', 464, '16', 16, '2016-03-24 13:36:04'),
(93, 'level3', 99, '16', 16, '2016-03-24 13:36:04'),
(94, 'level4', 318, '16', 16, '2016-03-24 13:36:04'),
(95, 'level5', 494, '16', 16, '2016-03-24 13:36:05'),
(96, 'total score', 1825, '16', 16, '2016-03-24 13:36:05'),
(97, 'level1', 345, '17', 17, '2016-03-24 13:57:25'),
(98, 'level2', 100, '17', 17, '2016-03-24 13:57:25'),
(99, 'level3', 340, '17', 17, '2016-03-24 13:57:26'),
(100, 'level4', 312, '17', 17, '2016-03-24 13:57:26'),
(101, 'level5', 178, '17', 17, '2016-03-24 13:57:26'),
(102, 'total score', 1275, '17', 17, '2016-03-24 13:57:26'),
(103, 'level1', 394, '18', 18, '2016-03-24 13:59:09'),
(104, 'level2', 368, '18', 18, '2016-03-24 13:59:09'),
(105, 'level3', 419, '18', 18, '2016-03-24 13:59:09'),
(106, 'level4', 120, '18', 18, '2016-03-24 13:59:10'),
(107, 'level5', 424, '18', 18, '2016-03-24 13:59:10'),
(108, 'total score', 1725, '18', 18, '2016-03-24 13:59:10'),
(109, 'level1', 334, '19', 19, '2016-03-24 14:02:18'),
(110, 'level2', 432, '19', 19, '2016-03-24 14:02:18'),
(111, 'level3', 398, '19', 19, '2016-03-24 14:02:18'),
(112, 'level4', 141, '19', 19, '2016-03-24 14:02:18'),
(113, 'level5', 205, '19', 19, '2016-03-24 14:02:19'),
(114, 'total score', 1510, '19', 19, '2016-03-24 14:02:19'),
(115, 'level1', 374, '20', 20, '2016-03-24 14:02:34'),
(116, 'level2', 210, '20', 20, '2016-03-24 14:02:35'),
(117, 'level3', 297, '20', 20, '2016-03-24 14:02:35'),
(118, 'level4', 450, '20', 20, '2016-03-24 14:02:35'),
(119, 'level5', 199, '20', 20, '2016-03-24 14:02:36'),
(120, 'total score', 1530, '20', 20, '2016-03-24 14:02:36'),
(121, 'level1', 499, '21', 21, '2016-03-24 14:04:12'),
(122, 'level2', 360, '21', 21, '2016-03-24 14:04:13'),
(123, 'level3', 36, '21', 21, '2016-03-24 14:04:13'),
(124, 'level4', 307, '21', 21, '2016-03-24 14:04:13'),
(125, 'level5', 256, '21', 21, '2016-03-24 14:04:14'),
(126, 'total score', 1458, '21', 21, '2016-03-24 14:04:14'),
(127, 'level1', 456, '22', 22, '2016-03-24 14:04:31'),
(128, 'level2', 136, '22', 22, '2016-03-24 14:04:31'),
(129, 'level3', 70, '22', 22, '2016-03-24 14:04:31'),
(130, 'level4', 322, '22', 22, '2016-03-24 14:04:32'),
(131, 'level5', 241, '22', 22, '2016-03-24 14:04:32'),
(132, 'total score', 1225, '22', 22, '2016-03-24 14:04:32'),
(133, 'level1', 266, '23', 23, '2016-03-24 14:06:49'),
(134, 'level2', 324, '23', 23, '2016-03-24 14:06:49'),
(135, 'level3', 49, '23', 23, '2016-03-24 14:06:50'),
(136, 'level4', 177, '23', 23, '2016-03-24 14:06:50'),
(137, 'level5', 306, '23', 23, '2016-03-24 14:06:50'),
(138, 'total score', 1122, '23', 23, '2016-03-24 14:06:50'),
(139, 'level1', 337, '24', 24, '2016-03-24 14:07:36'),
(140, 'level2', 381, '24', 24, '2016-03-24 14:07:36'),
(141, 'level3', 129, '24', 24, '2016-03-24 14:07:36'),
(142, 'level4', 239, '24', 24, '2016-03-24 14:07:36'),
(143, 'level5', 2, '24', 24, '2016-03-24 14:07:37'),
(144, 'total score', 1088, '24', 24, '2016-03-24 14:07:37'),
(145, 'level1', 173, '25', 25, '2016-03-24 14:33:03'),
(146, 'level2', 227, '25', 25, '2016-03-24 14:33:04'),
(147, 'level3', 361, '25', 25, '2016-03-24 14:33:04'),
(148, 'level4', 378, '25', 25, '2016-03-24 14:33:04'),
(149, 'level5', 198, '25', 25, '2016-03-24 14:33:04'),
(150, 'total score', 1337, '25', 25, '2016-03-24 14:33:05'),
(151, 'level1', 372, '26', 26, '2016-03-24 14:45:24'),
(152, 'level2', 291, '26', 26, '2016-03-24 14:45:24'),
(153, 'level3', 413, '26', 26, '2016-03-24 14:45:25'),
(154, 'level4', 382, '26', 26, '2016-03-24 14:45:25'),
(155, 'level5', 129, '26', 26, '2016-03-24 14:45:25'),
(156, 'total score', 1587, '26', 26, '2016-03-24 14:45:25'),
(157, 'level1', 451, '27', 27, '2016-03-24 14:45:56'),
(158, 'level2', 80, '27', 27, '2016-03-24 14:45:56'),
(159, 'level3', 243, '27', 27, '2016-03-24 14:45:56'),
(160, 'level4', 316, '27', 27, '2016-03-24 14:45:57'),
(161, 'level5', 378, '27', 27, '2016-03-24 14:45:57'),
(162, 'total score', 1468, '27', 27, '2016-03-24 14:45:57'),
(163, 'level1', 366, '28', 28, '2016-03-24 14:46:48'),
(164, 'level2', 363, '28', 28, '2016-03-24 14:46:48'),
(165, 'level3', 470, '28', 28, '2016-03-24 14:46:48'),
(166, 'level4', 206, '28', 28, '2016-03-24 14:46:49'),
(167, 'level5', 247, '28', 28, '2016-03-24 14:46:49'),
(168, 'total score', 1652, '28', 28, '2016-03-24 14:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `game_token`
--

CREATE TABLE IF NOT EXISTS `game_token` (
  `id` int(4) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `game_token` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_token`
--

INSERT INTO `game_token` (`id`, `user_id`, `game_token`, `status`, `last_update`) VALUES
(1, '1', 'D3XkhA5Ut5TnQfIatiphWXjamrgNjtBETgcHHxnoOwYHRVl7TXkAxlhASj14vAVxvmOWun2JxPqUfslVIuDLwCCRM4ad4zCivkN3', 0, '2016-03-24 13:18:11'),
(2, '2', 'rMRaRHevSYynAOGKAXW5YBdmkuN2KPz6PkSZFexGReTFuyOUaWDQXzcuubQgP0pbAKfGQDcKdnCPLblV6NHukpyt2Lfni4C8J30f', 0, '2016-03-24 13:18:34'),
(3, '3', 'c3tAfiFpqOAUkjCz20ymbCMJOn6FyZTDtGZBcaJ2NEXURT1Fv4LjjUwjnE9Bh0ZG8aSvwTaxxnHLMlOEl0l9P5EKiOzpnTsA9y9h', 0, '2016-03-24 13:18:51'),
(4, '4', 'H0NYI3UvTM3mko3xCCguQFwbBgb60C5cCszXyZukpXbOgytkIvJoR2NXiR0t7dcWUMJOLOr2i0G7zAh1chAbgirBnlcJCGHyAZgx', 0, '2016-03-24 13:18:59'),
(5, '5', 'eing370cAxrDoe12AsBnKTv7ZNBeSRcbxkaWxTRZYM5hsIdi4V5Zp62PzuVO8N5ndelvox4ELU6OU4MqWgXtsbXrx3DgMAkrh0TV', 0, '2016-03-24 13:19:08'),
(6, '6', 'y5fQxaupfdO8Mt4ZJEBqbYfqJ9lstoLuZrOYpvlUiiJKK2MrmsRueKNRXFWZCo9SOGKZEIAhIf0d5tRMn7urFpIay3Vp9gV91M4R', 0, '2016-03-24 13:19:15'),
(7, '7', 'X2VDWjnycuHMihdNkTNyU2Mx7XZHxmMwit0XXZ0uC9C5TFcdRLzP695qJ3BWlcrS0Mtalx0jrGVgSWxvLvIYG8MbJ1A3vTt66Xig', 0, '2016-03-24 13:19:24'),
(8, '8', 'eht1zgdvbw7Yci0najdbdLCmVpxnoqOcdyOjt0mFLvNJbgZul0fpjXrrGPU4zPufzGxtKDSGImRmy6luSAFvM1EoP7FD86xbiHDv', 0, '2016-03-24 13:19:40'),
(9, '9', 'EvnVb81HwXBChGr7xzobTjOhs7wmNJTV1lKUIHrOZ0NzpZbG6Qr6DkUj6Cqg7skqL4uMD9dMPWnpV9j810RUJdne8ZG2O49OTFBw', 0, '2016-03-24 13:20:00'),
(10, '10', '0RIK3Al2YWb7O74WcPmYejSdthZ52WxAv1QbZKLQ4PE1QulIUramlUZWLB9WfKuio4lviMzwyAuOfJYmYVmCQntzqOGFQrOTEZdH', 0, '2016-03-24 13:20:43'),
(11, '11', 'yYZoZOcVO9onBIVfsKDuYWRygwssTdLCXeD24inaiCSZgVsY3qY4fRKLWqD0KQZhJlEyvEXjaXKuj0mz0ZFwSE0P0cbrYmAPSl2X', 0, '2016-03-24 13:21:00'),
(12, '12', '62ehgq7fPJgOUaxW4tg5rQifB1YRDc8U978SdZPHswwSXW5mjZRDBQGDqfURSpnhy4qlyqU2tc9PoB0FUnP27IsUCmeKvvZwmT5H', 0, '2016-03-24 13:25:14'),
(13, '13', 'VGZiDB8qjkljvCWqlEMIobcEMp3d33FSmlUBfZ6QPd6AHIfjXKoXb0R0uJvqrBGHaSdMefs8JXfJhHW3XIn4mITezUlwc13olhTP', 0, '2016-03-24 13:26:39'),
(14, '14', 'N5hRqZMn18DjHIEB2tcK7C6HySJWrsTqm4YCpXMvcPFxMUuHNTzrj1MLU0r6I4prjV2fMO8uJp4DfXHEVbk1RiPGE1x8nzjlDFtK', 0, '2016-03-24 13:35:41'),
(15, '15', 'ZTDSnL6vgLGGfDIUqz47oi3Nf3xVzwQWsXQPw3R4P3JCYDOW54X1I2ujZLhMuYDUiTqF1eYwKc9q5xiR6reNqDjG7mnwMjNLvHnn', 0, '2016-03-24 13:35:54'),
(16, '16', 'jg5KNyBHOowRs0Fdk6pdvTzQC6vzIW3lq9zFPVStv0kfzBMXCqz4JHwyu80T1YR2UUpsdbw7Auwv44gzhC6NjnR9L3T5HS1ALyD7', 0, '2016-03-24 13:36:03'),
(17, '17', 'VFaNFRy3wjF07KS6wn0klVp8FCVv5aUVINbj7d7boExuaOMHuWIMYJFdJptWkGvsRNAIWs3cESLRzL4bPnN7Zoi993pfV4tSoFlZ', 0, '2016-03-24 13:57:25'),
(18, '18', 'ZWy0HVRXzAbgG9nSEiMgzieo1O4K67aipTQu2mWizgOc7NibgHKF6aZFdVoDJcMxcIvPKGovXOO1VkBmfX5X0U8ONU5oIaLEnqx3', 0, '2016-03-24 13:59:09'),
(19, '19', '5xc6Bj1tOEEljipbbrbX2Ph8XFxGyGl5T4vhzzmLIpNuSh6Wbpa4dxjm3RnMj6IM4talVI5VZ1jwP8azygw4K7IswVAJrotlDLeg', 0, '2016-03-24 14:02:17'),
(20, '20', 'YE8vDEzv2E5FgQwXTXfP2d4ggkmJHwXcUvc80vVuAeuLJUJU1gZoAv7cZlsMl1Q6eeDDLdFmvGhKzQjKxq7QwEy06eVGno7SWQs1', 0, '2016-03-24 14:02:34'),
(21, '21', '5C8wsyf17kXJz3vvMkBFcds3NlN33MQsV7iETuorVrRcu5SLy1dtzl3axD7cTZEpD0l9dNqfBVC3hu8pc6HFPPwF9ikKCAlKdhg1', 0, '2016-03-24 14:04:12'),
(22, '22', 'iNnpe6Av8NizXtfYccDzOBdFhKa9xfek5cC3Sb4GoiL3A8rvVNkTpR8ytr4j56SyKYK4oDqfwa6V4bwqxKTBRuVNxuRRwlo9h7Kt', 0, '2016-03-24 14:04:31'),
(23, '23', '0Yyhe0k2Ar04woOd1ruOyGfJ4IMh4Cljv0DcPXSK25NkAsBLsF0p5Qf7tx1d5SzyRqAtjijPn5tXxSfHKhoovm7TKJ8xXuEa6dq8', 0, '2016-03-24 14:06:49'),
(24, '24', 'ZVFYOv4FXvyOiRH894BQn5REjnyNNViZab9ri8KRve9vDsY32giKyDIix2kVOrJlJj1M9CMWpP73kUBQhklw64WO8AuVcQzzGkgZ', 0, '2016-03-24 14:07:35'),
(25, '25', 'MDyVyjfusz3UOQ2ps7PILSu1y3C3b8k3u5bIOojg0ZhqoocpRwEWHSJeNp20sBFuzqcorkKVViTOnNIhCNQ31LlkpEPQ7XnN1DAW', 0, '2016-03-24 14:33:03'),
(26, '26', 'FbUUvcJjJqctbQS8eUSuIBMfXoHFPedrEBrMgtVq2jOzN5FXTgANaOaNXcvc7pcHZTkwpCvpJ4OxNcPFVuGY0TVdlTHBNsyQI3C9', 0, '2016-03-24 14:45:24'),
(27, '27', 'EplFn0CGTyJL9CofDkOXigIfCwjYyGktAQZAGC0Fj4BxqPuywXTzx3xUYeCrL4StpEwTRAh0BYmGzotfhWRyEdeWcjOgQPiR6PVz', 0, '2016-03-24 14:45:56'),
(28, '28', '6URA4p8YYTEGgrCAWEK0sCgNNVThoGQkfuQgPp6X53mIuwNp2pan9NFsQh20zXtQhqHksMXj4BV8BZRCZxs8JmXvM036BCYKaKrM', 0, '2016-03-24 14:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(5) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(500) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `user_name`, `password`, `nama_depan`, `nama_belakang`, `no_hp`, `email`, `alamat`, `last_update`) VALUES
(1, '0.42515773023478687', '61fa9c25e63dffad56f6e9059e2fff8f', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(2, '0.580647581955418', '2860f5599b69d0aed9e9d98a5809bf4f', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(3, '0.8756895933765918', '23ed6c3aa56190f469c48c76eb81981d', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(4, '0.8090826037805527', '7d99b3d4398c81802ff1ab4c85bf7baf', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(5, '0.07828958495520055', 'e6a578c1e7371a75967d4577476431d4', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(6, '0.4443672194611281', 'f104a08cfa919e5f71b6cebad316408e', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(7, '0.6229868307709694', 'f826604383617a5cf5a8e8d300613c69', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(8, '0.5932982068043202', 'f5fcf31a1a94bd614fa83f128ec3d5ac', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(9, '0.8789470468182117', 'ce0712c77bac0fc4d557b68de7abe13e', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(10, '0.28189952461980283', 'c6ce67386f89865a90469c2f07ca6342', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(11, '0.4503782643005252', '9526b0de196b8219123fb9b7391a7762', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(12, '0.531999422935769', '9b3196040fc23a018050d44cb38f8a1e', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(13, '0.8117880313657224', 'a111c5b1090f5afbbfc13ea9937f0148', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(14, '0.1999535788781941', '9795055170b39b077bfe5d36a62ece45', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(15, '0.6862913961522281', '54ab14a309cc3047cb3e78e37a38d06b', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(16, '0.6826706707943231', 'f3e6d52d80fbb366ffe2aa05e4e59f68', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '0000-00-00 00:00:00'),
(17, '0.9249638766050339', 'fec24f556566ed4f8d7ec3cc48e8517c', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 13:57:24'),
(18, '0.0963253821246326', '7469242acf9bb552747de53a01e1d34f', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 13:59:08'),
(19, '0.4719901743810624', 'd2959f69ed024c7339c1d2677c3ac924', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:02:16'),
(20, '0.39487783960066736', '7067fb018606c3e7f16020d9fcb0cae4', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:02:33'),
(21, '0.17365571320988238', 'f79e2fea61d13e08bb9d11d4740e9531', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:04:11'),
(22, '0.8513092885259539', '89820e4e3c1365bd87681deaa121c339', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:04:29'),
(23, '0.3844237008597702', '97da2f2c574617dd22c6df9e6c81f252', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:06:48'),
(24, '0.07427925243973732', '0dd87cf42494c95583980f258b2bbac9', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:07:34'),
(25, '0.5064233550801873', '568614162bf9622652681c69b6b60b37', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:33:02'),
(26, '0.9131546868011355', '69b00ff463a3b7927b1db4f0eafbbf3f', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:45:23'),
(27, '0.9731977756600827', 'e7d688b98f57006b9ea0f1ce52c31748', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:45:54'),
(28, '0.129222092917189', 'dfbcab49fe4c35db0f77c75d5fca68df', 'yusuf', 'afandi', '01929823012380123', 'afandi.yusuf.04@gmail.com', 'bandung', '2016-03-24 14:46:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_score`
--
ALTER TABLE `game_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_token`
--
ALTER TABLE `game_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `game_score`
--
ALTER TABLE `game_score`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `game_token`
--
ALTER TABLE `game_token`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
