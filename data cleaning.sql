-- delete all rows with no data
DELETE 
FROM googlecase.tripdata_2023
WHERE
	start_station_name =""
or start_station_id =""
or end_station_name =""
or end_station_id =""
or end_lat =""
or end_lng ="";

-- delete all rows with less than a minute time duration
DELETE
FROM googlecase.tripdata_2023
WHERE(
EXTRACT(HOUR FROM ride_length) +
EXTRACT(MINUTE FROM ride_length)
) = 0;

-- delete all rows with more than a day duration
DELETE
FROM googlecase.tripdata_2023
WHERE(
EXTRACT(HOUR FROM ride_length)
) >= 24;

-- create a column with the month of the ride
ALTER TABLE googlecase.tripdata_2023
ADD ride_month INT AS (DATE_FORMAT(started_at, '%Y%m')) STORED;