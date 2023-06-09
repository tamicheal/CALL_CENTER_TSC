/*
   Monday, April 3, 20235:03:12 PM
   User: 
   Server: SEEERT\SQLEXPRESS
   Database: AdventureWorks2016_EXT
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE HumanResources.Employee SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE Sales.SalesPersonQuotaHistory ADD CONSTRAINT
	FK_SalesPersonQuotaHistory_Employee FOREIGN KEY
	(
	BusinessEntityID
	) REFERENCES HumanResources.Employee
	(
	BusinessEntityID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Sales.SalesPersonQuotaHistory SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
