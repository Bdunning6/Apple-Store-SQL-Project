# Apple App Store Exploratory Data Analysis 
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
With over a million apps currently on the Apple app store, apps have become a way of interfacing with software on a mobile device. Social media apps such as Facebook and Instagram gives users the power to connect with millions of people across the world while gaming apps give a unique entertainment experience from a portable handheld device. This begs the question: what are the characteristics of apps on the app store? Through this project I will conduct an exploratory analysis in order to find key insights and to summarize the app stores characteristics using SQL to manipulate the data and PowerBI to visualize my findings.

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

### Output
![image](https://user-images.githubusercontent.com/115194266/227736929-37a772d2-7622-48ad-9398-cc75bd488966.png)

### Joining the two tables to get the results from the first query to see the app description for each app.
![image](https://user-images.githubusercontent.com/115194266/221688745-d3a785bc-bd55-49f8-a463-d24936b9d449.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227737085-5b021d40-7551-4076-bdd4-ad57134fd6cb.png)

### Finding the average amount of total reviews, supported languages and devices.
![image](https://user-images.githubusercontent.com/115194266/221688860-590ff832-2fb3-40f1-93d3-431790225a15.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227737100-5548357c-abfe-4915-95e3-a7161f308930.png)

### What's the most popular free app in terms of total reviews?
![image](https://user-images.githubusercontent.com/115194266/221688952-940b38c5-719a-4c47-9a0f-ea95bf42c19c.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227737121-6f107e16-f375-490f-9114-f06a4a51e831.png)

### What's the most popular paid app in terms of total reviews?
![image](https://user-images.githubusercontent.com/115194266/221689071-93b965aa-4413-4cc8-9394-5da0617d08c4.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227737178-1a8d0c3f-786d-4a85-9cd6-d8d9d12eb7ea.png)

### Looking at the dataset, we can see there is a user rating for all the apps versions and the current version. Although this data set is old, we can still see if an update to an app has positively or negatively affected an apps rating.
![image](https://user-images.githubusercontent.com/115194266/221689208-58685c16-a69d-43eb-8efe-f58c78c4614d.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738435-dc872c4c-3b6c-4ccd-86d2-9a32bff66a30.png)

### Examining byte size of apps.
![image](https://user-images.githubusercontent.com/115194266/221689639-3bae0025-eacb-4df0-ad3b-db821ebcf0e6.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738787-e202d222-1d0c-42db-98c9-581f532eedb5.png)

### What does the number of free and paid apps look like for each genre?
![image](https://user-images.githubusercontent.com/115194266/221689760-5a3256b3-f215-439e-b6c4-54ae75b219e9.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738491-ff1f782c-d27c-4cf8-a8af-0a4bcf6212e0.png)

### What are the average prices for each genre of app?
![image](https://user-images.githubusercontent.com/115194266/221689831-e0ca147e-cf0d-4486-9570-83a6bc16976f.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738507-5f46fe8f-1401-4fee-9e7e-5f209fa9907f.png)

### Using a windows function to see the price ranking of each genre and app.
![image](https://user-images.githubusercontent.com/115194266/221690064-85f6f45a-ffd5-46f7-b8d5-4f07ae4c57fe.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738528-5a54fa73-b3a4-497e-a5a1-7b145c982a59.png)

### Looking at which genre has the highest total number of reviews. 
![image](https://user-images.githubusercontent.com/115194266/221690147-3d58e76e-ea46-4f8a-9449-1ca2ab16ab48.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738538-89a3615a-276b-4f21-a4ae-7b72b012bbb0.png)

### Creating a CTE to analyze successful food and beverages apps.
![image](https://user-images.githubusercontent.com/115194266/221690350-57231698-ba50-4fa0-bd6c-7865549a96a9.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738556-1b448cb0-86d9-463d-b764-32aa0520a08e.png)

### Creating a temp table using averages.
![image](https://user-images.githubusercontent.com/115194266/221690519-aa6aa1bc-623b-4782-80b1-59cd8b537d15.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738587-8ad32ba8-dd06-4f9f-b140-df3080ccbf04.png)

### Creating a view to be used later for visualizations.
![image](https://user-images.githubusercontent.com/115194266/221690795-7192f073-d566-4429-a727-bc3f93fa7525.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738614-59c1c0ff-bfa6-4c4a-9abd-832fe58928fc.png)

### Additonal views for good and bad app updates.
![image](https://user-images.githubusercontent.com/115194266/221691076-09a25993-5825-44f0-a554-3dee106c1d62.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738639-45384c44-070d-4af8-8656-fc70dcd536a1.png)
![image](https://user-images.githubusercontent.com/115194266/227738656-7517a78f-9331-4d7c-8be3-e38285508e80.png)

### Third View to find the total amount of apps as well as the number of free and paid apps.
![image](https://user-images.githubusercontent.com/115194266/221691258-7bd31636-e8cf-476c-b228-669fc6a6d922.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738679-59bb8a9b-c9a3-40bd-a576-aa02498ffb32.png)

### Fourth View to find most popular app for each genre.
![image](https://user-images.githubusercontent.com/115194266/221691481-098880cb-62a4-43c5-b39c-94433bb0a68e.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227738698-ae09684d-7d87-4507-82a7-843f63aa0351.png)

## Visualizations

### App Store Popular Apps and Genres
![image](https://user-images.githubusercontent.com/115194266/227738350-728ccc76-0b5b-4524-a8e4-e78888e4f4f4.png)

### App Store Prices
![image](https://user-images.githubusercontent.com/115194266/227738370-de4f4218-dfaf-4cf7-afd3-b266b458bb4f.png)

### App Store Accessibility/Compatibility 
![image](https://user-images.githubusercontent.com/115194266/227738387-2c39881f-2533-44bf-a9ac-3ae97744f2e5.png)

### App Store Updates
![image](https://user-images.githubusercontent.com/115194266/227738400-feb620e9-d94c-4ee4-b0d2-0158c7e405e3.png)

## Summary

### Popular Apps and Genres
Through this exploratory analysis, some key insights were found. The first dashboard gives a general overview on some of the characteristics of Apple's app store. One of the biggest insights is that the most dominant genre on the app store is games, with 3862 gaming apps out of the 7917 total apps from the dataset. Social networking, music and reference apps had the highest amount of average total reviews, indicating that these app genres are consistent in receiving a high amount feedback from customers. Looking at the “Most Reviewed App For Each Genre" chart, we can see that Facebook, Instagram and Clash of Clans have dominated their respective genres with over 2 million reviews. Facebook was the most reviewed app on the Appstore with approximately 2.97 million reviews. This is much higher than the app store average of about 12 thousand total reviews. Although Facebook and Instagram are some of the most popular and reviewed apps, the social networking and photography genre holds smaller number of apps in comparison to the game’s genre. A reason why this might be is because apps like Facebook, Instagram and Twitter dominate the social networking genre while the gaming genre seems to have a larger variety of apps for customers.

### App Store Prices
The average price of an app is $1.73. Out of the 7197 apps in the data set, 4056 were free apps and 3141 were paid apps. The most frequent pricing point for the app store was free. The second and third most frequent pricing points were a dollar and three dollars. This may suggest that many apps have been successful by keeping their app free or at a low price. By keeping an app free and exposing to as many people as possible, developer may be able to generate more revenue through advertisements compared to putting a price tag on their app. Looking at the "App Genres Ranked By Average Price" chart, we can see the most expensive on average genre is the medical genre with an average price of $8.78. By using the genre slicer, we can see that a good portion of medical apps are anatomy apps. This may explain why the medical genre had the highest average as anatomy apps could be expensive to develop and/or medical students might be willing to pay more for these apps compared to others.

### App Store Acessibilility/Compatibiliity 
An important part of a successful app is how accessible an app is and how compatible it is with other devices. Language is an important characteristic in how accessible an app is. By having many supported languages, app developers can potentially market their app towards more people. The average amount of supported languages is 5.43, while the genre with the highest average of supported languages is productivity at 11.05. There is an average of 37.36 supported devices for the app store. These supported devices may be different generations of iPhones or iPads. Since not every customer has the same apple device, making an app have a high variety of supported devices may be key in making an app more popular and successful. Another aspect of an app’s accessibility is the content/age rating, which may potentially exclude an age group of customers if the content rating isn't appropriate for them. The 4+ content rating had the largest number of apps but the 12+ content rating had the highest number of total reviews. The highest age restriction, 17+, had the lowest number of apps and the lowest number of total reviews. This may indicate that having a high age restriction could lead to less downloads and exposure to customers due to excluding a part of the userbase. Finally, an app's size could potentially be important in the number of downloads it has. With mobile devices being limited, many users may delete apps off their phones that take up too much space. The average byte size is 199.13 million bytes. Looking at the "Average App Size for Each genre" chart, we can see that medical genre is the largest in terms of average sizes. The medical app genre had an average size of about 376 million bytes. This may explain why the medical genre had the highest price, as larger apps in size may be more expensive to create and maintain.

### App Store Updates 
An advantageous part of an app's development is the ability to offer improvements and bug fixes even after the app is released via updates. But while app updates can improve an app’s reputation, bad updates can damage an app’s popularity by introducing bugs and unpopular features. This final dashboard contains two tables that represent the effects of good and bad updates. The tables contain the apps name, the user rating for all versions, the user rating for the current version and the difference between the two. The table on the left is ordered by the highest difference between the total rating and the current rating, which demonstrates which apps have successfully introduced good updates that improved their user rating. The table on the right contains the same information but instead of the highest rating difference it shows the lowest rating difference which represents apps that introduced bad updates. Although the initial release of an app is important, the updates can be seen as equally important as well. A good update may improve an app that has had a bad launch while a bad update may doom an app that had a flawless launch.
