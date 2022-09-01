SELECT * FROM SalesLT.Customer
SELECT  
    
    REPLACE (SalesPerson,'adventure-works\', '' ) AS  salesperson
    , CONCAT (Title,FirstName) AS NameTitle
    ,Phone

-- 1.2
SELECT * FROM SalesLT.Product

SELECT TOP 10 PERCENT
        Name 
        ,Weight
        ,DATEDIFF (DAY , SellStartDate , IIF (SellEndDate IS NULL , CURRENT_TIMESTAMP, SellEndDate ))
         AS NumberOfSellDays
FROM SalesLT.Product
ORDER BY Weight DESC
-- 2.1 


