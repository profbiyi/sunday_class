
{{ config(materialized='table') }}


SELECT 
    "District",
    count("District") 
FROM 
    {{ source('public', 'city_crime_data')}}
GROUP BY  
    "District"