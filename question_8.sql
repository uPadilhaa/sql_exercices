/*
Write a query that creates a table with 4 columns: 
actor's full name, film title, length of movie, and a column name "filmlen_groups" that classifies movies based on their length.
Filmlen_groups should include 4 categories: 1 hour or less, Between 1-2 hours, Between 2-3 hours, More than 3 hours.
*/
SELECT full_name, 
       filmtitle,
       filmlen,
       CASE WHEN filmlen <= 60 THEN '1 hour or less'
       WHEN filmlen > 60 AND filmlen <= 120 THEN 'Between 1-2 hours'
       WHEN filmlen > 120 AND filmlen <= 180 THEN 'Between 2-3 hours'
       ELSE 'More than 3 hours' END AS filmlen_groups
  FROM 
       (SELECT a.first_name, 
               a.last_name,
               CONCAT(a.first_name, ' ', a.last_name) AS full_name,
               f.title filmtitle, 
               f.length filmlen
          FROM film_actor fa
          JOIN actor a ON fa.actor_id = a.actor_id
          JOIN film f ON f.film_id = fa.film_id) t1;