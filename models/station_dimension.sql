WITH BIKE AS(
    SELECT
        DISTINCT
        START_STATIO_ID AS station_id,
        start_station_name as station_name,
        START_LAT as station_lat,
        START_LNG as start_station_lng
    FROM {{ source('demo_project', 'BIKE') }}
    WHERE RIDE_ID != 'ride_id'
)

SELECT
*
FROM BIKE