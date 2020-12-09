-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    select ProductName from Product
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    select 
        shipname, 
        id, 
        shippeddate
    from [order]
    where shippeddate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    select 
    p.ProductName,
    p.UnitsOnOrder
    from orderdetail o
    join product p
    on o.productid = p.Id
    where o.orderid  = 10251
    order by p.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
