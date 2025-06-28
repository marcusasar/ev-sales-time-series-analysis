-- Calculate the cumulative (year-to-date) global EV sales over time.
-- This query shows how the total number of EVs sold globally has grown year by year.
-- It helps visualize the pace of EV adoption and how quickly it is scaling.

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
