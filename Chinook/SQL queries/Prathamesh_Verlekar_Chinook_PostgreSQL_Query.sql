--PostgreSQL - top 10  album (title) sales (via invoiceline)
Select a."Title" "Album_Title", sum(il."UnitPrice"*il."Quantity") "Total_Sales"
FROM "Album" a
JOIN "Track" t
ON a."AlbumId" = t."AlbumId"
JOIN "InvoiceLine" il
ON t."TrackId" = il."TrackId"
GROUP BY a."Title"
ORDER BY sum(il."UnitPrice"*il."Quantity") desc
LIMIT 10;
