
{{ config(materialized='table') }}


SELECT 
    "Domestic",
    count("Domestic") 
FROM 
    {{ source('public', 'city_crime_data')}}
GROUP BY  
    "Domestic"