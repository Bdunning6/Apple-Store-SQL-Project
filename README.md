# Apple App Store Data Exploration
![image](https://user-images.githubusercontent.com/115194266/219813985-6e33701d-b687-45f3-9d14-489fe6c5a5c3.png)

## Table of Contents
1. [Link to Published Dashboard](#link-to-published-dashboard)
2. [Introduction](#introduction)
3. [Dataset](#dataset)
4. [SQL Code](#sql-code)
5. [Visualizations](#visualizations)
6. [Summary](#summary)


## Link to Published Dashboard
[Link to Published Dashboard](https://app.powerbi.com/groups/ec280147-b21d-47d5-9dd9-0c3563bbde5c/reports/92904175-7424-4a6f-9bb7-32ff14232be0/ReportSection)

## Introduction
With over a million apps currently on the Apple app store, apps have become a way of interfacing with software on a mobile device. For instance, social media apps such as Facebook and Instagram gives users the power to connect with millions of people across the world while gaming apps give a unique entertainment experience from a portable handheld device. This begs the question: what are the characteristics of apps on the app store? Through this project, I will analyze the app store in order to find some key insights using SQL for data manipulation and PowerBI to visualize the results.

## Dataset
The data set was found on Kaggle and was collected using an API. The dataset is a csv file. The data was collected in July 2017 and has a little over 7000 apps. Although this number pales in comparison to the total number of apps currently found on the app store, it can still serve as a way to generate some general insights. There are 7197 rows and 16 columns. The columns are:
* **id:** The ID of the app.
* **track_name:** The name of the app.
* **size_bytes:** App size in bytes.
* **currency:** The currency type for each app. Everything is in USD.
* **price:** How much the app costs. 
* **rating_count_tot:** The total amount of using ratings for all versions.
* **rating_count_ver:** The total amount of user ratings for the apps current version (in 2017).
* **user_rating:** The average user rating for all versions.
* **user_rating_ver:** The average user rating for the apps current version (in 2017).
* **ver:** Latest app version (in 2017).
* **cont_rating:** The content rating of the app.
* **prime_genre:** The primary genre of the app.
* **sup_devices.num:** The number of supporting devices for the app.
* **ipadSc_urls.num:** The number of screenshots the app has on the Apple store.
* **lang.num:** Number of supported languages.
* **vpp_lic:** If the app has a VPP license enabled.

## SQL Code

### Looking at which apps have the highest amount of total reviews.
![image](https://user-images.githubusercontent.com/115194266/221688530-68da2685-530b-4f99-bf9c-62df3dcf5145.png)

### Joining the two tables to get the results from the first query to see the app description for each app.
![image](https://user-images.githubusercontent.com/115194266/221688745-d3a785bc-bd55-49f8-a463-d24936b9d449.png)

### Finding the average amount of total reviews, supported languages and devices.
![image](https://user-images.githubusercontent.com/115194266/221688860-590ff832-2fb3-40f1-93d3-431790225a15.png)

### What's the most popular free app in terms of total reviews?
![image](https://user-images.githubusercontent.com/115194266/221688952-940b38c5-719a-4c47-9a0f-ea95bf42c19c.png)

### What's the most popular paid app in terms of total reviews?
![image](https://user-images.githubusercontent.com/115194266/221689071-93b965aa-4413-4cc8-9394-5da0617d08c4.png)

### Looking at the dataset, we can see there is a user rating for all the apps versions and the current version. Although this data set is old, we can still see if an update to an app has positively or negatively affected an apps rating.
![image](https://user-images.githubusercontent.com/115194266/221689208-58685c16-a69d-43eb-8efe-f58c78c4614d.png)

### Examining byte size of apps.
![image](https://user-images.githubusercontent.com/115194266/221689639-3bae0025-eacb-4df0-ad3b-db821ebcf0e6.png)

### What does the number of free and paid apps look like for each genre?
![image](https://user-images.githubusercontent.com/115194266/221689760-5a3256b3-f215-439e-b6c4-54ae75b219e9.png)

### What are the average prices for each genre of app?
![image](https://user-images.githubusercontent.com/115194266/221689831-e0ca147e-cf0d-4486-9570-83a6bc16976f.png)

### Using a windows function to see the price ranking of each genre and app.
![image](https://user-images.githubusercontent.com/115194266/221690064-85f6f45a-ffd5-46f7-b8d5-4f07ae4c57fe.png)

### Looking at which genre has the highest total number of reviews. 
![image](https://user-images.githubusercontent.com/115194266/221690147-3d58e76e-ea46-4f8a-9449-1ca2ab16ab48.png)

### Creating a CTE to analyze successful food and beverages apps.
![image](https://user-images.githubusercontent.com/115194266/221690350-57231698-ba50-4fa0-bd6c-7865549a96a9.png)

### Creating a temp table using averages.
![image](https://user-images.githubusercontent.com/115194266/221690519-aa6aa1bc-623b-4782-80b1-59cd8b537d15.png)

### Creating a view to be used later for visualizations.
![image](https://user-images.githubusercontent.com/115194266/221690795-7192f073-d566-4429-a727-bc3f93fa7525.png)

### Additonal views for good and bad app updates.
![image](https://user-images.githubusercontent.com/115194266/221691076-09a25993-5825-44f0-a554-3dee106c1d62.png)

### Third View to find the total amount of apps as well as the number of free and paid apps.
![image](https://user-images.githubusercontent.com/115194266/221691258-7bd31636-e8cf-476c-b228-669fc6a6d922.png)

### Fourth View to find most popular app for each genre.
![image](https://user-images.githubusercontent.com/115194266/221691481-098880cb-62a4-43c5-b39c-94433bb0a68e.png)

## Visualizations

### App Store Popular Apps and Genres
![image](https://user-images.githubusercontent.com/115194266/222258895-636b12d8-f782-4a78-89ba-42008c10dfff.png)

### App Store Prices
![image](https://user-images.githubusercontent.com/115194266/222259708-9e314266-5fb1-4b4c-be60-b67160b11832.png)

### App Store Accessibility/Compatibility 
![image](https://user-images.githubusercontent.com/115194266/222259791-0a572743-082d-4b9e-888e-0dfa6217b114.png)

### App Store Updates
![image](https://user-images.githubusercontent.com/115194266/222259930-b6a723f8-7cfd-403c-8d6b-c3098e9bf64a.png)



