-- Complete Database Setup for Streaming Platform Management System
-- Run this script to create the database and all required tables

-- Create the database
CREATE DATABASE IF NOT EXISTS streaming_platform;
USE streaming_platform;

-- Create USER table
CREATE TABLE USER (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    FullName VARCHAR(100), -- Composite attribute (can be derived from FirstName and LastName)
    Email VARCHAR(100),
    Password VARCHAR(100),
    DateOfBirth DATE,
    Age INT, -- Derived attribute (calculated from DateOfBirth)
    PhoneNumbers TEXT, -- Multivalued attribute (e.g., comma-separated or JSON for multiple phone numbers)
    PlanType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    SubscriptionStatus VARCHAR(20)
);

-- Create SUBSCRIPTION table
CREATE TABLE SUBSCRIPTION (
    SubscriptionID INT PRIMARY KEY,
    PlanType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Cost DECIMAL(10, 2)
);

-- Create WATCHHISTORY table
CREATE TABLE WATCHHISTORY (
    HistoryID INT PRIMARY KEY,
    UserID INT,
    ContentID INT,
    WatchDate DATE,
    WatchDuration DECIMAL(10, 2)
);

-- Create PAYMENT table
CREATE TABLE PAYMENT (
    PaymentID INT PRIMARY KEY,
    UserID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2)
);

-- Create CONTENT table
CREATE TABLE CONTENT (
    ContentID INT PRIMARY KEY,
    Title VARCHAR(100),
    Type VARCHAR(50),
    ReleaseDate DATE,
    Duration DECIMAL(10, 2),
    Rating DECIMAL(3, 1)
);

-- Create MOVIE table (IsA relationship with CONTENT)
CREATE TABLE MOVIE (
    ContentID INT PRIMARY KEY,
    Title VARCHAR(100),
    Type VARCHAR(50),
    ReleaseDate DATE,
    Duration DECIMAL(10, 2),
    Rating DECIMAL(3, 1)
);

-- Create SERIES table (IsA relationship with CONTENT)
CREATE TABLE SERIES (
    ContentID INT PRIMARY KEY,
    Title VARCHAR(100),
    Type VARCHAR(50),
    ReleaseDate DATE,
    Rating DECIMAL(3, 1),
    TotalSeasons INT
);

-- Create REVIEW table
CREATE TABLE REVIEW (
    ReviewID INT PRIMARY KEY,
    UserID INT,
    ContentID INT,
    Comment TEXT,
    Rating DECIMAL(3, 1),
    ReviewDate DATE
);

-- Create EPISODE table
CREATE TABLE EPISODE (
    EpisodeID INT PRIMARY KEY,
    ContentID INT,
    EpisodeTitle VARCHAR(100),
    SeasonNumber INT,
    Duration DECIMAL(10, 2)
);

-- Create GENRE table
CREATE TABLE GENRE (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

-- Create DIRECTOR table
CREATE TABLE DIRECTOR (
    DirectorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE
);

-- Create ACTOR table
CREATE TABLE ACTOR (
    ActorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Nationality VARCHAR(50)
);

-- Add foreign key constraints for better data integrity
ALTER TABLE WATCHHISTORY ADD FOREIGN KEY (UserID) REFERENCES USER(UserID);
ALTER TABLE WATCHHISTORY ADD FOREIGN KEY (ContentID) REFERENCES CONTENT(ContentID);
ALTER TABLE PAYMENT ADD FOREIGN KEY (UserID) REFERENCES USER(UserID);
ALTER TABLE REVIEW ADD FOREIGN KEY (UserID) REFERENCES USER(UserID);
ALTER TABLE REVIEW ADD FOREIGN KEY (ContentID) REFERENCES CONTENT(ContentID);
ALTER TABLE EPISODE ADD FOREIGN KEY (ContentID) REFERENCES SERIES(ContentID);
ALTER TABLE MOVIE ADD FOREIGN KEY (ContentID) REFERENCES CONTENT(ContentID);
ALTER TABLE SERIES ADD FOREIGN KEY (ContentID) REFERENCES CONTENT(ContentID);

-- Success message
SELECT 'Database and tables created successfully!' as Status;