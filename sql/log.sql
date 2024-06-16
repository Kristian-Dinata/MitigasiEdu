project/sql/ $ sqlite3 data.db
.schema


SELECT * FROM data;

-- AVG, COUNT, DISTINCT, LOWER, MAX, MIN, UPPER, ...
SELECT COUNT(*) FROM data;

SELECT COUNT(year) FROM data;

SELECT COUNT(month) FROM data;

SELECT COUNT(day) FROM data;

SELECT DISTINCT(year) FROM data;

SELECT COUNT (DISTINCT(year)) FROM data;


-- WHRER, LIKE, ORDER BY, LIMIT, GROUP BY, ...
SELECT COUNT(*) FROM data WHERE year = '2004';

SELECT COUNT(*) FROM data WHERE year = '2004' AND mag = '4';

SELECT year, COUNT(*) FROM data GROUP BY year;

SELECT year, COUNT(*) FROM data GROUP BY year ORDER BY COUNT(*);

SELECT year, COUNT(*) FROM data GROUP BY year ORDER BY COUNT(*) DESC;

SELECT year, COUNT(*) AS n FROM data GROUP BY year ORDER BY COUNT(*) DESC;

SELECT year, COUNT(*) AS n FROM data GROUP BY year ORDER BY n DESC LIMIT 1;

SELECT year, AS n FROM data GROUP BY year ORDER BY n DESC LIMIT 1;


SELECT month, SUM(mag) AS total_mag FROM data GROUP BY month;



-- INSERT INTO table (column, ...)  VALUES(value, ...);
INSERT INTO data (year, mag) VALUES ('SQL', 'fiftyville');

-- NULL
DELETE FROM data WHERE year IS NULL;
SELECT * FROM data;

-- UPDATE table SET column = value WHERE condition;
UPDATE data SET year = 'SQL', mag = 'Fiftyville';
SELECT * FROM data;
DELETE FROM data;
SELECT * FROM data;
SELECT COUNT(*) FROM data;


-- Output
cat data.sql | sqlite3 data.db > output.txt
