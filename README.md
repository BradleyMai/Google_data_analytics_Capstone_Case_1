# **Google Data Analytics Capstone: Cyclistic Case Study**
Course: [Google Data Analytics Capstone](https://www.coursera.org/learn/google-data-analytics-capstone)
## Introduction
In this case study, I will act as a real-world junior data analyst at a fictional study, Cyclistic. The company focuses on creating bike-sharing solutions in Chicago. In order to answer the key business questions, I will follow the data analysis processes: Ask, Prepare, Process, Analyze, Share, Act. 
### Quick links
Data source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) [Accessed on 04/03/2023]
SQL Queries:
1. [Data combining](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/blob/main/Data%20combining)
2. [Data exploration](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/blob/main/Data%20exploration)
3. Data cleaning
4. Data analysis
5. Data Visualization: Tableau
### Deliverables
1. A clear statement of the business task
2. A description of all data sources used
3. Documentation of any cleaning or manipulation of data
4. A summary of my analysis
5. Supporting visualizations and key findings
6. My top three recommendations based on the analysis
## Background
### About Cyclistic
This is a bike-share company based in Chicago with a network of more than 5824 bicycles and 692 stations. The company is using a diversification strategy in marketing, that is appealling to various types of riders. Their pricing plans are also designed to help make this possible with 3 types of tickets: single-ride pass & full-day pass (for casual riders), and annual membership (for Cyclistic members). They are trying to convert more casual riders into Cyclistic members as they have concluded that annual memberships are generating more profits than casual riders. Moreno - the director or marketing and my supervisor - set a clear goal: *To design marketing strategies aimed at converting casual riders into annual members*.
### Scenario
I am an assumed data analyst that falls under the management of Moreno. I will have to analyze Cyclistic historical bike trip data to find the insight, firstly to identify trends, and secondly to find out whether the direction of the team is correct. I need to create compelling data insights and professional data visualizations for the executives to approve my recommendations.
## Ask
### Business task
Convert casual riders to Cyclistics member using marketing strategies.
### Analysis questions
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?
I am tasked with answering the first question.
## Prepare
## Data Source
I will use Cyclistic's historical data (from [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)) to analyze and identify trends. The duration is 12 months, from Jan 2023 to Dec 2023. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).

This is public data to explore how different customer types are using Cyclistic bikes. But data-privacy issues prohibit me from using riders’ personally identifiable information. This means that I won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.
## Data Organization
12 files with naming convention of YYYYMMDD-divvy-tripdata. Each file contains information of bike trips for one month. The information includes: ride id, bicyle type, start time, end time, start location, end location, start station, end station, and whether the rider is a casual or annual member. The corresponding column names are:
- ride_id
- rideable_type
- started_at, ended_at
- start_station_name
- start_station_id
- end_station_name
- end_station_id
- start_lat, start_lng
- end_lat, end_lng
- member_casual
## Process
Tools: Google BigQuery is used to combine various dataset into one and clean it.

Reason:
A worksheet can only have 1,048,576 rows in Microsoft Excel because of its inability to manage large amounts of data. Because the Cyclistic dataset has more than 5.6 million rows, it is essential to use a platform like BigQuery that supports huge volumes of data.
### Data combination
The 12 files are uploaded as tables into the dataset "2023_tripdata".

For datasets that exceed 100MB, I had to either clear format or save the workbook in the .xlsb format. This allows the file to be uploaded onto BigQuery, since the platform only accepts file less than 100MB in storage. However, as I tried other format, it did not work. I had to try splitting some datasets in half.

Another table named "2023_tripdata_total" was also created, with a total of 5719877 rows.
### Data exploration
Before cleaning the data, I am familarizing myself with the data to find the inconsistencies. 
#### Observation
1. The table below corresponds to the column names mentioned earlier, along with information about their data type.

![image](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/assets/167451956/06d08187-b640-4fb1-a5e0-78c16484c511)

2. Then the number of null values within all columns are checked.

![image](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/assets/167451956/ce89f567-86da-4a2d-a50e-d922a8871d43)

3. Then the number of duplicate rows are checked. Result shows no duplicate rows.
4. Ride_id character length also needs to be checked to ensure each ride_id contains exactly 16 characters.

![image](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/assets/167451956/166306e1-0ee9-496e-9da5-d6c93dd10dc8)

The result shows 5719877 rows containing ride_id with 16 characters, which equals the total rows => no need to clean.

5. There are 3 unique types of bikes in our data

![image](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/assets/167451956/3a9646e5-00e3-447b-98a8-ff27029e1c8d)


6. The started_at and ended_at show start and end time in YYYY-MM-DD hh:mm:ss UTC format. There are 6419 rows of longer_than_a_day duration and 183451 rows of less_than_a_minute duration that needs to be removed.
7. A total of 875848 rows without both start_station_id and start_station_name need to be removed.
8. A total of 929343 rows without both end_station_id and end_station_name need to be removed.
9. A total of 6990 rows without end_lat and end_lng that needs to be removed.
10. There are 2 unique values that dictate member or casual riders.

![image](https://github.com/BradleyMai/Google_data_analytics_Capstone_Case_1/assets/167451956/1f74780b-958d-49b9-bb06-7d642bb80061)

11. Columns that need to be removed are start_station_id and end_station_id as they do not add value to analysis of our current problem. Longitude and latitude location columns may not be used in analysis but can be used to visualise a map.


 
