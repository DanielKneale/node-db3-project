-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT products.productname, categories.categoryname FROM Products
Join categories
ON products.categoryid = categories.categoryid

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT orders.orderid, shippers.ShipperName, orders.OrderDate FROM Orders
join shippers
on orders.shipperid = shippers.shipperid
where OrderDate < 2012-08-09

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Products.ProductName, orderdetails.quantity, OrderDetails.OrderID FROM Products
join orderdetails on products.productid = orderdetails.productid
where orderid = 10251
order by ProductName


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select orders.OrderID, customers.customername, employees.lastname from orders
join customers on customers.CustomerID = orders.CustomerID
join employees on Employees.EmployeeID = Orders.EmployeeID