-- Age of riders (Bar chart)
SELECT driver_name, age
FROM drivers

-- locations of the last 10 races (Pie chart)
SELECT location, COUNT(location)
FROM races
GROUP BY location

-- Riders over 25 years old (dependence graph)
SELECT TRIM(driver_name) AS drivers, age
FROM drivers
WHERE age > 25