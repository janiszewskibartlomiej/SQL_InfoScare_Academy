PRINT
'SELECT OrderID, CustomerID, CONVERT(date, OrderDate) AS OrderDate, Freight
	INTO Zamówienia' + CONVERT(char(4), YEAR(GETDATE())) + char(10) +
  ' FROM Northwind.dbo.Orders
  WHERE YEAR(OrderDate) = YEAR(GETDATE())'

