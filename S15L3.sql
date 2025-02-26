SELECT COUNT(*) as NumeroOrdini FROM Orders;

SELECT COUNT(*) as NumeroClienti FROM Customers;

SELECT COUNT(*) as ClientiDiLondra FROM Customers
WHERE City = 'London';

SELECT AVG(Freight) as MediaCostiDiTrasporto FROM Orders;

SELECT AVG(Freight) as MediaCostiBOTTM FROM Orders
WHERE CustomerID = 'BOTTM';

SELECT CustomerID, SUM(Freight) as MediaCostiCliente 
FROM orders
GROUP BY CustomerID;

SELECT City, COUNT(*) as NumeroDiClientiInCittà 
FROM Customers
GROUP BY City;

SELECT OrderID, SUM(UnitPrice * Quantity) as TotaleOrdine
FROM [Order Details]
GROUP BY OrderID;

SELECT SUM(UnitPrice * Quantity) as TotaleOrdine10248 FROM [Order Details]
WHERE OrderID = 10248;

SELECT Categories.CategoryName, COUNT(Products.ProductID) as ProdottiDiQuestaCategoria
FROM Categories
INNER JOIN 
Products ON 
Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName;

SELECT ShipCountry, COUNT(*) as PaeseDiSpedizione
FROM Orders
GROUP BY ShipCountry;

SELECT ShipCountry, AVG(Freight) as MediaCostiDiSpedizionePerPaese
FROM Orders
GROUP BY ShipCountry;