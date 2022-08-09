/*Say you're an analyst at Parch & Posey and you want to see:
    each account who has a sales rep and each sales rep that has an account (all of the columns in these returned rows will be full);
    but also each account that does not have a sales rep and each sales rep that does not have an account (some of the columns in these returned rows will be empty).
*/ 
SELECT a.id AS account_id, a.name AS account_name, s.name AS rep_name, s.id AS rep_id, *
  FROM accounts a
  FULL OUTER JOIN sales_reps s
    ON a.sales_rep_id = s.id;
    