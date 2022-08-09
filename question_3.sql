/*Modify the query from the previous video, which is pre-populated in the SQL Explorer below, to perform the same interval analysis except for the table. Also: web_events
    - change the interval to 1 day to find those web events that occurred after, but not more than 1 day after, another web event;
    - add a column for the variable in both instances of the table in your querychannel.
*/
SELECT o1.id AS o1_id,
       o1.account_id AS o1_account_id,
       o1.occurred_at AS o1_occurred_at,
       o2.id AS o2_id,
       o2.account_id AS o2_account_id,
       o2.occurred_at AS o2_occurred_at
  FROM orders o1
  LEFT JOIN orders o2 ON o1.account_id = o2.account_id
   AND o2.occurred_at > o1.occurred_at
   AND o2.occurred_at <= o1.occurred_at + INTERVAL '28 days'
 ORDER BY o1.account_id, o1.occurred_at;