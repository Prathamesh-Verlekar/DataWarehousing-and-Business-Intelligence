--SQL Server -  top 20 by customer (lastname & first name) sales (via invoiceline)

SELECT TOP 20 Concat(lastname, ' ', firstname) Customer_Name, 
              Sum(il.UnitPrice*il.Quantity)                 Total_Sales 
FROM   customer c 
       JOIN invoice i 
         ON c.customerid = i.customerid 
       JOIN invoiceline il 
         ON i.invoiceid = il.invoiceid 
GROUP  BY Concat(lastname, ' ', firstname) 
ORDER  BY Sum(il.UnitPrice*il.Quantity) DESC; 

