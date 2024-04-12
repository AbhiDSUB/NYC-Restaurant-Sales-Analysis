SELECT Day,sum(quantity) as total_order
FROM sql_file
group by Day
order by total_order DESC;