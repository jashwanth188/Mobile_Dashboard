use bi1;
select * from mobile;

-- 1) Check mobile features and price list --
select Phone_name , Price from mobile;

-- 2) Find out the price of 5 most expensive phones --
select * from mobile
order by Price desc
limit 5;

-- 3) Find out the price of 5 most cheapest phones --
select * from mobile
order by Price asc
limit 5;

-- 4) List of top 5 Samsung phones with price and all features --
select * from mobile where Brands = 'Samsung'
order by Price desc 
limit 5;

-- 5) Must have android phone list then top 5 High price android Phones --
select * from mobile where Operating_System_Type = 'Android'
order by Price desc 
limit 5;

-- 6) Must have android phone list then top 5 lower price android phones --
select * from mobile where Operating_System_Type = 'Android'
order by Price asc 
limit 5;

-- 7) Must have IOS phone list then top 5 High price IOS phones --
select * from mobile where Operating_System_Type = 'IOS'
order by Price desc
limit 5;

-- 8) Must have IOS phone list then top 5 Lower price IOS Phones --
select * from mobile where Operating_System_Type = 'iOS'
order by price asc
limit 5;

-- 9) Write a query which phone support 5g and also top 5 phone with 5g support --
select * from mobile where 5G_Availability = 'Yes'
order by Price desc
limit 5;

--  10) Total price of all mobile is to be found with brand name --
select Brands, sum(Price) from mobile group by Brands;