IF DB_ID('PracticeDB') IS NULL
    CREATE DATABASE PracticeDB;
GO

USE PracticeDB;
GO

IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE dbo.Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    JobType VARCHAR(100) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);
GO

INSERT INTO dbo.Users (Username, Email, JobType)
VALUES
  ('eric', 'eric@example.com', 'Software Engineer'),
  ('alice', 'alice@example.com', 'Secretary'),
  ('bob', 'bob@example.com', 'Financial Advisor');
GO