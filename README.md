# Apple App Store Data Exploration
![image](https://user-images.githubusercontent.com/115194266/219813985-6e33701d-b687-45f3-9d14-489fe6c5a5c3.png)

## Table of Contents
1. [Link to Published Dashboard](#link-to-published-dashboard)
2. [Introduction](#introduction)
3. [Dataset](#dataset)
4. [SQL Code](#sql-code)
5. [Summary](#Summary)


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



