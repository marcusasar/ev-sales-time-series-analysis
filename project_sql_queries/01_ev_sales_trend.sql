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
