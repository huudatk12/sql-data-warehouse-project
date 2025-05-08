/*
--------------------------------------------------------------------------------
Create database and schema
---------------------------------------------------------------------------------
Script Purpose:
    This script creates a new database named "DataWarehouse" after checking if it already exists.
	If the database exist it dropped and  recreated. Additionally, the scripts set up three schemas
	within the database: 'bronze', 'silver' and 'gold'.

	WARNING:
	 Running this script will drop entire 'DataWarehouse' database if exists.
	 All data in database will be permanently deleted. Proceed with caution
	 ensure you have proper backups before running this cript.
*/
USE master;
GO


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP  DATABASE DataWarehouse;
END;
GO

-- Create 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
	
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
