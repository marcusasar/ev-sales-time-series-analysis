SELECT
	year,
	sales,
	SUM(sales) OVER(ORDER BY year) AS ytd_sales
FROM
(
	SELECT 
		year,
		SUM(value) AS sales
	FROM ev_sales_world
	GROUP BY year
)a;
