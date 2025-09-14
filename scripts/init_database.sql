/* 
===========================================================================
Create Database and Schemas
===========================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse after checking if one already exists.
  If the database already exists, it is dropped and then recreated. Additionally, the script sets 
  up three schemas withint the database: 'bronze', 'silver', and 'gold'. 

WARNING:
  Running this script will drop the entire database 'DataWarehouse', 
  make sure to have proper backups before running this script.
*/
  
USE master; 
GO

  -- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP  DATABASE DataWarehouse
    END;
GO

  -- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
