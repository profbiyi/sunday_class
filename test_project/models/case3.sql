
{{ config(materialized='table') }}


SELECT 
    "Arrest",
    count("Arrest") 
FROM 
    {{ source('public', 'city_crime_data')}}
GROUP BY  
    "Arrest"