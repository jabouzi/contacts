CREATE TABLE `contact` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`ownerid` int(10) unsigned NOT NULL,
`firstname` tinytext NOT NULL,
`middlename` tinytext NOT NULL,
`lastname` tinytext NOT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `contactgroup` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`contactid` int(10) unsigned NOT NULL,
`label` text NOT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `contactmethod` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`contactgroupid` int(10) unsigned NOT NULL,
`type` tinytext NOT NULL,
`value` text NOT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`username` varchar(64) NOT NULL,
`password` varchar(40) NOT NULL,
`admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`id`)
);
