SELECT
	year,
	sales,
	ROUND((sales / LAG(sales) OVER(ORDER BY year)-1)*100,2) AS yoy_pct_growth_
FROM
(
	SELECT 
		year,
		SUM(value) AS sales
	FROM ev_sales_world
	GROUP BY year
)a;
