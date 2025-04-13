-- This file contains SQL commands to initialize the bookstore database.

-- Create the bookstore database
CREATE DATABASE IF NOT EXISTS bookstore_db;

-- Use the bookstore database
USE bookstore_db;

-- Execute the scripts to create tables and constraints
SOURCE ../src/schema/tables.sql;
SOURCE ../src/schema/constraints.sql;