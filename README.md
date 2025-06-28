# 📊 EV Sales Time Series Analysis (Global Focus)

This project performs a time series analysis of global electric vehicle (EV) sales using SQL. The goal is to understand growth trends in EV adoption worldwide by analyzing annual sales data from the IEA dataset.


## 🌍 Objective

To analyze global EV sales over time and answer key time series questions such as:
- How have global electric vehicle (EV) sales evolved over the last decade, and what long-term trends can we observe?
- What is the annual growth rate of global EV sales, and are we seeing consistent year-over-year acceleration?
- What is the total number of EVs sold globally to date, and how fast is adoption scaling year after year?
- Which specific years saw the biggest surge in EV sales—both in total units and percentage growth—and what factors may have driven these spikes?


## 🛠️ Tools Used


**SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the EV sales data.
- **Excel:** For creating chart visuals.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.


## 🧪 How to Use This Project
### 📁 1. Set Up the Database and Tables

**Run [`01_create_table.sql`](./sql/01_create_table.sql)**  
This script creates the initial base table where the raw EV sales data will be stored.

**Load the dataset: [`ev_sales_data.csv`](./dataset/ev_sales_data.csv)**  
Import the CSV data into the base table created in step 1.

**Run [`02_create_ev_sales.sql`](./sql/02_create_ev_sales.sql)**  
This script creates the `ev_sales_world` table by transforming and extracting relevant information from the base table for analysis.

3. **Run Analysis Queries**
   - Execute the queries in the [project_sql_queries](./project_sql_queries/) folder in order.

4. **View the Insights**
   - Read the findings and interpretations in [ev_sales_growth_insights.md](./analysis/ev_sales_growth_insights.md).


## 📈 Summary of Findings

📝 *Key takeaways*  

- EV sales doubled between 2020 and 2021
- The highest absolute growth occurred in 2021 (+3.5M units)
- Total global sales surpassed 10M in 2022
- The highest growth percentage occured between 2010-11 (+555.4%)


## 🤝 Acknowledgments

Thanks to the International Energy Agency (IEA) for the dataset.
