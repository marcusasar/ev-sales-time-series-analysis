-- Identify the years with the largest surges in global EV sales.
-- This query calculates both the absolute increase and the percentage growth from the previous year.
-- It helps pinpoint years with major jumps in adoption and supports investigation into what drove those spikes.

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
