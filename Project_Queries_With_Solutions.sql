-- 1.What is the total sales amount in millions? 

select round(sum(Total_Sales)/1000000.0 ,2) as Total_Sales_in_millions
from blinkit_data;

-- 2.What is the average sales amount?

select round(avg(Total_Sales),2) as avg_Sales_amount
from blinkit_data;

-- 3.How many total items/orders are there in the dataset?

select count(*) as Total_Items from blinkit_data;

-- 4.What is the average rating of items in the dataset?

select round(avg(rating),2) as avg_rating 
from blinkit_data;

-- 5.What is the total sales amount categorized by item fat content?

select item_fat_content, sum(total_sales) as Total_Sales
from blinkit_data
group by item_fat_content 
order by Total_Sales desc;

-- 6.What is the total sales amount categorized by item type?

select item_type, sum(total_sales) as Total_Sales 
from blinkit_data
group by item_type 
order by Total_Sales desc ;

-- 7.What is the total sales amount for each outlet location type categorized by item fat content?

select outlet_location_type,
sum(case
when item_fat_content = "Low Fat" then Total_Sales else 0 end) as Low_Fat_Sales,
sum(case
when item_fat_content = "Regular" then Total_Sales else 0 end) as Regular_Sales
from blinkit_data
group by outlet_location_type
order by outlet_location_type;

-- 8.What is the total sales amount by outlet establishment year?

select outlet_establishment_year, sum(total_sales) as Total_Sales 
from blinkit_data 
group by outlet_establishment_year 
order by Total_Sales desc;

-- 9.What is the percentage of sales contribution by each outlet size?

select outlet_size,sum(total_sales) as Total_Sales,round((sum(total_sales)/(select sum(total_sales) from blinkit_data))*100,2) as Percentage_Contribution
from blinkit_data
group by outlet_size
order by Percentage_Contribution desc ;


-- 10.What is the total sales amount by outlet location type?

select outlet_location_type,sum(total_sales) as Total_Sales 
from blinkit_data
group by outlet_location_type 
order by Total_Sales desc ;

-- 11.What are the total sales, average sales, number of items, average rating, and item visibility by outlet type?

select outlet_type,
round(sum(total_sales),2) as Total_Sales,
round(avg(total_sales),2) as avg_Sales,
count(*) as number_of_items,
round(avg(rating),2) as avg_rating,
round(avg(item_visibility),2) as avg_item_visibility
from blinkit_data
group by outlet_type;


-- Finds the top 5 outlet types that generate the highest sales.

select outlet_type,
round(sum(total_sales),2) as Total_Sales
from blinkit_data 
group by outlet_type 
order by Total_Sales desc 
limit 5;

-- Finds the top 3 most sold item types in terms of total sales.

select item_type,round(sum(total_sales),2) as Total_Sales 
from blinkit_data 
group by item_type 
order by Total_Sales desc 
limit 3;

-- Determines which outlet types generate the highest average sales.

select outlet_type,round(avg(total_sales),2) as avg_sales 
from blinkit_data 
group by outlet_type 
order by avg_sales desc;

-- Shows how sales have changed over the years based on when the outlet was established.

select outlet_establishment_year,
round(sum(total_sales),2) as Total_Sales
from blinkit_data 
group by  outlet_establishment_year
order by Total_Sales desc ;

-- Finds the top 5 best and worst-rated items based on item type.

select item_type,
round(avg(rating),2) as avg_rating
from blinkit_data 
group by item_type
order by avg_rating desc 
limit 5; -- Best average rating

select item_type,
round(avg(rating),2) as avg_rating
from blinkit_data 
group by item_type
order by avg_rating  
limit 5; -- worst average rating


-- Identifies the top 5 best and worst-performing outlet_Identifier in terms of total sales.

select outlet_identifier,
round(sum(total_sales),2) as Total_Sales 
from blinkit_data 
group by outlet_identifier
order by Total_Sales desc
limit 5; -- Best outlet Identifier

select outlet_identifier,
round(sum(total_sales),2) as Total_Sales 
from blinkit_data 
group by outlet_identifier
order by Total_Sales 
limit 5; -- worst outlet Identifier

