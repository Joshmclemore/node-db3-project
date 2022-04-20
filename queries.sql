-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT 
       Category.CategoryName,
       Product.ProductName
  FROM Product
  JOIN Category ON Product.CategoryID=Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT 
    "Order".Id, 
    Shipper.CompanyName 
FROM "Shipper"
JOIN "Order" ON "Order".ShipVia=Shipper.Id
WHERE "Order".OrderDate BETWEEN '1' AND '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT 
    OrderDetail.Quantity,
    Product.ProductName
FROM Product
JOIN OrderDetail ON Product.Id=OrderDetail.ProductId
WHERE OrderDetail.OrderId=10251
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT
    "Order".Id,
    Customer.CompanyName,
    Employee.LastName
FROM 
 "Order" 
 LEFT JOIN Customer ON "Order".CustomerId = Customer.Id
 LEFT JOIN Employee ON "Order".EmployeeId = Employee.Id

 ^^^^ I Only recieved 1,000 records with this query, but it has every order in it, which is what the directions appear to be asking for.