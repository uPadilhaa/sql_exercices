/*
Write a query that captures the full name of the actor, and counts the number of movies each actor has made.
Identify the actor who has made the maximum number of movies.
*/
SELECT actorid, full_name, 
       COUNT(filmtitle) film_count_peractor
  FROM 
       (SELECT a.actor_id actorid,
               a.first_name, 
               a.last_name,
               a.first_name || ' ' || a.last_name AS full_name,
               f.title filmtitle
          FROM film_actor fa
          JOIN actor a ON fa.actor_id = a.actor_id
          JOIN film f ON f.film_id = fa.film_id) t1
 GROUP BY 1, 2
 ORDER BY 3 DESC;