CREATE TABLE city (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    city_name VARCHAR(255)
);

INSERT INTO city ("city_name") VALUES ('Philadelphia');