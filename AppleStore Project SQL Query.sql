
/* Apple App Store Data Exploration */

--Skills used:  Joins, Views, Temp Tables, CTE's, Windows Functions, Case Functions, Aggregate Functions, Subqueries 

use AppleStore

-- Looking at which apps have the highest total number of reviews.

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM AppleStore$
order by rating_count_tot desc;



-- Average amount of total reviews, number of supported devices and languages. 

SELECT ROUND(AVG(rating_count_tot),2) as avg_total_rating_count, ROUND(AVG(sup_devices#num),2) as avg_supported_devices, ROUND(AVG(lang#num),2) as avg_number_languages
FROM AppleStore$;



-- Joining the two tables to get the results from the first query to see the app description for each app.

SELECT a.id, a.track_name, user_rating, rating_count_tot, prime_genre, price, app_desc
FROM AppleStore$ a
 JOIN appleStore_description$ b
ON a.id = b.id
ORDER BY rating_count_tot desc;



-- What are the most popular free apps in terms of total number of reviews?

SELECT track_name, price, user_rating, rating_count_tot, prime_genre
FROM AppleStore$
WHERE price = '0'
ORDER BY rating_count_tot desc;



-- What are the most popular paid apps in terms of user rating and total number of reviews?

SELECT track_name, price, user_rating, rating_count_tot, prime_genre
FROM AppleStore$
WHERE price !='0'
ORDER BY rating_count_tot desc;



-- Looking at the dataset, we can see there is a user rating for all the apps versions and the current version. Although this data set is old, we can still see if an update to an app has positively or negatively affected an apps rating.

SELECT track_name as apps_with_bad_updates, user_rating, user_rating_ver, (user_rating_ver - user_rating) as user_rating_difference
FROM AppleStore$
WHERE user_rating > user_rating_ver

SELECT track_name as apps_with_good_updates, user_rating, user_rating_ver, (user_rating_ver - user_rating) as user_rating_difference
FROM AppleStore$
WHERE user_rating < user_rating_ver



-- Examining byte size of apps.

SELECT AVG(size_bytes) as avg_byze_size
FROM AppleStore$;

SELECT track_name, size_bytes,
CASE
	WHEN size_bytes > 19913453 THEN 'Larger than average app size'
	WHEN size_bytes < 19913453 THEN 'Small than average app size' 
	END as app_size
FROM AppleStore$;



-- What does the number of free and paid apps look like for each genre?

SELECT prime_genre,
COUNT(CASE
		WHEN price = '0'
			THEN 1
			END) AS total_free_apps,
COUNT(CASE
		WHEN price !='0'
			THEN 1
			END) AS total_paid_apps,
COUNT(prime_genre) as total_number_of_apps
FROM AppleStore$
GROUP BY prime_genre
ORDER BY total_free_apps desc, total_paid_apps desc;



-- What are the average prices for each genre of app?

SELECT prime_genre, AVG(price) as average_genre_prices
FROM AppleStore$
GROUP BY prime_genre
ORDER BY AVG(price) desc;



-- Using a windows function to see the price ranking of each genre and app.

SELECT track_name, prime_genre, price, rating_count_tot, RANK() OVER (partition by prime_genre order by price desc) as price_rank
FROM AppleStore$



-- Looking at which genre has the highest total number of reviews. 

SELECT prime_genre, SUM(rating_count_tot) as total_review_number
FROM AppleStore$
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) desc;



-- Using a subquery to find out what the most popular app is for each genre.

SELECT *
FROM (
	SELECT track_name,prime_genre, rating_count_tot,
	rank() over(partition by prime_genre order by rating_count_tot desc) as rk
	FROM AppleStore$
	) x
WHERE rk = 1
ORDER BY rating_count_tot desc;



-- Creating a CTE to analyze successful food and beverages apps.

WITH Food_And_Beverages_Apps AS
(
SELECT track_name, prime_genre, rating_count_tot, price, AVG(price) OVER (partition by prime_genre) as avg_food_app_price
FROM AppleStore$
WHERE prime_genre = 'Food & Drink'
GROUP BY track_name, prime_genre, rating_count_tot, price
)
SELECT *
FROM Food_And_Beverages_Apps
ORDER BY 3 desc;



-- Creating a temp table using averages.

DROP Table if exists #App_data_averages
Create Table #App_data_averages
(
prime_genre nvarchar(255),
avg_total_rating_count numeric,
avg_supported_devices numeric,
avg_number_languages numeric,
avg_price numeric,
highest_tot_rating numeric,
lowest_tot_rating numeric,
)

INSERT INTO #App_data_averages
SELECT prime_genre, AVG(rating_count_tot) as avg_total_rating_count, AVG(sup_devices#num) as avg_supported_devices, AVG(lang#num) as avg_number_languages, AVG(price) as avg_price, MAX(rating_count_tot) as highest_tot_rating, MIN(rating_count_tot) as lowest_tot_rating 
FROM AppleStore$
WHERE rating_count_tot !='0'
GROUP BY prime_genre

SELECT *
from #App_data_averages;



-- Creating a view to be used later for visualizations.

DROP VIEW IF EXISTS AppAverages

CREATE VIEW AppAverages AS
SELECT prime_genre, AVG(rating_count_tot) as avg_total_rating_count, AVG(sup_devices#num) as avg_supported_devices, AVG(lang#num) as avg_number_languages, AVG(price) as avg_price, MAX(rating_count_tot) as highest_tot_rating, MIN(rating_count_tot) as lowest_tot_rating 
FROM AppleStore$
WHERE rating_count_tot !='0'
GROUP BY prime_genre

SELECT * 
FROM AppAverages
ORDER by 2 desc;



-- Additonal views for good and bad app updates.

DROP VIEW IF EXISTS Bad_App_Updates

CREATE VIEW Bad_App_Updates AS
SELECT track_name as apps_with_bad_updates, user_rating, user_rating_ver, (user_rating_ver - user_rating) as user_rating_difference
FROM AppleStore$
WHERE user_rating > user_rating_ver

SELECT *
FROM Bad_App_Updates
ORDER BY user_rating_difference asc;

DROP VIEW IF EXISTS Good_App_Updates

CREATE VIEW Good_App_Updates AS
SELECT track_name as apps_with_good_updates, user_rating, user_rating_ver, (user_rating_ver - user_rating) as user_rating_difference
FROM AppleStore$
WHERE user_rating < user_rating_ver

SELECT *
FROM Good_App_Updates
ORDER BY user_rating_difference desc;


-- Third View to find the total amount of apps as well as the number of free and paid apps.


DROP VIEW IF EXISTS FreePaidTotCount

CREATE VIEW FreePaidTotCount AS
SELECT prime_genre,
COUNT(CASE
		WHEN price = '0'
			THEN 1
			END) AS total_free_apps,
COUNT(CASE
		WHEN price !='0'
			THEN 1
			END) AS total_paid_apps,
COUNT(prime_genre) as total_number_of_apps
FROM AppleStore$
GROUP BY prime_genre;

SELECT * 
FROM FreePaidTotCount



-- Fourth View to find most popular app for each genre.

DROP VIEW IF EXISTS Most_popular_each_genre

CREATE VIEW Most_popular_each_genre AS 
SELECT *
FROM (
	SELECT track_name,prime_genre, rating_count_tot,
	rank() over(partition by prime_genre order by rating_count_tot desc) as rk
	FROM AppleStore$
	) x
	WHERE rk = 1;

SELECT *
FROM Most_popular_each_genre
ORDER BY rating_count_tot desc;