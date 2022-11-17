#1) Create A Table With Four Columns Of Your Choice, Making That They Have Null Constraints

create database Assignment;
use Assignment;
Create table students (Name varchar(30) ,Marks int,Attendence int);
select * from students;


#2) Create A Sales Table Having Columns ID, Product name, Price Per Unit And Quantity, and Then Create A View Which Will Show The Total Cost Per Each Product And Product Name

Create table Sales(Id int, Product_name varchar(20), Price_Per_Unit int, Quantity int);
insert into Sales values(0001,'Book',50,2);
select Product_name, Price_Per_Unit*Quantity as Total_Price from Sales;


#3) For this challenge,use the same table again, your task for this challenge is to return a sum of all the ages in the table.

create table Students_Age(id int, Name varchar(20), Age int);
insert into Students_Age values ( 1,'Bob',21),(2,'Sam',19),(3,'Jill',18),(4,'Jim',21),(5,'Sally',19),(6,'jess',20),(7,'Will',21);
select sum(Age) from Students_Age;


#4) this is the table structure That you,ll use for this SQL challenge, the challenge is to write query that'll group all the people by their age,along with a count of the people that are the same age.

create table Group_A(id int, Name varchar(20), Age int);
insert into Group_A values ( 1,'Bob',21),(2,'Sam',19),(3,'Jill',18),(4,'Jim',21),(5,'Sally',19),(6,'jess',20),(7,'Will',21);
Select count(Age), Age from  Group_A group by  Age ;


#5)In this challenge,your database table is given,your task is to write a query for this table that'll return just the division ids for all the divisions that had positive revenue in 2021.

Create table Division_Revenue(Division_id int,Year int,revenue int);
Insert  into Division_Revenue values(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
Select * from Division_Revenue;
Select Division_id from Division_Revenue where (Revenue > 0 and year = 2021);
