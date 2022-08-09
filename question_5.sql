/*
Query that creates a table with the following details: actor's first and last name combined as full_name, film title and length of the movies.
*/
SELECT a.first_name, 
       a.last_name,
       a.first_name || ' ' || a.last_name AS full_name,
       f.title,
       f.length
  FROM   film_actor fa
  JOIN   actor a ON fa.actor_id = a.actor_id
  JOIN   film f ON f.film_id = fa.film_id;

