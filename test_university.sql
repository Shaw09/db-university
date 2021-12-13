-- SCHEMA
CREATE DATABASE `test_university`;
USE `test_university`;

CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	PRIMARY KEY(`id`)
);
-- mod

CREATE TABLE `degrees`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`email`VARCHAR(100),
	`level` VARCHAR(100),
	`departments_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);

ALTER TABLE `degrees` ADD COLUMN `address` VARCHAR(255);


-- ATTENZIONE tabella ponte fuffa solo per esempio
CREATE TABLE `departments_degrees`(
	`departments_id` INT NOT NULL,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`departments_id`,`degrees_id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES `degrees`(`id`)
);

INSERT INTO `departments_degrees`(`departments_id`, `degrees_id`) VALUES(4,1);
-- fine esempio

-- DATI
INSERT INTO `departments`(`name`,`address`) VALUES ('Ingegneria', 'P.za Leonardo da Vinci, Milano');
INSERT INTO `departments`(`name`,`address`) VALUES ('Economia', 'Via Cavour, Milano');	
INSERT INTO `departments`(`name`,`address`) VALUES ('Archiettura', 'Via Montevideo 11, Milano');	

INSERT INTO `degrees`(`name`,`email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'informatica@polimi.it', 'Triennale', 1);

SELECT * FROM `departments`;
SELECT `name` FROM `departments`;
SELECT * FROM `departments` WHERE `id`= 1;

UPDATE `departments` SET `address`='P.za Leonardo da Vinci 5, 20100 Milano' WHERE `id`= 1;
UPDATE `departments` SET `address`='Via Cavour 37b, 20100 Milano' WHERE `id`= 2;

DELETE FROM `departments` WHERE `id` = 3;


