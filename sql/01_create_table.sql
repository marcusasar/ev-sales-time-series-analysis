--Create table ev_sales
CREATE TABLE ev_sales
(
	region TEXT,
	category TEXT,
	parameter TEXT,
	mode TEXT,
	powertrain TEXT,
	year INTEGER,
	unit TEXT,
	VALUE TEXT
);

--Load data
COPY ev_sales
FROM 'C:\Program Files\PostgreSQL\17\data\ev_sales_data.csv'
DELIMITER ','
CSV HEADER;
