# BlinkIT-Grocery-Data-Analysis-Project

## Project Overview :

* This project analyzes grocery sales data from **BlinkIT** to gain insights into sales trends, store performance, and product demand. The dataset consists of various attributes such as item type, fat content, outlet details, total sales, and ratings.

## Technologies Used

* **Mysql** for database creation and querying


## Dataset Information

**The dataset contains the following key columns:**

* Item Details: Fat Content, Identifier, Type, Visibility, Weight<br>
* Outlet Information: Establishment Year, Identifier, Location Type, Size, Type<br>
* Sales Data: Total Sales and Ratings

## Database Schema

* A structured database named blinkit was created with a table blinkit_data having fields:<br>

Item_Fat_Content (VARCHAR)

Item_Identifier (VARCHAR)

Item_Type (VARCHAR)

Outlet_Establishment_Year (INT)

Outlet_Identifier (VARCHAR)

Outlet_Location_Type (VARCHAR)

Outlet_Size (VARCHAR)

Outlet_Type (VARCHAR)

Item_Visibility (FLOAT)

Item_Weight (FLOAT)

Total_Sales (FLOAT)

Rating (FLOAT)


## Key Analysis and Insights

* Total Sales Analysis: Total sales in millions are computed using SQL queries.<br>
* Average Sales Analysis: The average sales amount provides insight into product performance.<br>
* Outlet Performance Analysis: Understanding the impact of outlet size and type on sales.
