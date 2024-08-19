/** 
Author :     	Godwin Yusuf
Date: 	     	08:55 17/08/2024
Title: 	     	Manroe Car Crash Analysis
Tool: 	     	SQL on Github
Email:			godwin.yusuf@outlook.com 
Project Source:  https://www.kaggle.com/datasets/jacksondivakarr/car-crash-dataset
**/

Use workmode;

SELECT 
    *
FROM
    cleanmanroecountycarcrash;


##### A query that shows the accident distribution through the various  past 12 years.
SELECT 
    `year`,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN `year`
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN `year`
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN`year`
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN `year`
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN `year`
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN `year`
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN `year`
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
GROUP BY 1;
    


#####  Distribution based on Reported_location.
SELECT 
   Reported_location,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN reported_location
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN reported_location
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN reported_location
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN reported_location
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN reported_location
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN reported_location
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN reported_location
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
GROUP BY 1;
    
   
   
    
#####  Distribution accident through out the week in the last 12 year
SELECT 
    day_name,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN  day_name
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN  day_name
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN  day_name
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN  day_name
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN  day_name
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN  day_name
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN  day_name
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
GROUP BY 1;
    


##### Weekend Accident distribution 
SELECT 
    weekend,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN weekend
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN weekend
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN weekend
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN weekend
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN weekend
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN weekend
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN weekend
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
GROUP BY 1;

##### Time line accident distribution over the past 12 years.
SELECT 
    `time`,
    COUNT(CASE
        WHEN `collision type` = '2-Car' THEN `time`
        ELSE NULL
    END) AS '2-car',
    COUNT(CASE
        WHEN `collision type` = '1-Car' THEN `time`
        ELSE NULL
    END) AS '1-car',
    COUNT(CASE
        WHEN `collision type` = '3+ Cars' THEN `time`
        ELSE NULL
    END) AS '3+ Cars',
    COUNT(CASE
        WHEN `collision type` = 'Pedestrian' THEN `time`
        ELSE NULL
    END) AS 'pedestrian',
     COUNT(CASE
        WHEN `collision type` = 'Cyclist' THEN `time`
        ELSE NULL
    END) AS 'Cyclist',
     COUNT(CASE
        WHEN `collision type` = 'Bus' THEN `time`
        ELSE NULL
    END) AS 'Bus',
     COUNT(CASE
        WHEN `collision type` = 'Moped/Motorcycle' THEN weekend
        ELSE NULL
    END) AS 'Moped/Motorcycle'
FROM
    cleanmanroecountycarcrash
GROUP BY 1
order by 1 ;
    


