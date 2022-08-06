-- https://dev.mysql.com/doc/refman/5.7/en/insert-on-duplicate.html

create database `8929be4a-07a7-47a8-a41f-cfd115561cac`;

use `8929be4a-07a7-47a8-a41f-cfd115561cac`;

create table `77e828bd-9e2b-40e0-b977-746c07eeae35` (
    `id` int unsigned not null auto_increment,
    `title` varchar(255) default null,
    PRIMARY KEY (`id`)
) engine=innodb auto_increment=1 default charset=utf8mb4 collate=utf8mb4_unicode_ci;

insert into `77e828bd-9e2b-40e0-b977-746c07eeae35` (id, title) values (1, 'Five') on duplicate key update title = 'Four';
select * from `77e828bd-9e2b-40e0-b977-746c07eeae35`;

insert into `77e828bd-9e2b-40e0-b977-746c07eeae35` (id, title) values (1, 'Five') on duplicate key update title = 'Four';
select * from `77e828bd-9e2b-40e0-b977-746c07eeae35`;

drop database `8929be4a-07a7-47a8-a41f-cfd115561cac`;
