WITH BIKE as (

select distinct
START_STATION_ID as start_station_id,
START_STATION_NAME as start_station_name,
START_LAT as start_lat,
START_LNG as start_lng

from {{ ref('stg_bike') }}
where RIDE_ID != 'ride_id'


)


select * from BIKE 