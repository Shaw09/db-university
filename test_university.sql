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

CREATE TABLE `student` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` DATE NOT NULL,
	`fiscal_code` VARCHAR(100) NOT NULL,
	`enrolement_date` DATE,
	`registration_number` INT NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `courses` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` TEXT,
	`website` TEXT,
	`cfu` VARCHAR(255) NOT NULL,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `teachers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`phone` INT,
	`email` VARCHAR(100),
	`office_address` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `exams` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`date_exam` DATE NOT NULL,
	`hour_exam` TIME NOT NULL,
	`location` VARCHAR(255),
	`address` VARCHAR(255),
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);

CREATE TABLE `vote` (
	`vote` INT NOT NULL,
	`student_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	PRIMARY KEY(`student_id`,`exams_id`),
	FOREIGN KEY(`student_id`) REFERENCES student(`id`),
	FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);

-- DATI
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_departament`) VALUES ('Ingegneria', 'P.za Leonardo da Vinci, Milano', '066765754', 'ingegneria@daje.com', 'ingegneria.it', 'Franco Battiato');
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_departament`) VALUES ('Economia', 'Via Cavour, Milano', '066765754', 'economia@daje.com', 'economia.it', 'Raco Battiat');	
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_departament`) VALUES ('Archiettura', 'Via Montevideo 11, Milano', '066765754', 'architettura@daje.com', 'architettura.it', 'Frato Batto');	

INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'Via dei Francobolli', 'informatica@polimi.it', 'informatica.it', 'Triennale', 1);
INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Lingue', 'Via del Pingno', 'lingue@polimi.it', 'robotica.it' 'Triennale', 1);
INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Robotica', 'Via della Rosticceria', 'robotica@polimi.it', 'robotica.it', 'Triennale', 1);

INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Gelsomino', 'Tircheco', '10/12/5201', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);
INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Patrocchio', 'Ocho', '1/1/50', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);
INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Irnesto', 'Netturbino', '31/03/1025', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);

INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Ingegneristica dei Fiorellini', 'molto bella', 'fiorellini.it', 'robe', 1);
INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Lingue Aliene', 'comprensione sofistica', 'alieni.it', 'calcestruzzo', 1);
INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Gundam', 'japrobotdaje', 'gundam.it', 'gunpla', 1);

INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Fiorella', 'Cincinneschi', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');
INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Neil', 'Armstrong', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');
INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Yoshiyuki', 'Tomino', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');

INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/20584', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);
INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/20584', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);
INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/20584', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);

INSERT INTO `vote`(`vote`,`student_id`,`exam_id`) VALUES ('8446484', 1, 1);
INSERT INTO `vote`(`vote`,`student_id`,`exam_id`) VALUES ('8446484', 1, 1);
INSERT INTO `vote`(`vote`,`student_id`,`exam_id`) VALUES ('8446484', 1, 1);