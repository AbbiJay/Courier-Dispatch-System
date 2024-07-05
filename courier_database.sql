CREATE TABLE `courier`.`branch` (
  `branch_id` VARCHAR(255) NOT NULL,
  `branch_name` VARCHAR(255) NOT NULL,
  `branch_email` VARCHAR(255) NOT NULL,
  `branch_address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`branch_id`));

INSERT INTO `courier`.`branch` (`branch_id`, `branch_name`, `branch_email`, `branch_address`) VALUES ('B1', 'Koramangala', 'koramangala@gmail.com', '#101,34th Street,Koramangala,Bangalore,India');
INSERT INTO `courier`.`branch` (`branch_id`, `branch_name`, `branch_email`, `branch_address`) VALUES ('B2', 'Electronic City', 'electroniccity@gmail.com', '#19,5th Street,Electronic City,Bangalore,India');
INSERT INTO `courier`.`branch` (`branch_id`, `branch_name`, `branch_email`, `branch_address`) VALUES ('B3', 'Indra Nagar', 'indranagar@gmail.com', '#23,1st Street,Indra Nagar,Bangalore,India');
INSERT INTO `courier`.`branch` (`branch_id`, `branch_name`, `branch_email`, `branch_address`) VALUES ('B4', 'Jayanagar', 'jayanagar@gmail.com', '#211,66th Street,Jayanagar,Bangalore,India');
INSERT INTO `courier`.`branch` (`branch_id`, `branch_name`, `branch_email`, `branch_address`) VALUES ('B5', 'BTM Layout', 'btmlayout@gmail.com', '#309,49th Street,BTM Layout,Bangalore,India');

CREATE TABLE `courier`.`staff` (
  `staff_id` VARCHAR(255) NOT NULL,
  `branch_id` VARCHAR(255) NOT NULL,
  `staff_name` VARCHAR(255) NOT NULL,
  `staff_email` VARCHAR(255) NOT NULL,
  `staff_phno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`));

INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S1', 'B1', 'George', 'george@gmail.com', '8032289435');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S2', 'B2', 'Anne', 'anne@gamil.com', '7041769915');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S3', 'B3', 'Sid', 'sid@gamil.com', '8068888867');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S4', 'B4', 'John', 'john@gamil.com', '8038577256');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S5', 'B5', 'Maria', 'maria@gamil.com', '8033174967');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S6', 'B1', 'David', 'david@gamil.com', '8037701218');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S7', 'B2', 'Charles', 'charles@gamil.com', '8035597087');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S8', 'B3', 'Simon', 'simon@gamil.com', '8033738104');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S9', 'B4', 'Nancy', 'nancy@gamil.com', '8065535554');
INSERT INTO `courier`.`staff` (`staff_id`, `branch_id`, `staff_name`, `staff_email`, `staff_phno`) VALUES ('S10', 'B5', 'Edward', 'edward@gamil.com', '8097580647');


CREATE TABLE `courier`.`delivery` (
  `del_id` VARCHAR(255) NOT NULL,
  `staff_id` VARCHAR(255) NOT NULL,
  `del_area` VARCHAR(255) NOT NULL,
  `del_date` DATE NOT NULL,
  PRIMARY KEY (`del_id`));

CREATE TABLE `courier`.`customer` (
  `customer_id` VARCHAR(255) NOT NULL,
  `customer_name` VARCHAR(255) NOT NULL,
  `customer_email` VARCHAR(255) NOT NULL,
  `customer_address` VARCHAR(255) NOT NULL,
  `customer_phno` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`customer_id`));


INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C1', 'Deborah', 'deborah@gmail.com', '#100,24th Street,Chennai,India', '8138197108');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C2', 'Brianna', 'brianna@gmail.com', '#452,10th Street,Delhi,India', '8036071901');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C3', 'Charlotte', 'charlotte@gmail.com', '#98,7th Street,Maharashtra,India', '8030908469');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C4', 'Otis', 'otis@gmail.com', '#451,7th Street,Kottayam,India', '9341860697');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C5', 'Russel', 'russell@gmail.com', '#660,1st Street,Mumbai,India', '8027526834');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C6', 'Bryan', 'bryan@gmail.com', '#991,77th Street,Pune,India', '8038074828');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C7', 'Jeremy', 'jeremy@gmail.com', '#09,5th Street,Jaipur,India', '8060174420');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C8', 'Owen', 'owen@gmail.com', '#424,26th Street,Kolkata,India', '8034050577');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C9', 'Nina', 'nina@gmail.com', '#782,85th Street,Trichy,India', '8055668067');
INSERT INTO `courier`.`customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phno`) VALUES ('C10', 'Tristan', 'tristan@gmail.com', '#998,2nd Street,Dispur,India', '8033105934');

CREATE TABLE `courier`.`package` (
  `track_id` VARCHAR(255) NOT NULL,
  `customer_id` VARCHAR(255) NOT NULL,
  `delivery_id` VARCHAR(45) NOT NULL,
  `dimension` VARCHAR(255) NOT NULL,
  `cost` INT NOT NULL,
  `weight` INT NOT NULL,
  `to_address` VARCHAR(255) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`track_id`));


INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T1', 'C1', 'D3', '40x20x10', '120', '20', '#212,13th Street,Indra Nagar,Bangalore,India', '1');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T2', 'C7', 'D5', '50x30x10', '260', '55', '#89,29th Street,BTM Layout,Bangalore,India', '1');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T3', 'C10', 'D2', '15x15x10', '193', '34', '#322,18th Street,Electronic City,Bangalore,India', '0');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T4', 'C4', 'D4', '10x10x10', '95', '10', '#43,4th Street,Jayanagar,Bangalore,India', '1');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T5', 'C9', 'D1', '220x100x80', '562', '1045', '#02,3rd Street,Koramangala,Bangalore,India', '0');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T6', 'C6', 'D3', '43x10x10', '200', '50', '#110,28th Street,Indra Nagar,Bangalore,India', '0');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T7', 'C8', 'D5', '250x130x40', '310', '64', '#23,1st Street,BTM Layout,Bangalore,India', '0');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T8', 'C2', 'D4', '20x10x10', '184', '31', '#09,24th Street,Jayanagar,Bangalore, India', '1');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T9', 'C3', 'D2', '300x200x100', '240', '67', '#777,13th Street,Electronic City,Bangalore,India', '0');
INSERT INTO `courier`.`package` (`track_id`, `customer_id`, `delivery_id`, `dimension`, `cost`, `weight`, `to_address`, `status`) VALUES ('T10', 'C5', 'D1', '340x56x40', '590', '442', '#265,21st Street,Koramangala,Bangalore,India', '1');
