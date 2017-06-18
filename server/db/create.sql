USE blog;

CREATE TABLE `blog`.`essay` (
	`id` tinyint(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
	`title` char(100) NOT NULL DEFAULT '',
	`content` text DEFAULT NULL,
	`views` mediumint(9) NOT NULL DEFAULT '0',
	`created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`last_modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`categories` char(40) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`),
	INDEX `id` USING BTREE (id),
	INDEX `views` USING BTREE (views),
	INDEX `categories` USING BTREE (categories)
) ENGINE=`InnoDB` AUTO_INCREMENT=1 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;