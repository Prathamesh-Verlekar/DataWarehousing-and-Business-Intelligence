--Oracle - sales total by Billing Country

SELECT i.billingcountry Billing_Country, 
       Sum(il.unitprice*il.quantity) Total_Sales 
FROM   invoice i 
       JOIN invoiceline il 
         ON i.invoiceid = il.invoiceid 
GROUP  BY i.billingcountry 
ORDER  BY Sum(il.unitprice*il.quantity) DESC;