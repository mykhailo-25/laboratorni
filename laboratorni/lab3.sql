SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT CONCAT(name,'(',region,')') AS city_region
FROM cities
WHERE population>100000
ORDER BY name;

SELECT name, population, ROUND((population / 40000000) * 100, 2) AS population_percentage
FROM cities
ORDER BY population DESC
LIMIT 10;

SELECT CONCAT(name, '  - ', ROUND((population /40000000)*100, 2), '%') AS city_population_percentage
FROM cities
WHERE (population /40000000)*100 >= 0.1
ORDER BY (population /40000000)*100 DESC;