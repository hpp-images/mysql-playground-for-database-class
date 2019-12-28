SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE kadai;

CREATE TABLE `供給` (
  `部門番号` int(11) NOT NULL,
  `部品番号` int(11) NOT NULL,
  `業者番号` int(11) NOT NULL,
  `単価` int(11) NOT NULL,
  `数量` int(11) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `供給` (`部門番号`, `部品番号`, `業者番号`, `単価`, `数量`) VALUES
(1, 1, 1, 25000, 1000),
(1, 1, 2, 26000, 200),
(1, 2, 1, 850, 500),
(1, 2, 3, 800, 1200),
(2, 1, 1, 24980, 800),
(2, 1, 3, 22000, 700),
(2, 3, 1, 11500, 1000),
(2, 4, 1, 5000, 100),
(2, 4, 2, 4980, 10),
(2, 4, 3, 5060, 500),
(3, 1, 1, 25000, 2000),
(3, 2, 2, 880, 100),
(3, 2, 3, 820, 200),
(3, 3, 1, 11000, 1200),
(3, 3, 3, 12000, 100),
(3, 4, 1, 5000, 100),
(3, 4, 2, 5050, 200),
(3, 4, 3, 5100, 2000);

CREATE TABLE `従業員` (
  `従業員番号` int(11) NOT NULL,
  `部門番号` int(11) NOT NULL,
  `氏名` varchar(16) NOT NULL,
  `住所` varchar(16) NOT NULL,
  `年齢` int(11) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `従業員` (`従業員番号`, `部門番号`, `氏名`, `住所`, `年齢`) VALUES
(1, 2, '佐藤健太', '東海市', 44),
(2, 1, '鈴木裕子', '名古屋市', 19),
(3, 2, '田中誠', '豊田市', 18),
(4, 2, '田中愛', '桑名市', 25),
(5, 1, '渡辺大輔', '一宮市', 41),
(6, 3, '伊藤拓也', '岡崎市', 49),
(7, 3, '山本恵', '岐阜市', 31),
(8, 1, '中村直樹', '日進市', 34),
(9, 1, '斎藤麻美', '名古屋市', 19),
(10, 3, '山田一郎', '春日井市', 58);

CREATE TABLE `業者` (
  `業者番号` int(11) NOT NULL,
  `業者名` varchar(32) NOT NULL,
  `住所` varchar(16) NOT NULL,
  `電話番号` varchar(16) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `業者` (`業者番号`, `業者名`, `住所`, `電話番号`) VALUES
(1, '名大エレクトロニクス', '名古屋市', '123-456-789'),
(2, '愛知電気', '名古屋市', '234-567-890'),
(3, 'PC パーツ岐阜', '岐阜市', '345-678-901');

CREATE TABLE `部品` (
  `部品番号` int(11) NOT NULL,
  `部品名` varchar(32) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `部品` (`部品番号`, `部品名`) VALUES
(1, 'グラフィックボード A'),
(2, 'LAN ボード B'),
(3, 'CPU C'),
(4, 'メモリ D');

CREATE TABLE `部門` (
  `部門番号` int(11) NOT NULL,
  `部門名` varchar(16) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `部門` (`部門番号`, `部門名`) VALUES
(1, '営業1'),
(2, '営業2'),
(3, '営業3');

ALTER TABLE `供給`
  ADD PRIMARY KEY (`部門番号`,`部品番号`,`業者番号`),
  ADD KEY `供給の部品番号は部品DBにある` (`部品番号`),
  ADD KEY `業者の業者番号は業者DBにある` (`業者番号`);

ALTER TABLE `従業員`
  ADD PRIMARY KEY (`従業員番号`),
  ADD KEY `従業員の部門番号は部門DB内にある` (`部門番号`);

ALTER TABLE `業者`
  ADD PRIMARY KEY (`業者番号`);

ALTER TABLE `部品`
  ADD PRIMARY KEY (`部品番号`);

ALTER TABLE `部門`
  ADD PRIMARY KEY (`部門番号`);

ALTER TABLE `従業員`
  MODIFY `従業員番号` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `業者`
  MODIFY `業者番号` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `部品`
  MODIFY `部品番号` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `部門`
  MODIFY `部門番号` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `供給`
  ADD CONSTRAINT `供給の部品番号は部品DBにある` FOREIGN KEY (`部品番号`) REFERENCES `部品` (`部品番号`),
  ADD CONSTRAINT `供給の部門番号は部門DBにある` FOREIGN KEY (`部門番号`) REFERENCES `部門` (`部門番号`),
  ADD CONSTRAINT `業者の業者番号は業者DBにある` FOREIGN KEY (`業者番号`) REFERENCES `業者` (`業者番号`);

ALTER TABLE `従業員`
  ADD CONSTRAINT `従業員の部門番号は部門DB内にある` FOREIGN KEY (`部門番号`) REFERENCES `部門` (`部門番号`);
COMMIT;