SELECT item_name,sum(transaction_amount) AS revenue_per_item
FROM sql_file
GROUP by item_name
ORDER by revenue_per_item;