-- Analyze the yearly trend of global EV sales to understand how sales have evolved over the last decade.
-- This query groups the sales data by year and calculates the total number of EVs sold each year.
-- It helps identify long-term growth patterns and trends in EV adoption worldwide.

SELECT *
FROM
(
	SELECT
		year,
		SUM(value) AS sales
	FROM ev_sales_world
	GROUP BY year
	ORDER BY year
)a;
