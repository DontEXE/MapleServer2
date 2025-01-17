--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `type` text NOT NULL,
  `sub_type` text NOT NULL,
  `image_url` text,
  `language` int NOT NULL,
  `begin_time` bigint NOT NULL,
  `end_time` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `meretmarketitems`
--

DROP TABLE IF EXISTS `meret_market_items`;
CREATE TABLE `meret_market_items` (
  `market_id` int NOT NULL AUTO_INCREMENT,
  `banner_id` int DEFAULT NULL,
  `bonus_quantity` int NOT NULL,
  `category` int NOT NULL,
  `duration` int NOT NULL,
  `flag` tinyint unsigned NOT NULL,
  `item_id` int NOT NULL,
  `item_name` text,
  `job_requirement` int NOT NULL,
  `max_level_requirement` smallint NOT NULL,
  `meret_market_item_market_id` int DEFAULT NULL,
  `min_level_requirement` smallint NOT NULL,
  `pc_cafe` tinyint(1) NOT NULL,
  `parent_market_id` int NOT NULL,
  `price` bigint NOT NULL,
  `promo_banner_begin_time` bigint NOT NULL,
  `promo_banner_end_time` bigint NOT NULL,
  `promo_flag` int NOT NULL,
  `promo_name` text,
  `quantity` int NOT NULL,
  `rarity` tinyint unsigned NOT NULL,
  `required_achievement_grade` int NOT NULL,
  `required_achievement_id` int NOT NULL,
  `restock_unavailable` tinyint(1) NOT NULL,
  `sale_price` bigint NOT NULL,
  `sell_begin_time` bigint NOT NULL,
  `sell_end_time` bigint NOT NULL,
  `show_sale_time` tinyint(1) NOT NULL,
  `token_type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`market_id`),
  KEY `ix_meretmarketitems_bannerid` (`banner_id`),
  KEY `ix_meretmarketitems_meretmarketitemmarketid` (`meret_market_item_market_id`),
  CONSTRAINT `fk_meretmarketitems_banners_bannerid` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_meretmarketitems_meretmarketitems_meretmarketitemmarketid` FOREIGN KEY (`meret_market_item_market_id`) REFERENCES `meret_market_items` (`market_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `banners` (`id`, `name`, `type`, `sub_type`, `image_url`, `language`, `begin_time`, `end_time`) VALUES

(1, 'homeproduct_emulator','merat','cash','https://i.imgur.com/TV47C2m.png',-1,1262304000,4102444800);

INSERT INTO `meret_market_items` (`market_id`, `banner_id`, `bonus_quantity`, `category`, `duration`, `flag`, `item_id`, `item_name`, `job_requirement`, `max_level_requirement`, `meret_market_item_market_id`, `min_level_requirement`, `pc_cafe`, `parent_market_id`, `price`, `promo_banner_begin_time`, `promo_banner_end_time`, `promo_flag`, `promo_name`, `quantity`, `rarity`, `required_achievement_grade`, `required_achievement_id`, `restock_unavailable`, `sale_price`, `sell_begin_time`, `sell_end_time`, `show_sale_time`, `token_type`) VALUES

(10000000,1,0,10,0,0,22002001,'',4095,0,NULL,0,0,0,120,1262304000,4102444800,0,'',1,4,0,0,0,100,1262304000,4102444800,1,1),
(10000001,NULL,0,0,0,0,22002001,'',4095,0,10000000,0,0,10000000,1200,0,0,0,'',10,4,0,0,0,900,1262304000,4102444800,0,1),
(10000002,NULL,0,0,0,0,22002001,'',4095,0,10000000,0,0,10000000,6000,0,0,0,'',50,4,0,0,0,5000,1262304000,4102444800,0,1),
(10000010,NULL,0,10,0,0,22001010,'',4095,0,NULL,0,0,0,130,1262304000,4102444800,1,'',1,4,0,0,0,100,1262304000,4102444800,0,1),
(10000011,NULL,0,0,0,0,22001010,'',4095,0,10000010,0,0,10000010,1300,0,0,0,'',10,4,0,0,0,950,1262304000,4102444800,0,1),
(10000012,NULL,0,0,0,0,22001010,'',4095,0,10000010,0,0,10000010,6500,0,0,0,'',50,4,0,0,0,5200,1262304000,4102444800,0,1),
(140300010,NULL,0,40300,0,0,70100005,'',4095,0,NULL,0,0,0,360,0,0,0,'',1,1,0,0,0,360,1262304000,4102444800,0,1),
(140300020,NULL,0,40300,0,0,70100004,'',4095,0,NULL,0,0,0,140,0,0,0,'',1,1,0,0,0,140,1262304000,4102444800,0,1),
(140300025,NULL,0,40300,0,0,70100001,'',4095,0,NULL,0,0,0,1450,0,0,0,'',1,1,0,0,0,1450,1262304000,4102444800,0,1),
(140300030,NULL,0,40300,0,0,30000896,'',4095,0,NULL,0,0,0,650,0,0,0,'',1,1,0,0,0,650,1262304000,4102444800,0,1),
(140300040,NULL,0,40300,0,0,20302314,'',4095,0,NULL,0,0,0,650,0,0,0,'',1,1,0,0,0,650,1262304000,4102444800,0,1),
(140300050,NULL,0,40300,0,0,20300011,'',4095,0,NULL,0,0,0,30,0,0,0,'',1,1,0,0,0,30,1262304000,4102444800,0,1),
(140300051,NULL,0,0,0,0,20300011,'',4095,0,140300050,0,0,140300050,150,0,0,0,'',5,1,0,0,0,150,1262304000,4102444800,0,1),
(140300052,NULL,0,0,0,0,20300011,'',4095,0,140300050,0,0,140300050,300,0,0,0,'',10,1,0,0,0,300,1262304000,4102444800,0,1),
(140300053,NULL,0,0,0,0,20300011,'',4095,0,140300050,0,0,140300050,900,0,0,0,'',30,1,0,0,0,900,1262304000,4102444800,0,1),
(140300060,NULL,0,40300,0,0,20000004,'',4095,0,NULL,0,0,0,7,0,0,0,'',1,1,0,0,0,7,1262304000,4102444800,0,1),
(140300061,NULL,0,0,0,0,20000004,'',4095,0,140300060,0,0,140300060,70,0,0,0,'',10,1,0,0,0,65,1262304000,4102444800,0,1),
(140300062,NULL,0,0,0,0,20000004,'',4095,0,140300060,0,0,140300060,350,0,0,0,'',50,1,0,0,0,300,1262304000,4102444800,0,1),
(140300063,NULL,0,0,0,0,20000004,'',4095,0,140300060,0,0,140300060,700,0,0,0,'',100,1,0,0,0,550,1262304000,4102444800,0,1),
(140300070,NULL,0,40300,0,0,20300226,'',4095,0,NULL,0,0,0,5,0,0,0,'',1,1,0,0,0,5,1262304000,4102444800,0,1),
(140300071,NULL,0,0,0,0,20300226,'',4095,0,140300070,0,0,140300070,50,0,0,0,'',10,1,0,0,0,45,1262304000,4102444800,0,1),
(140300072,NULL,0,0,0,0,20300226,'',4095,0,140300070,0,0,140300070,250,0,0,0,'',50,1,0,0,0,200,1262304000,4102444800,0,1),
(140300073,NULL,0,0,0,0,20300226,'',4095,0,140300070,0,0,140300070,500,0,0,0,'',100,1,0,0,0,380,1262304000,4102444800,0,1),
(140300080,NULL,0,40300,0,0,20301114,'',4095,0,NULL,0,0,0,990,0,0,0,'',1,1,0,0,0,990,1262304000,4102444800,0,1),
(140300090,NULL,0,40300,0,0,20300225,'',4095,0,NULL,0,0,0,790,0,0,0,'',1,1,0,0,0,790,1262304000,4102444800,0,1),
(140300100,NULL,0,40300,0,0,20300224,'',4095,0,NULL,0,0,0,1390,0,0,0,'',1,1,0,0,0,1390,1262304000,4102444800,0,1),
(140300110,NULL,0,40300,0,0,20300222,'',4095,0,NULL,0,0,0,990,0,0,0,'',1,1,0,0,0,990,1262304000,4102444800,0,1),
(140300120,NULL,0,40300,0,0,20300054,'',4095,0,NULL,0,0,0,150,0,0,0,'',1,1,0,0,0,150,1262304000,4102444800,0,1),
(140300130,NULL,0,40300,0,0,20300046,'',4095,0,NULL,0,0,0,10,0,0,0,'',1,1,0,0,0,10,1262304000,4102444800,0,1),
(140300140,NULL,0,40300,1,0,20300089,'',4095,0,NULL,0,0,0,60,0,0,0,'',1,1,0,0,0,60,1262304000,4102444800,0,1),
(140300141,NULL,0,0,7,0,20300089,'',4095,0,140300140,0,0,140300140,420,0,0,0,'',1,1,0,0,0,270,1262304000,4102444800,0,1),
(140600000,NULL,0,40600,0,0,34000088,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600010,NULL,0,40600,0,0,34000089,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600020,NULL,0,40600,0,0,34000090,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600030,NULL,0,40600,0,0,34000071,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600040,NULL,0,40600,0,0,34000070,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600050,NULL,0,40600,0,0,34000049,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600060,NULL,0,40600,0,0,34000048,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600070,NULL,0,40600,0,0,34000041,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600080,NULL,0,40600,0,0,34000040,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600090,NULL,0,40600,0,0,34000039,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600100,NULL,0,40600,0,0,34000035,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600110,NULL,0,40600,0,0,34000036,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600120,NULL,0,40600,0,0,34000037,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600130,NULL,0,40600,0,0,34000028,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600140,NULL,0,40600,0,0,34000027,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600150,NULL,0,40600,0,0,34000029,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600160,NULL,0,40600,0,0,34000024,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600170,NULL,0,40600,0,0,34000025,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600180,NULL,0,40600,0,0,34000026,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600190,NULL,0,40600,0,0,34000021,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600200,NULL,0,40600,0,0,34000022,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600210,NULL,0,40600,0,0,34000023,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600220,NULL,0,40600,0,0,34000013,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600230,NULL,0,40600,0,0,34000014,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600240,NULL,0,40600,0,0,34000015,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600250,NULL,0,40600,0,0,34000012,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600260,NULL,0,40600,0,0,34000011,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600270,NULL,0,40600,0,0,34000010,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600280,NULL,0,40600,0,0,34000009,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1),
(140600290,NULL,0,40600,0,0,34000008,'',4095,0,NULL,0,0,0,500,0,0,0,'',1,3,0,0,0,500,1262304000,4102444800,0,1);