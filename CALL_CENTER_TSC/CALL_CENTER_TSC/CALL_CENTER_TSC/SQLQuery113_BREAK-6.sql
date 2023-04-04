--WRITTIEN OUT QUERY TO GRAB AND JOIN TABLES START POINT IS HERE AFTER SOME TROUBLESHOOTING--
SELECT [Sales].[SalesPerson].BusinessEntityID
	  ,[Person].[Person].[FirstName]
	  ,[Person].[Person].[LastName]
      ,[Sales].[SalesTerritoryHistory].[TerritoryID]--TIEING IN SALES ID TERRITORY ID SO I CAN ADD REGION INFO JOINING ONE MORE TABLE--
	  ,[Sales].[SalesTerritory].[Name]--THIS IS COLUMN MOVING TO JOIN TABLE--
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
	  ,ROUND([Sales].[SalesPerson].[SalesYTD],1) AS SalesYTD_Round--ADDING ROUNDING FOUNCATION FOR CLEANING NEED ALAIS--
      ,ROUND([Sales].[SalesPerson].[SalesLastYear],1) AS SalesLastYear_Round --rounding and alais--
	  ,[HumanResources].[Employee].JobTitle
	  ,[Sales].[SalesTerritory].[Group]
  FROM [AdventureWorks2016_EXT].[Sales].[SalesPerson] 
  INNER JOIN [AdventureWorks2016_EXT].[Person].[Person] 
  ON [Sales].[SalesPerson].BusinessEntityID = [Person].[Person].BusinessEntityID --ADDING NAME---
  INNER JOIN AdventureWorks2016_EXT.[HumanResources].[Employee]
  ON [HumanResources].[Employee].[BusinessEntityID] = [Sales].[SalesPerson].BusinessEntityID
  FULL JOIN AdventureWorks2016_EXT.[Sales].[SalesTerritoryHistory]
  ON [Sales].[SalesPerson].BusinessEntityID= [Sales].[SalesTerritoryHistory].BusinessEntityID--ADDING JOB TITLE--
  FULL JOIN[AdventureWorks2016_EXT].[Sales].[SalesTerritory]
  ON [Sales].[SalesTerritory].[TerritoryID] = [Sales].[SalesTerritoryHistory].TerritoryID-- ADDING WORK AREA --
  ORDER BY SalesYTD_Round
  --ORDER BY SALAESYTD MANAGER USAULLY MAKE THE MOST--
  ---LOOKING TO INCLUDE JOB TITLES FROM A DIFFERENT TABLE HRR [HumanResources].[Employee] INNER JOIN AND THAN MANAGERS ON A FULL JOIN NEXT BREAK --