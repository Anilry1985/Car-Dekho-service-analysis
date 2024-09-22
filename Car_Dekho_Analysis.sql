Create database Cars
Use Cars

-- 1) Read the dataset --
SELECT 
    *
FROM
    car_dekho

-- 2) Print the total count of the records --
SELECT 
    COUNT(*)
FROM
    car_dekho

-- 3) How many cars are available in 2023 ? --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2023

-- 4) How many cars are available in 2020, 2021, 2022 ? --
SELECT 
    year, COUNT(*) AS no_of_cars
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year

-- 5) How many diesel cars are available in 2020 ? --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Diesel' AND year = 2020

-- 6) How many petrol cars are available in 2020 ? -- 
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Petrol' AND year = 2020

-- 7) Print the count of all fuel cars(Petrol, diesel and CNG) yearwsise in Decending order --
SELECT 
    Year, COUNT(*) AS total_count
FROM
    car_dekho
WHERE
    fuel = 'Diesel'
GROUP BY Year
ORDER BY total_count DESC

SELECT 
    Year, COUNT(*) AS total_count
FROM
    car_dekho
WHERE
    fuel = 'Petrol'
GROUP BY Year
ORDER BY total_count DESC

SELECT 
    Year, COUNT(*) AS total_count
FROM
    car_dekho
WHERE
    fuel = 'CNG'
GROUP BY Year
ORDER BY total_count DESC

-- 8) Print the count of all cars pertain between year 2015 and 2023 --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023

-- 9) Which year had more than 100 cars ? --
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY Year
HAVING COUNT(*) > 100

-- 10) Print the details of all cars fall in year 2015 to 2023 --
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023
 