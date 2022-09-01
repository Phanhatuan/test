-- SELECT* FROM  SalesLT.Customer 
-- SELECT* FROM SalesLT.SalesOrderHeader
-- --1.1
-- SELECT cus.CompanyName
--     , SOH.SalesOrderID 
--     , SOH.TotalDue
-- FROM SalesLT.Customer  AS cus
-- INNER JOIN SalesLT.SalesOrderHeader AS SOH ON cus.CustomerID =  SOH.CustomerID
-- --1.2 
-- SELECT* FROM  SalesLT.Address
-- SELECT* FROM  SalesLT.CustomerAddress

-- SELECT AddressType
--     , addr.addressLine1 
--     , addr.AddressLine2 
--     , addr.City 
--     , addr.StatePRovince 
--     , addr.countryRegion 
--     , addr.PostalCode
-- FROM SalesLT.Address AS addr
-- INNER JOIN SalesLT.CustomerAddress AS CA 
--     ON addr.AddressID =  CA.AddressID
-- ------------------------
--task2  : 1.1
SELECT* FROM  dbo.fact_transaction_2019
SELECT* FROM  dbo.dim_scenario

SELECT  TST.customer_id
        ,TST.transaction_id,
        TST.scenario_id,
        SCN.transaction_type
        ,SCN.sub_category, 
        SCN.category
FROM dbo.fact_transaction_2019 AS TST
JOIN dbo.dim_scenario AS SCN 
ON TST.scenario_id = SCN.scenario_id
WHERE DATEPART (month ,TST.transaction_time) = '01'
AND SCN.transaction_type != 'Payment' 
--1.2
