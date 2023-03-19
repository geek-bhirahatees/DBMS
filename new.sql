-- Creating a table
 CREATE TABLE tablename (
coloumn1 COLOUMN1_DATATYPE(size) CONSTRAINTS,
coloumn2 COLOUMN2_DATATYPE(size) CONSTRAINTS,
);

-- Creating a database 
CREATE DATABASE IF NOT EXISTS invent;

-- Delete table

-- DROP table
-- DROP table_name;
-- Practical Excercise 
use invent;

CREATE TABLE seller_details (
first_name VARCHAR(20) ,
last_name VARCHAR(20),
email VARCHAR(100) PRIMARY KEY,
phonenumber VARCHAR(20),
dob DATE,
address VARCHAR(250)
);




/* DATA TYPES

Numbers : INT ,BIGINT
Decimal numbers(0.00) : DOUBLE
Stings: 
      --if fixed length CHAR(2) 
      --if variable length VARCHAR(255)
Date : DATE
Datetime : DATETIME
Boolean : TINYINT      
*/

ALTER TABLE seller_details 
ADD whatsapp_no INT;

ALTER TABLE seller_details 
MODIFY COLUMN whatsapp_no varchar(20);


ALTER TABLE seller_details 
DROP COLUMN whatsapp_no;

ALTER TABLE seller_details 
RENAME COLUMN dob TO date_of_birth;

DESCRIBE seller_details;


INSERT INTO seller_details (first_name,last_name,email,phonenumber,date_of_birth,address)
VAlUES ("Bhirahateesvaran","Periyasamy","bhirahatees.periyasamy@fssa.freshworks.com",9150415595,'2005-04-25',"14,New Street , Jakkampatti"),
 ("Vinit","Gore","vinit.gore@fssa.freshworks.com",915041524,'1997-03-12',"14,New Street , Mumbai"),
 ("Gowtham","Krishna","gowtham.krishna@fssa.freshworks.com",9150415234,'2005-06-15',"14,New Street , Chennai"),
 ("Arun","Dhanraj","arun.dhanraj@fssa.freshworks.com",915055524,'2001-03-12',"14,New Street , Guduvancherry");
 
 SELECT *
 FROM seller_details;
 

DESCRIBE seller_details;
