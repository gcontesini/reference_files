SELECT country_name, region_name
    FROM countries
    RIGHT JOIN regions
    ON countries.region_id=regions.region_id;