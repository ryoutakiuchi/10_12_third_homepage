-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 1 月 14 日 14:54
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d07_12`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer_management_table2`
--

CREATE TABLE `customer_management_table2` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(13) NOT NULL,
  `adress` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `customer_management_table2`
--

INSERT INTO `customer_management_table2` (`id`, `username`, `age`, `sex`, `tel`, `adress`, `item`) VALUES
(1, '木内　亮太', 34, '男', -6822, '福岡市中央区大名１', 'おせち'),
(2, '樋渡 一文', 1, '女', 1, '福岡市中央区薬院', 'クリスマスケーキ'),
(3, '森田　美香', 1, '女', 1, '福岡市中央区舞鶴', 'クリスマスケーキ'),
(4, '木内　恵美莉', 1, '女', 1, '福岡市西区姪浜駅南', 'チキン'),
(5, '鈴木　敏文', 1, '男', 1, '東京都千代田区', 'クリスマスケーキ'),
(6, '井坂　隆一', 69, '男', 92, '東京都千代田区', 'ギフト'),
(7, '森田　美香', 41, '女', 90, '福岡市中央区舞鶴', 'クリスマスケーキ');

-- --------------------------------------------------------

--
-- テーブルの構造 `goods`
--

CREATE TABLE `goods` (
  `code` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `goods`
--

INSERT INTO `goods` (`code`, `name`, `price`, `comment`) VALUES
(1, 'おちゃこ', 346, '■概要\r\n通常の茶こしと違い急須に引っかかる部分がプラスチックになっており、約１ｃｍ伸縮します。\r\nよっていろいろな急須に気にせずご使用いただけます。\r\n大、中、小と３サイズ準備しておりそれぞれ急須の対応口径サイズに合わせ製品をご選定いただけます。\r\n\r\n■サイズ\r\n大（口径 約 85～95 mm）、 中（口径 約 75～85 mm）、 小（口径 約 65～75 mm）'),
(2, 'フリースライド茶こし　中', 346, '■概要\r\n通常の茶こしと違い急須に引っかかる部分がプラスチックになっており、約１ｃｍ伸縮します。\r\nよっていろいろな急須に気にせずご使用いただけます。\r\n大、中、小と３サイズ準備しておりそれぞれ急須の対応口径サイズに合わせ製品をご選定いただけます。\r\nまた急須の深さに合わせ約１．５ｃｍスライド伸縮しますので茶葉が急須底部分までしっかりとつかります。\r\n\r\n■サイズ\r\n中　フリー（口径 約 75～85 mm）スライド（深さ 60～75 mm）\r\n'),
(3, 'マジック茶こし', 380, '■概要\r\n注ぎ口の根っこ中央部分に内側から差し込み使用します。\r\n\r\n■サイズ\r\n小（穴口径 23 mm）');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(5, '洗車する', '2021-01-01', '2020-12-19 16:00:06', '2020-12-30 05:58:46'),
(8, '実家', '2020-12-31', '2020-12-19 16:02:01', '2020-12-19 16:02:01'),
(9, 'gs', '2020-12-26', '2020-12-19 16:02:52', '2020-12-19 16:02:52'),
(11, 'テスト', '2020-12-24', '2020-12-19 16:44:23', '2020-12-19 16:44:23'),
(12, 'daoaoaaoa', '2021-01-09', '2020-12-19 17:05:47', '2020-12-19 17:05:47'),
(13, 'lo', '2020-12-03', '2020-12-26 15:45:01', '2020-12-26 15:45:01'),
(14, 'モリモリ', '2020-12-03', '2020-12-26 15:45:08', '2020-12-26 15:45:08'),
(15, 'テスト', '2020-12-04', '2020-12-26 16:49:01', '2020-12-26 16:49:01'),
(16, 'モリモリno', '2021-01-01', '2020-12-26 17:25:58', '2020-12-26 17:25:58'),
(17, 'モリモリのモリモリ', '2021-01-08', '2020-12-26 17:32:06', '2020-12-26 17:32:06'),
(19, 'モリモリ', '2021-01-08', '2021-01-09 16:18:11', '2021-01-09 16:18:11'),
(20, 'LT準備', '2021-01-09', '2021-01-09 16:23:09', '2021-01-09 16:23:09');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(3, '木内 亮子', '7788', 3434, 1212, '2020-12-30 15:37:25', '2021-01-06 20:07:30'),
(4, '木内　恵美莉', '123', 2, 1, '2021-01-01 23:43:44', '2021-01-01 23:47:35'),
(6, '森田　美夫', '0', 1, 1, '2021-01-06 20:07:12', '2021-01-06 20:26:45'),
(7, 'kiuchi', '0102', 0, 0, '2021-01-09 15:51:19', '2021-01-09 15:51:19'),
(8, '木内　恵利子', '0905', 0, 0, '2021-01-09 15:59:38', '2021-01-09 15:59:38'),
(9, 'ryouta', '0731', 0, 0, '2021-01-09 16:19:47', '2021-01-09 16:19:47'),
(10, '木内 亮太', '0731', 0, 0, '2021-01-12 17:07:10', '2021-01-12 17:07:10'),
(11, '木内', '', 0, 0, '2021-01-12 17:22:52', '2021-01-12 17:22:52'),
(13, '木内　隆司', '0224', 0, 0, '2021-01-14 18:37:52', '2021-01-14 18:37:52');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customer_management_table2`
--
ALTER TABLE `customer_management_table2`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `goods`
--
ALTER TABLE `goods`
  ADD UNIQUE KEY `code` (`code`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `customer_management_table2`
--
ALTER TABLE `customer_management_table2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
