/*
Write a query that creates a list of actors and movies where the movie length was more than 60 minutes.
*/
SELECT a.first_name, 
       a.last_name,
       a.first_name || ' ' || a.last_name AS full_name,
       f.title ,
       f.length
  FROM film_actor fa
  JOIN actor a ON fa.actor_id = a.actor_id
  JOIN film f ON f.film_id = fa.film_id
 WHERE  f.length > 60;