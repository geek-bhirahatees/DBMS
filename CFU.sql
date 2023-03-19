CREATE TABLE countries (
country_id VARCHAR(2) PRIMARY KEY,
country_name VARCHAR(40),
region_id DECIMAL(10,0)
);


ALTER TABLE countries 
ADD country_code VARCHAR(3);

ALTER TABLE countries 
DROP COLUMN country_code ;

INSERT INTO countries (country_id,country_name,region_id)
VALUES ("1","India",30),
       ("2","Pakisthan",21),
       ("3","China",41); 
       
INSERT INTO countries (country_id,country_name)
VALUES ("1","India"),
       ("2","Pakisthan"),
       ("3","China"); 
       
       INSERT INTO countries (country_id,country_name,region_id)
VALUES ("1","India",41),
       ("2","Pakisthan",NULL),
       ("3","China",10); 
       
UPDATE countries
SET region_id = null
WHERE country_name = "Pakisthan";       
       
       
       SELECT * 
       FROM countries;

DESCRIBE countries;

DROP TABLE countries;