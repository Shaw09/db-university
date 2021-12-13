-- SCHEMA
CREATE DATABASE `test_university`;
USE `test_university`;

CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` INT,
	`email` VARCHAR(100),
	`website` TEXT,
	`head_of_department` VARCHAR(100),
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
ALTER TABLE `degrees` ADD COLUMN `website` TEXT;

CREATE TABLE `student`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` DATE NOT NULL,
	`fiscal_code` VARCHAR(100) NOT NULL,
	`enrolement_date` DATE,
	`registration_number` INT NOT NULL,
	`email` VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `courses`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` TEXT,
	`website` TEXT,
	`cfu` VARCHAR(255) NOT NULL,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `teachers`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`phone` INT,
	`email` VARCHAR(100),
	`office_address` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `exams`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`date_exam` DATE NOT NULL,
	`hour_exam` TIME NOT NULL,
	`location` VARCHAR(255),
	`address` VARCHAR(255),
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);

CREATE TABLE `vote`(
	`vote` INT NOT NULL,
	`student_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	PRIMARY KEY(`student_id`,`exams_id`),
	FOREIGN KEY(`student_id`) REFERENCES student(`id`),
	FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);