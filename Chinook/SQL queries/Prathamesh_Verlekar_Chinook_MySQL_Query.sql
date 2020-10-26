#MySQL - sales (via invoiceline) by genre name

SELECT g.NAME           Genre_Name, 
       Sum(il.UnitPrice*il.quantity) Total_Sales 
FROM   genre g 
       JOIN track t 
         ON t.genreid = g.genreid 
       JOIN invoiceline il 
         ON t.trackid = il.trackid 
GROUP  BY g.NAME 
ORDER  BY Sum(il.UnitPrice*il.quantity) DESC;