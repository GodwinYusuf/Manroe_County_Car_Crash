/** 
Author :     	Godwin Yusuf
Date: 	      	08:55 17/08/2024
Title: 	     	Manroe Car Crash Analysis
Tool: 	      	SQL on Github 
Email:			     godwin.yusuf@outlook.com
Project Source:  https://www.kaggle.com/datasets/jacksondivakarr/car-crash-dataset
**/

#### Dataset Cleaning and Transformation 

 -- Changing the date column to the right data type of  'date'

ALTER TABLE cleanmanroecountycarcrash
modify column `date` date;
 

 -- Changing the date column to the right data type of  'int'
ALTER TABLE cleanmanroecountycarcrash
modify column `hour` int; 
    
--Rename Column header to 'Year' from 'Year.1'
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Year.1`  TO `YEAR`;

-- Renaming column header
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Month Name.1` to `month_name`;

 --Rename Column header to  day_name type from 'Day_Name'
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Day _Name` to `day_name`;


 -- Renaming the column header from 'weekend?' to 'Weekend'
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `weekend?` to `weekend`;
 
--Renaming column header
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `Month Name.1` to `month_name`;


-- Renaming column header
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN `ï»¿Date` to `Date`;


-- Dropping empty column
ALTER TABLE `cleanmanroecountycarcrash` DROP COLUMN `Hour.2`;


--Renaming column header
ALTER TABLE `cleanmanroecountycarcrash` RENAME COLUMN  `Hour.1` to `Hour`;


-- alter table `cleanmanroecountycarcrash` add weekno int;
### update `cleanmanroecountycarcrash`
set weekno = dayofweek(`trip date`); 
###


-- Updating columns with ' ' values from the time series of 24hrs
UPDATE `CLEANMANROECOUNTYCARCRASH`
SET `HOUR` = '24'
WHERE `HOUR` = NULL  ;

--To view my table
SELECT * FROM cleanmanroecountycarcrash;

-- To show the datatype of each column
DESCRIBE cleanmanroecountycarcrash;

--To change the text to lower case!
update cleanmanroecountycarcrash
set `primary factor` = lower(`primary factor`);
