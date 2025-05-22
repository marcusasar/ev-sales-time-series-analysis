CREATE TABLE ev_sales_world AS
SELECT *
FROM ev_sales
WHERE region = 'World' AND parameter = 'EV sales';
