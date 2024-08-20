IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'school')
BEGIN
    CREATE DATABASE school;
END

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'school')
BEGIN
    DROP DATABASE school;
END
