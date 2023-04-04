--WRITTIEN OUT QUERY TO GRAB AND JOIN TABLES START POINT IS HERE AFTER SOME TROUBLESHOOTING--
SELECT [Sales].[SalesPerson].BusinessEntityID
	  ,[Person].[Person].[FirstName]
	  ,[Person].[Person].[LastName]
      ,[Sales].[SalesTerritoryHistory].[TerritoryID]--TIEING IN SALES ID TERRITORY ID SO I CAN ADD REGION INFO JOINING ONE MORE TABLE--
	  ,[Sales].[SalesTerritory].[Name]--THIS IS COLUMN MOVING TO JOIN TABLE--
      ,[SalesQuota]
      ,[Bonus]
      ,([CommissionPct]*100) AS Commission_percent_full --PERCENT TIME 100--
	  ,ROUND([Sales].[SalesPerson].[SalesYTD],1) AS SalesYTD_Round--ADDING ROUNDING FOUNCATION FOR CLEANING NEED ALAIS--
      ,ROUND([Sales].[SalesPerson].[SalesLastYear],1) AS SalesLastYear_Round --rounding and alais--
	  ,ROUND(([Sales].[SalesPerson].[SalesYTD]-[Sales].[SalesPerson].[SalesLastYear]),1) AS Growth_YTD --GROWTH OR DECREASE SUBSTRACTING YTD TO SEE GROOWTH
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
  ---LOOKING TO INCLUDE JOB TITLES FROM A DIFFERENT TABLE HR [HumanResources].[Employee] INNER JOIN AND THAN MANAGERS ON A FULL JOIN NEXT BREAK --
  
  --WRITTIEN OUT QUERY TO GRAB AND JOIN TABLES START POINT IS HERE AFTER SOME TROUBLESHOOTING--
/*updateing 12:17AM 04/04/2023 I am currently adding Alias and cleaning
*/
SELECT [Sales].[SalesPerson].BusinessEntityID
	  ,[Person].[Person].[FirstName] AS "First Name"
	  ,[Person].[Person].[LastName] AS "Last Name"
      ,[Sales].[SalesTerritoryHistory].[TerritoryID] AS  "Territory ID" --TIEING IN SALES ID TERRITORY ID SO I CAN ADD REGION INFO JOINING ONE MORE TABLE--
	  ,[Sales].[SalesTerritory].[Name] AS "Territory Name"--THIS IS COLUMN MOVING TO JOIN TABLE--
      ,[SalesQuota] AS "Sales Quota"
      ,[Bonus]
      ,([CommissionPct]*100) AS "Commission %" --PERCENT TIME 100--
	  ,ROUND([Sales].[SalesPerson].[SalesYTD],1) AS SalesYTD_Round--ADDING ROUNDING FOUNCATION FOR CLEANING NEED ALAIS--
      ,ROUND([Sales].[SalesPerson].[SalesLastYear],1) AS SalesLastYear_Round --rounding and alais--
	  ,ROUND(([Sales].[SalesPerson].[SalesYTD]-[Sales].[SalesPerson].[SalesLastYear]),1) AS Growth_YTD --GROWTH OR DECREASE SUBSTRACTING YTD TO SEE GROOWTH
	  ,[HumanResources].[Employee].JobTitle AS "Job Title"
	  ,[Sales].[SalesTerritory].[Group] AS "Region Name"
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
  ---LOOKING TO INCLUDE JOB TITLES FROM A DIFFERENT TABLE HR [HumanResources].[Employee] INNER JOIN AND THAN MANAGERS ON A FULL JOIN NEXT BREAK --
