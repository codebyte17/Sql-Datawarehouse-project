/*

==============================================================
CREATE DATABASE AND SCHEMAS
==============================================================
Script Purpose:
	This script creates a new database named 'DWH_SQL_PROJECT' after checking if it already exists.
	If the database exists, it is dropped and recreated.Additionally, the sxeipt sets up three Schemas within the database: Bronze, silver and gold.

Warnings:
	By runing this script your database could be lose, please be careful!.
*/


-- Switch to master
USE master;
GO
--Check if the DB exist
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWH_SQL_PROJECT')
BEGIN
	ALTER DATABASE DWH_SQL_PROJECT SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DWH_SQL_PROJECT;
END;
GO
-- Create New database
CREATE DATABASE DWH_SQL_PROJECT;
GO
-- SWITCHED TO NEW CREATED DB
USE DWH_SQL_PROJECT;
GO
-- CREATE NEW SCHEMA 
-- SCHEMA : USE TO GROUP THE SIMILAR TABLES INTO ON GROUP, ALSO USE FOR GRANTING PERMISSION TO USERS FOR A TABLES
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
