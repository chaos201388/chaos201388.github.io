-- https://dev.mysql.com/doc/refman/5.7/en/insert-on-duplicate.html

create database example;

use example;

create table `example` (
    `id` int unsigned not null auto_increment,
    `title` varchar(255) default null,
    PRIMARY KEY (`id`)
) engine=innodb auto_increment=1 default charset=utf8mb4 collate=utf8mb4_unicode_ci;

insert into example (id, title) values (1, 'Five') on duplicate key update title = 'Five!';
insert into example (id, title) values (1, 'Five') on duplicate key update title = 'Five!';
