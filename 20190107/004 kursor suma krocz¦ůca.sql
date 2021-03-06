DECLARE SumaKrocząca CURSOR FOR
	SELECT OrderID, Freight FROM Orders ORDER BY OrderID
	DECLARE @OrderID int, @Freight money, @FreightSuma money = 0 -- suma nie może być NULL
	OPEN SumaKrocząca
		FETCH NEXT FROM SumaKrocząca INTO @OrderID, @Freight
		WHILE @@FETCH_STATUS = 0
			BEGIN
				SET @FreightSuma = @FreightSuma + @Freight
				PRINT CONCAT(@OrderID, ' ', @Freight, ' ', @FreightSuma)
				PRINT CONCAT_WS( ' | ', @OrderID, @Freight, @FreightSuma)
				FETCH NEXT FROM SumaKrocząca INTO @OrderID, @Freight
			END
	CLOSE SumaKrocząca
DEALLOCATE SumaKrocząca
-- uwzględniamy wyłącznie freight > 20