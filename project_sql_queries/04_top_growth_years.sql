
SELECT
	year,
	sales,
	sales - LAG(sales) OVER(ORDER BY year) AS absolute_difference,
	ROUND((sales / LAG(sales) OVER(ORDER BY year)-1)*100,2) AS pct_growth_from_prev
FROM
(
	SELECT
		year,
		SUM(value) AS sales
	FROM ev_sales_world
	GROUP BY year
)a
ORDER BY year;
