-- blinkit data analysis project

create database blinkit;

use blinkit;

create table blinkit_data(
Item_Fat_Content varchar(50),
Item_Identifier	varchar(80),
Item_Type	varchar(100),
Outlet_Establishment_year year,
Outlet_Identifier	varchar(100),
Outlet_Location_Type	varchar(100),
Outlet_Size varchar(50),
Outlet_Type	varchar(100),
Item_Visibility	decimal(10,7),
Item_Weight	decimal(10,2),
Total_Sales	decimal(10,4),
Rating decimal(3,2)
);


use blinkit;

select * from blinkit_data;

-- Data Cleaning

/* Cleaning the Item_Fat_Content field ensures data consistency and accuracy in analysis. 
The presence of multiple variations of the same category (e.g., low fat vs. Low Fat) 
can cause issues in reporting, aggregations, and filtering. By standardizing these values, 
we improve data quality, making it easier to generate insights and maintain uniformity in our datasets.*/

SET SQL_SAFE_UPDATES = 0;

update  blinkit_data
set Item_Fat_Content =
case
when Item_Fat_Content = "low fat" then "Low Fat"
when Item_Fat_Content = "Regular" then "Regular"
else "Item_Fat_Content"
end;

select distinct item_fat_content 
from blinkit_data;



