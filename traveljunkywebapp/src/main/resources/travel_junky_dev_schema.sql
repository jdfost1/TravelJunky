DROP DATABASE  IF EXISTS `travel_junky_dev`;

CREATE DATABASE  IF NOT EXISTS `travel_junky_dev`;
USE `travel_junky_dev`;


--
-- Table structure for table `challenge_list`
--
DROP TABLE IF EXISTS `challenges`;
CREATE TABLE `challenges` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_number` int(10) NOT NULL,
  `challenge_name` varchar(300) NOT NULL,
  `business_name` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL,
  `state` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `reward_points` int(10) NOT NULL,
 
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `challenge_completion_list`
--
DROP TABLE IF EXISTS `challenge__completion_list`;
CREATE TABLE `challenge_completion_list` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_number` int(10) NOT NULL,
   `completion` boolean DEFAULT false,
  `reward_points`  int(10)NOT NULL,
  
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `rewards`
--
DROP TABLE IF EXISTS `rewards_balance`;
CREATE TABLE `rewards_balance`(
   `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(10) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `user`
--
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL UNIQUE,
  `password` char(60) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` tinyint NOT NULL,
  `challenge_completion_list_id` int(11),
  `rewards_balance_id` int(11),
  
  

  PRIMARY KEY (`id`),
  FOREIGN KEY (`challenge_completion_list_id`) REFERENCES `challenge_completion_list` (`id`),
  FOREIGN KEY (`rewards_balance_id`) REFERENCES `rewards_balance` (`id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Set up users
--
INSERT INTO `user` 
(`email`, `password`, `enabled`, `name`, `age`)
VALUES 
('john@gmail.com','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1, 'John Doe', 32),
('mary@gmail.com','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1, 'Mary Lamb', 27),
('jane@gmail.com','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1, 'Jane Doe', 35),
('jlafaye800@gmail.com','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1, 'J.D. LaFayette', 23);

INSERT INTO `challenges`
(`challenge_number`, `challenge_name`, `business_name`, `state`,`city`, `address`,`reward_points`)
VALUES 
('1','Redbird Challenge', 'ISU','Illinois','Normal', '100 North University Street', '50'),
('2', 'Dog On Challenge', 'Windy City Weiners', 'Illinois','Normal','106 E Beaufort Street', '50'),
('3', 'Five Star Service', 'Shannons Five Star', 'Illinois','Bloomington','1305 South Mercer Ave', '50'),
('4', 'BBQ Challenge', 'Bandanas', 'Illinois','Bloomington','502 IAA Dr', '50'),
('5', 'Get that Bread', 'Avantis', 'Illinois','Normal','407 South Main St', '50');


--
-- Table structure for table `role`
--
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Set up roles
--
INSERT INTO `role`
(`name`)
VALUES 
('USER'),
('ADMIN');

--
-- Table structure for table `user_role`
--
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Set up user roles
--
INSERT INTO `user_role` 
(`user_id`, `role_id`)
VALUES 
(1,1),
(2,1),
(3,2),
(4,1);