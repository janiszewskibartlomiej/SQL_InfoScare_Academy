SELECT OrderID, 
	DATEDIFF(MONTH, OrderDate, GETDATE()) AS CzasOdWysyłki
	FROM Orders
