SELECT received_by,time_of_sale,count(*) as sales_count,sum(quantity) as total_revenue
from sql_file
GROUP by time_of_sale,received_by
order by received_by,time_of_sale;