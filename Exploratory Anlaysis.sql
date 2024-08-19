/** 
Author :     	Godwin Yusuf
Date: 	     	08:55 17/08/2024
Title: 	     	Manroe Car Crash Analysis
Tool: 	     	SQL on Github
Email:	    godwin.yusuf@outlook.com 
Project Source:  https://www.kaggle.com/datasets/jacksondivakarr/car-crash-dataset
**/


-- Exploartory Analysis on the Manroe County Car Crash

##### Highest collision type.
SELECT 
    `collision type`,
    COUNT(`collision type`) AS `collision type`
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;


##### Highest Injury type
SELECT 
    `injury type`,
    COUNT(`injury type`) AS `Most Injury`
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;



-- Main factors affect accidents in the region
SELECT 
    `primary factor`,
    COUNT(`primary factor`) AS ` Major Factors`
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;



-- Most reported location
SELECT 
    `Reported_location`,
    COUNT(`Reported_location`) AS ` Main Location`
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;



-- Accident distribution across the week.
SELECT 
    weekend, COUNT(weekend) AS Cases
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1;


-- Accident cause on each hour
SELECT 
    `time`,
    COUNT(`time`) AS hr
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;


--- Year with number of collision
SELECT 
    `year`,
    COUNT(`year`) AS YearNo
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;

-- Weekend collison numbers
SELECT 
    weekend,
    COUNT(weekend) AS Weekend
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;


--Month collision result
SELECT 
    month_name,
    COUNT(month_name) AS month_name
FROM
    `cleanmanroecountycarcrash`
GROUP BY 1
ORDER BY 2 DESC;


--- Long/Lat accident occurence 
SELECT 
    longitude, latitude, COUNT(`collision type`) AS Location_count
FROM
    cleanmanroecountycarcrash
GROUP BY 1 , 2;



