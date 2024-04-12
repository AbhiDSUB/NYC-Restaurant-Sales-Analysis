SELECT transaction_type,sum(transaction_amount) AS revenue_per_paymenttype,sum(quantity) as order_per_type
FROM sql_file
GROUP by transaction_type
ORDER by revenue_per_paymenttype DESC;