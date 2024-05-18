USE googlecase;
DROP TABLE IF EXISTS jan_2023;
CREATE TABLE jan_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for jan 2023
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202301-divvy-tripdata/202301-divvy-tripdata.csv"
INTO TABLE jan_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS feb_2023;
CREATE TABLE feb_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for feb 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202302-divvy-tripdata/202302-divvy-tripdata.csv"
INTO TABLE feb_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS mar_2023;
CREATE TABLE mar_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for mar 2023  
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202303-divvy-tripdata/202303-divvy-tripdata.csv"
INTO TABLE mar_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS apr_2023;
CREATE TABLE apr_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for apr 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202304-divvy-tripdata/202304-divvy-tripdata.csv"
INTO TABLE apr_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS may_2023;
CREATE TABLE may_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for may 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202305-divvy-tripdata/202305-divvy-tripdata.csv"
INTO TABLE may_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS jun_2023;
CREATE TABLE jun_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for jun 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202306-divvy-tripdata/202306-divvy-tripdata.csv"
INTO TABLE jun_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS jul_2023;
CREATE TABLE jul_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for jul 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202307-divvy-tripdata/202307-divvy-tripdata.csv"
INTO TABLE jul_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS aug_2023;
CREATE TABLE aug_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for aug 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202308-divvy-tripdata/202308-divvy-tripdata.csv"
INTO TABLE aug_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS sep_2023;
CREATE TABLE sep_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for sep 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202309-divvy-tripdata/202309-divvy-tripdata.csv"
INTO TABLE sep_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS oct_2023;
CREATE TABLE oct_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for oct 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202310-divvy-tripdata/202310-divvy-tripdata.csv"
INTO TABLE oct_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS nov_2023;
CREATE TABLE nov_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for nov 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202311-divvy-tripdata/202311-divvy-tripdata.csv"
INTO TABLE nov_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE googlecase;
DROP TABLE IF EXISTS dec_2023;
CREATE TABLE dec_2023 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week int,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));
 -- import csv file for dec 2023   
LOAD DATA LOCAL INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202312-divvy-tripdata/202312-divvy-tripdata.csv"
INTO TABLE dec_2023
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';