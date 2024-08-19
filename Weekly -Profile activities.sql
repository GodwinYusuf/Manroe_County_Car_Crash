/** 
Author :     	Godwin Yusuf
Date: 	     	08:55 17/08/2024
Title: 	     	Manroe Car Crash Analysis
Tool: 	     	SQL on Github 
Email:			godwin.yusuf@outlook.com
Project Source:  https://www.kaggle.com/datasets/jacksondivakarr/car-crash-dataset
**/

##### A stored Procedure that shows the weekly accident profile of the dataset.

DELIMITER $$
CREATE  PROCEDURE AccidentWeek
	( in wknumber integer,
    in yr integer)
    
BEGIN

SELECT 
    year,  weekno,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN 1
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN 1
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN 1
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN 1
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN 1
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN 1
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN 1
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
    where year = yr and weekno = WkNumber
GROUP BY 1,2;

end$$
DELIMITER ;