DROP TABLE IF EXISTS tripdata_2023;
CREATE TABLE tripdata_2023 (
ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    ride_length time,
    day_of_week varchar(255),
    start_station_name varchar(255),
    start_station_id varchar(255),
    end_station_name varchar(255),
    end_station_id varchar(255),
    start_lat double,
    start_lng double,
    end_lat double,
    end_lng double,
    member_casual varchar(255));
INSERT INTO tripdata_2023
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM jan_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM feb_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM mar_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM apr_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM may_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM jun_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM jul_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM aug_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM sep_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM oct_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM nov_2023
UNION
SELECT
	ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM dec_2023;

