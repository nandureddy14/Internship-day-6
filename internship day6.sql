
--customers from specific cities

select * from Customers
where City in ('Mumbai','Bangalore','Hyderabad')


-- Customers with orders >=1000


SELECT *
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
      AND o.Amount >= 1000
);


--Customers who purchased more than or equal to average purchase 


select c.Name, o.Total_sales
from Customers c inner join (
select CustomerID, sum(Amount) Total_sales 
from Orders
group by CustomerID
having sum(Amount)>=
(select avg(Amount) from Orders)  ) o
on c.CustomerID = o.CustomerID


-- Orders on the day of the Max sales


select * from Orders where OrderDate=
(select OrderDate
from Orders
where Amount = (select max(Amount) from Orders)) 