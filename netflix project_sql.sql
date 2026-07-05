
--netflix project
DROP TABLE netflix

CREATE TABLE netflix(
show_id	VARCHAR(6),
type VARCHAR(10),	
title VARCHAR(150),
director VARCHAR(208),
casts VARCHAR(1000),
country	VARCHAR(150),
date_added VARCHAR(50),
release_year INT,
rating	VARCHAR(10),
duration VARCHAR(15),
listed_in VARCHAR(150),
description VARCHAR(250)
);
 SELECT *FROM netflix
 SELECT COUNT(*) as total_content FROM netflix;

 SELECT DISTINCT type FROM netflix; 

 --15 BUSINESS PROBLEMS
 --1.COUNT THE NO.OF MOVIES VS TV SHOWS
 
 SELECT type, COUNT(*)as total_content
 FROM netflix
 GROUP BY type

--2.FIND THE MOST COMMON RATING FOR MOVIES AND TV SHOWS
SELECT type,
 MAX(rating)
FROM netflix
GROUP BY 1

--3.LIST ALL MOVIES RELEASED IN A SPECIFIC YEAR(E.G.2020)
SELECT *FROM netflix
WHERE type ='movie' AND
release_year= 2020

SELECT *FROM netflix
WHERE 
description ILIKE '%kill%' OR
description ILIKE '%voilance%'





 