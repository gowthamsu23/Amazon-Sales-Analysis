create database amazon_project;
use	amazon_project;

create table amazon_sales(
	order_id varchar(50),
    date Date,
    status varchar(50),
    fulfilment varchar(50),
    category varchar(100),
    amount float,
    qty int	
    );
    
show tables;

alter table `amazon sale report`
rename to amazon_sales;

show tables ;
select * from amazon_sales limit 10;

alter table amazon_sales change `Order ID` order_id varchar(50);
describe amazon_sales
alter table amazon_sales change `Date` order_date date;
alter table amazon_sales change `Status` status varchar(50);
alter table amazon_sales change `Fulfilment` fulfilment varchar(50);
alter table amazon_sales change `Sales Channel` sales_channel varchar(50);
alter table amazon_sales change `ship-service-level` service_level varchar(50);
alter table amazon_sales change `Category` category varchar(100);

select SUM(amount) as total_revenue from amazon_sales;
describe amazon_sales;

select month(order_date) as month,
	sum(amount) as revenue
from amazon_sales
group by month
order by month;

select category, sum(amount) as revenue
from amazon_sales
group by category
order by revenue desc;

select fulfilment, sum(amount) as revenue
from amazon_sales
group by fulfilment;

select * from amazon_sales





