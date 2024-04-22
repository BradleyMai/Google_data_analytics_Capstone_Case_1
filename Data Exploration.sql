-- Check the types of data
SELECT COLUMN_NAME, DATA_TYPE
FROM `sustained-fx-420803.2023_tripdata`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = '2023_tripdata_total';

-- Check the number of null values

SELECT 
  COUNT(*) - COUNT(ride_id) ride_id,
  COUNT(*) - COUNT(rideable_type) rideable_type,
  COUNT(*) - COUNT(started_at) started_at,
  COUNT(*) - COUNT(ended_at) ended_at,
  COUNT(*) - COUNT(start_station_name) start_station_name,
  COUNT(*) - COUNT(start_station_id) start_station_id,
  COUNT(*) - COUNT(end_station_name) end_station_name,
  COUNT(*) - COUNT(end_station_id) end_station_id,
  COUNT(*) - COUNT(start_lat) start_lat,
  COUNT(*) - COUNT(start_lng) start_lng,
  COUNT(*) - COUNT(end_lat) end_lat,
  COUNT(*) - COUNT(end_lng) end_lng,
  COUNT(*) - COUNT(member_casual) member_casual
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`;

-- checking for duplicate rows

SELECT ride_id,
COUNT(ride_id)
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
GROUP BY ride_id
HAVING COUNT(ride_id)>1;

-- ride_id - all have length of 16
SELECT LENGTH(ride_id) AS length_ride_id,
COUNT(ride_id) AS num_of_rows,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
GROUP BY(length_ride_id);

-- rideable_type - 3 unique types of bikes
SELECT DISTINCT rideable_type, COUNT(rideable_type) as Num_of_trips,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
GROUP BY (rideable_type);

-- started_at, ended_at - TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC
SELECT started_at, ended_at,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
LIMIT 10;

-- longer-than-a-day rides need to be removed (6419 rows)
SELECT COUNT(*) AS longer_than_a_day,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
WHERE(
  EXTRACT(HOUR FROM (ended_at - started_at))*60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at))/60
)>=1440;

--less-than-a-minute rides need to be removed (5580669 rows)
SELECT COUNT(*) AS less_than_a_minute,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
WHERE(
  EXTRACT(HOUR FROM (ended_at - started_at))*60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at))/60
)<=60;

-- start_station_name, start_station_id missing need to be removed (875848 rows)
SELECT DISTINCT start_station_name
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
ORDER BY start_station_name;

SELECT COUNT(ride_id) AS rows_with_start_station_null,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
WHERE start_station_name IS NULL OR start_station_id IS NULL;

-- end_station_name, end_station_id missing need to be removed (929343 rows)

SELECT DISTINCT end_station_name
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
ORDER BY end_station_name;

SELECT COUNT(ride_id) AS rows_with_end_station_null,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
WHERE end_station_name IS NULL OR end_station_id IS NULL;

-- end_lat, end_lng - total 6990 rows with both missing
SELECT COUNT(ride_id) AS rows_without_end,
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
WHERE end_lat IS NULL OR end_lng IS NULL;

-- member_casual - 2 unique values - member and casual riders
SELECT DISTINCT member_casual,
COUNT(member_casual) AS num_of_trips
FROM `sustained-fx-420803.2023_tripdata.2023_tripdata_total`
GROUP BY member_casual;