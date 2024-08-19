/** 
Author :     	Godwin Yusuf
Date: 	     	08:55 17/08/2024
Title: 	     	Manroe Car Crash Analysis
Tool: 	     	SQL on Github 
Email:			godwin.yusuf@outlook.com
Project Source:  https://www.kaggle.com/datasets/jacksondivakarr/car-crash-dataset
**/

#### Dataset Cleaning and Transformation 

ALTER TABLE cleanmanroecountycarcrash
modify column `date` date;
 

ALTER TABLE cleanmanroecountycarcrash
modify column `hour` int; 
    

ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Year.1`  TO `YEAR`;
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Day _Name` to `day_name`;
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `weekend?` to Weekend;
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Month Name.1` to `month_name`;
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `ï»¿Date` to `Date`;
ALTER TABLE `cleanmanroecountycarcrash` DROP COLUMN `Hour.2`;
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN  `Hour.1` to `Hour`;

-- alter table `cleanmanroecountycarcrash` add weekno int;


### update `cleanmanroecountycarcrash`
set weekno = dayofweek(`trip date`); 
###


UPDATE `CLEANMANROECOUNTYCARCRASH`
SET `HOUR` = '24'
WHERE `HOUR` = NULL  ;


SELECT * FROM cleanmanroecountycarcrash;


DESCRIBE cleanmanroecountycarcrash;


update cleanmanroecountycarcrash
set `primary factor` = lower(`primary factor`);