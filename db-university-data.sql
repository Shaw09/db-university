USE `test_university`;

-- DATI
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_department`) VALUES ('Ingegneria', 'P.za Leonardo da Vinci, Milano', '066765754', 'ingegneria@daje.com', 'ingegneria.it', 'Franco Battiato');
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_department`) VALUES ('Economia', 'Via Cavour, Milano', '066765754', 'economia@daje.com', 'economia.it', 'Raco Battiat');	
INSERT INTO `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_department`) VALUES ('Archiettura', 'Via Montevideo 11, Milano', '066765754', 'architettura@daje.com', 'architettura.it', 'Frato Batto');	

INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'Via dei Francobolli', 'informatica@polimi.it', 'informatica.it', 'Triennale', 1);
INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Lingue', 'Via del Pingno', 'lingue@polimi.it', 'robotica.it' 'Triennale', 2);
INSERT INTO `degrees`(`name`,`address`,`email`,`website`,`level`, `departments_id`) VALUES ('Laurea in Robotica', 'Via della Rosticceria', 'robotica@polimi.it', 'robotica.it', 'Triennale', 3);

INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolement_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Gelsomino', 'Tircheco', '10/12/5201', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);
INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolement_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Patrocchio', 'Ocho', '1/1/50', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);
INSERT INTO `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolement_date`,`registration_ number`,`email`,`degrees_id`) VALUES ('Irnesto', 'Netturbino', '31/03/1025', 'GSDSDGGI548423', '12/10/1000', '88848458631', 'gelsomino@polimi.it', 1);

INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Ingegneristica dei Fiorellini', 'molto bella', 'fiorellini.it', 'robe', 1);
INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Lingue Aliene', 'comprensione sofistica', 'alieni.it', 'calcestruzzo', 1);
INSERT INTO `courses`(`name`,`description`,`website`,`cfu`,`degrees_id`) VALUES ('Gundam', 'japrobotdaje', 'gundam.it', 'gunpla', 1);

INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Fiorella', 'Cincinneschi', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');
INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Neil', 'Armstrong', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');
INSERT INTO `teachers`(`name`,`surname`,`phone`,`email`,`office_address`) VALUES ('Yoshiyuki', 'Tomino', '6458268', 'tuttecose@fattegliaffarituoi.com' 'Via de non se po di');

INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/2058', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);
INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/2058', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);
INSERT INTO `exams`(`date_exam`,`hour_exam`,`location`,`address`,`courses_id`) VALUES ('25/12/2058', '00.00', 'location 10/10', 'Via degli esami non finiti bene', 1);

INSERT INTO `vote`(`vote`,`student_id`,`exams_id`) VALUES ('8446484', 1, 1);
INSERT INTO `vote`(`vote`,`student_id`,`exams_id`) VALUES ('8446484', 1, 1);
INSERT INTO `vote`(`vote`,`student_id`,`exams_id`) VALUES ('8446484', 1, 1);