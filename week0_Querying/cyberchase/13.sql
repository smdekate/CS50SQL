-- In 13.sql, write a SQL query to explore a question of your choice. This query should:

-- get first and last episode from the series
SELECT "title", "air_date" FROM "episodes"
WHERE "id" = (SELECT MIN("id") FROM "episodes")
OR "id" = (SELECT MAX("id") FROM "episodes");
