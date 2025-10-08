SELECT country_name, region_name
    FROM countries
    INNER JOIN regions
    ON countries.region_id=regions.region_id;