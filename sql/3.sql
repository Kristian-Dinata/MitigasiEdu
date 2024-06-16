SELECT hour, SUM(mag) AS total_mag
FROM data
GROUP BY hour;


