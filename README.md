# **Google Data Analytics Capstone: Cyclistic Case Study**
Course: [Google Data Analytics Capstone](https://www.coursera.org/learn/google-data-analytics-capstone)
## Introduction
In this case study, I will act as a real-world junior data analyst at a fictional study, Cyclistic. The company focuses on creating bike-sharing solutions in Chicago. In order to answer the key business questions, I will follow the data analysis processes: Ask, Prepare, Process, Analyze, Share, Act. 
### Quick links
Data source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) [Accessed on 04/03/2023]
SQL Queries:
1. [Data combining](Google_data_analytics_Capstone_Case_1/Data combining)
2. Data exploration
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

Another table named "2023_tripdata_total" was also created.
### Data exploration
