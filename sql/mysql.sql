CREATE TABLE `references_articles` (
  `article_id` int(10) unsigned NOT NULL auto_increment,
  `article_category_id` int(10) unsigned NOT NULL,
  `article_timestamp` int(10) unsigned NOT NULL,
  `article_weight` mediumint(8) unsigned NOT NULL,
  `article_date` varchar(30) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `article_externalurl` varchar(255) NOT NULL,
  `article_picture1` varchar(100) NOT NULL,
  `article_picture1_text` varchar(255) NOT NULL,
  `article_picture2` varchar(100) NOT NULL,
  `article_picture2_text` varchar(255) NOT NULL,
  `article_picture3` varchar(100) NOT NULL,
  `article_picture3_text` varchar(255) NOT NULL,
  `article_picture4` varchar(100) NOT NULL,
  `article_picture4_text` varchar(255) NOT NULL,
  `article_picture5` varchar(100) NOT NULL,
  `article_picture5_text` varchar(255) NOT NULL,
  `article_picture6` varchar(100) NOT NULL,
  `article_picture6_text` varchar(255) NOT NULL,
  `article_picture7` varchar(100) NOT NULL,
  `article_picture7_text` varchar(255) NOT NULL,
  `article_picture8` varchar(100) NOT NULL,
  `article_picture8_text` varchar(255) NOT NULL,
  `article_picture9` varchar(100) NOT NULL,
  `article_picture9_text` varchar(255) NOT NULL,
  `article_picture10` varchar(100) NOT NULL,
  `article_picture10_text` varchar(255) NOT NULL,
  `article_author` mediumint(8) unsigned NOT NULL,
  `article_online` tinyint(1) unsigned NOT NULL,
  `article_attached_file` varchar(255) NOT NULL,
  `article_readmore` text NOT NULL,  
  PRIMARY KEY  (`article_id`),
  KEY `article_timestamp` (`article_timestamp`),
  KEY `article_title` (`article_title`),
  KEY `article_author` (`article_author`),
  KEY `article_online` (`article_online`),
  KEY `article_category_id` (`article_category_id`),
  KEY `article_weight` (`article_weight`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE `references_categories` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `category_title` varchar(255) NOT NULL,
  `category_weight` mediumint(8) unsigned NOT NULL,
  `category_description` text NOT NULL,
  PRIMARY KEY  (`category_id`),
  KEY `category_sort` (`category_weight`,`category_title`)
) ENGINE=InnoDB;
