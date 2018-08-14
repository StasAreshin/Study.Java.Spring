--DROP DATABASE IF EXISTS Java_Spring_Notes;
CREATE DATABASE IF NOT EXISTS Java_Spring;
USE Java_Spring;
CREATE TABLE IF NOT EXISTS `Java_Spring`.`Java_Spring_Notes` (
    `id` INT(8) NOT NULL AUTO_INCREMENT,
    `message` VARCHAR(255) NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `done` BIT(1) NOT NULL DEFAULT b'0',
    PRIMARY KEY (`id`))
COLLATE='utf8_general_ci';

INSERT INTO `Java_Spring`.`Java_Spring_Notes` (`message`,`date`,`done`)
    SELECT 'Start the moral preparation for the speedy execution of the test task.' as message, '2018-01-30 10:06:22' as `date`, 0 as `done` UNION
    SELECT 'Pay attention to China Mieville creativity. Recommended "Rails"', '2018-01-30 12:02:27', 0 UNION
    SELECT 'Continue to maintain the physical form in the power loads', '2018-02-01 15:34:10', 1 UNION
    SELECT 'Look in the pet shop and buy tablets for the dog', '2018-02-02 13:59:34', 1 UNION
    SELECT 'The sister asked to look into the bookstore and check the availability of "1984"', '2018-02-02 17:36:23', 0 UNION
    SELECT 'Alas. Absolutely do not understand anything in the set conditions. It is necessary to think', '2018-02-02 20:50:55', 0 UNION
    SELECT 'Still do not understand anything. Pretty hard', '2018-02-03 10:40:59', 0 UNION
    SELECT 'Maybe pay attention to Spring Boot? Looks interesting', '2018-02-03 19:29:02', 0 UNION
    SELECT 'It remains to determine the visualization. Wide choice, very', '2018-02-04 07:26:08', 1 UNION
    SELECT 'Explore the details of entry in html', '2018-02-04 12:11:53', 0 UNION
    SELECT 'Try to create the first program to display', '2018-02-04 17:12:35', 0 UNION
    SELECT 'Error. I continue to understand nothing. Need to learn the documentation', '2018-02-05 23:15:21', 1 UNION
    SELECT 'More documentation to the god of documentation! The error does not go away', '2018-02-06 16:18:19', 0 UNION
    SELECT 'Begins to work out. Difficult, but it becomes more or less clear', '2018-02-07 20:45:47', 0 UNION
    SELECT 'Explore the intricacies of the Thymeleaf syntax for displaying data', '2018-02-07 22:43:53', 0 UNION
    SELECT 'Problems with displaying the table. I need to test another idea', '2018-02-08 14:47:45', 0 UNION
    SELECT 'It turns out. It''s crooked, but it works. It is necessary to repair', '2018-02-08 16:18:34', 1 UNION
    SELECT 'It is necessary to raise information about reading from the database. Important condition', '2018-02-08 21:24:37', 0 UNION
    SELECT 'Maybe try to add a stylization?', '2018-02-09 12:53:15', 0 UNION
    SELECT 'Yes! Really works. I need to add a filter', '2018-02-09 13:34:12', 0 UNION
    SELECT 'Problems with sorting the date. It is necessary to understand', '2018-02-09 18:10:56', 0 UNION
    SELECT 'Done. It remains only to check for errors', '2018-02-10 16:39:08', 0 UNION
    SELECT 'And again, add a stylized beauty', '2018-02-11 10:43:33', 0 UNION
    SELECT 'And, of course, send the completed task for verification', '2018-02-11 20:56:30', 0
;