/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CategoryID]
      ,[CategoryName]
 --     ,[Description] brak dostępu do kolumn
 --     ,[Picture]
  FROM [Northwind].[dbo].[Categories]