-- Task 1 :
-- 1.1
/*SELECT  DISTINCT
        StateProvince,
        City
FROM SalesLT.Address
ORDER BY  stateProvince ASC  ,City DESC
 
*/
--1.2
/*SELECT TOP 10 PERCENT Weight ,
    Name 
FROM SalesLT.Product 
ORDER by Weight DESC */
-- Task 2 : 
-- 2.1

 /*SELECT  ProductNumber,
    Name 
 FROM SalesLT.Product 
 WHERE  Color in  ('black' , 'red' , ' white')
    AND Size in ('S', 'M')
 */
 -- 2.2
 
  SELECT 
    ProductID
    , ProductNumber
    , Color 
    , SIZE
    , Name 
  FROM SalesLT.Product 
  WHERE ProductNumber LIKE 'Bk-%'
    AND ProductNumber NOT LIKE '___T%'  -- ki tự thu 4 chữ khác T
    AND ProductNumber LIKE '%-[0-9][0-9]' -- ket thuc boi dau '-' va 2 chu so
    AND ( Color in  ('black' , 'red' , ' white') OR Size in ('S', 'M') ) 
  
  --2.3  
  SELECT * FROM SalesLT.Product --> dimen
SELECT 
    P. ProductID,
    ProductNumber,
    Name,
    ListPrice ,
    SOD.SalesOrderID  
  FROM SalesLT.Product P
   LEFT JOIN SalesLT.SalesOrderDetail SOD on P.ProductID = SOD.ProductID 
  WHERE 
  (
      Name Like '%HL%'
      OR Name like '%Mountain%'
  )
    and ProductNumber like '________%'
    and SalesOrderID is NULL


  