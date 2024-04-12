WITH RankedItems AS (
    SELECT
        item_name,
        time_of_sale,
        SUM(quantity) AS total_order,
        ROW_NUMBER() OVER (PARTITION BY time_of_sale ORDER BY SUM(quantity) DESC) AS item_rank
    FROM
        sql_file
    GROUP BY
        item_name, time_of_sale
)
SELECT
    time_of_sale,
	item_name,
    total_order
FROM
    RankedItems
WHERE
    item_rank = 1;
