
{{ config(materialized='table') }}


SELECT 
    "Primary Type",
    count("Primary Type") 
FROM 
    {{ source('public', 'city_crime_data')}}
GROUP BY  
    "Primary Type"