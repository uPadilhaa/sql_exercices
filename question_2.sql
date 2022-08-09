/*In the following SQL Explorer,
write a query that left joins the table and the tables on each sale rep's ID number and joins it using the comparison operator on and,
like so: accounts.primary_poc < sales_reps.name
*/
SELECT a.name account, 
	   a.primary_poc primary_contact, 
       s.name sales_rep
  FROM accounts a
  LEFT JOIN sales_reps s ON a.sales_rep_id = s.id AND a.primary_poc < s.name