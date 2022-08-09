/*
Write a query that uses UNION ALL on two instances (and selecting all columns) of the accounts table.
Then inspect the results and answer the subsequent quiz.
*/
SELECT *
  FROM accounts

UNION ALL

SELECT *
  FROM accounts;

/*
Add a WHERE clause to each of the tables that you unioned in the query above, filtering the first table where name equals Walmart and filtering the second table where name equals Disney. 
Inspect the results then answer the subsequent quiz.
*/
SELECT *
  FROM accounts
 WHERE name = 'Walmart'

 UNION ALL

SELECT *
  FROM accounts
 WHERE name = 'Disney';

/*
Perform the union in your first query (under the Appending Data via UNION header) in a common table expression and name it. 
Then do a the number of times a appears in the table.
If you do this correctly, your query results should have a count of 2 for each.
*/
SELECT name, COUNT(*) AS number_times
  FROM 
(SELECT *
   FROM accounts

  UNION ALL

 SELECT *
   FROM accounts) double_accounts
  GROUP BY 1
  ORDER BY 2 DESC;