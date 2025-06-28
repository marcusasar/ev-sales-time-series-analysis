-- Calculate the year-over-year (YoY) percentage growth in global EV sales.
-- This query helps assess whether EV sales are accelerating consistently each year.
-- It uses the LAG() function to compare each year's sales to the previous year.

SELECT
	year,
	sales,
	ROUND((sales / LAG(sales) OVER(ORDER BY year)-1)*100,2) AS yoy_pct_growth
FROM
(
	SELECT 
		year,
		SUM(value) AS sales
	FROM ev_sales_world
	GROUP BY year
)a;
