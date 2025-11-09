-- Insert into USER table (15 entries)
INSERT INTO USER (UserID, FirstName, LastName, FullName, Email, Password, DateOfBirth, Age, PhoneNumbers, PlanType, StartDate, EndDate, SubscriptionStatus) VALUES
(1, 'John', 'Doe', 'John Doe', 'john.doe@email.com', 'password123', '1990-05-15', 35, '123-456-7890, 098-765-4321', 'Premium', '2024-01-01', '2025-01-01', 'Active'),
(2, 'Jane', 'Smith', 'Jane Smith', 'jane.smith@email.com', 'pass456', '1992-08-20', 33, '234-567-8901', 'Basic', '2024-02-01', '2025-02-01', 'Active'),
(3, 'Michael', 'Johnson', 'Michael Johnson', 'michael.j@email.com', 'pwd789', '1985-03-10', 40, '345-678-9012, 456-789-0123', 'Premium', '2024-03-01', '2025-03-01', 'Active'),
(4, 'Sarah', 'Williams', 'Sarah Williams', 'sarah.w@email.com', 'passabc', '1995-11-25', 29, '567-890-1234', 'Basic', '2024-04-01', '2025-04-01', 'Active'),
(5, 'Robert', 'Brown', 'Robert Brown', 'robert.b@email.com', 'pwddef', '1988-07-30', 37, '678-901-2345, 789-012-3456', 'Premium', '2024-05-01', '2025-05-01', 'Active'),
(6, 'Emily', 'Davis', 'Emily Davis', 'emily.d@email.com', 'passghi', '1993-09-12', 31, '890-123-4567', 'Basic', '2024-06-01', '2025-06-01', 'Active'),
(7, 'David', 'Miller', 'David Miller', 'david.m@email.com', 'pwdjkl', '1987-04-18', 38, '901-234-5678, 012-345-6789', 'Premium', '2024-07-01', '2025-07-01', 'Active'),
(8, 'Lisa', 'Wilson', 'Lisa Wilson', 'lisa.w@email.com', 'passmno', '1996-12-05', 28, '123-456-7890', 'Basic', '2024-08-01', '2025-08-01', 'Active'),
(9, 'James', 'Anderson', 'James Anderson', 'james.a@email.com', 'pwdpqr', '1989-06-22', 36, '234-567-8901, 345-678-9012', 'Premium', '2024-09-01', '2025-09-01', 'Active'),
(10, 'Mary', 'Taylor', 'Mary Taylor', 'mary.t@email.com', 'passstu', '1994-10-14', 30, '456-789-0123', 'Basic', '2024-10-01', '2025-10-01', 'Active'),
(11, 'Thomas', 'Moore', 'Thomas Moore', 'thomas.m@email.com', 'pwdvwx', '1986-02-28', 39, '567-890-1234, 678-901-2345', 'Premium', '2024-11-01', '2025-11-01', 'Active'),
(12, 'Karen', 'Jackson', 'Karen Jackson', 'karen.j@email.com', 'passyz1', '1997-01-17', 28, '789-012-3456', 'Basic', '2024-12-01', '2025-12-01', 'Active'),
(13, 'William', 'White', 'William White', 'william.w@email.com', 'pwd234', '1991-08-09', 34, '890-123-4567, 901-234-5678', 'Premium', '2025-01-01', '2026-01-01', 'Active'),
(14, 'Patricia', 'Harris', 'Patricia Harris', 'patricia.h@email.com', 'pass567', '1998-03-31', 27, '012-345-6789', 'Basic', '2025-02-01', '2026-02-01', 'Active'),
(15, 'Charles', 'Martin', 'Charles Martin', 'charles.m@email.com', 'pwd890', '1984-12-25', 40, '123-456-7890, 234-567-8901', 'Premium', '2025-03-01', '2026-03-01', 'Active');

-- Insert into SUBSCRIPTION table (15 entries)
INSERT INTO SUBSCRIPTION (SubscriptionID, PlanType, StartDate, EndDate, Cost) VALUES
(1, 'Premium', '2024-01-01', '2025-01-01', 19.99),
(2, 'Basic', '2024-02-01', '2025-02-01', 9.99),
(3, 'Premium', '2024-03-01', '2025-03-01', 19.99),
(4, 'Basic', '2024-04-01', '2025-04-01', 9.99),
(5, 'Premium', '2024-05-01', '2025-05-01', 19.99),
(6, 'Basic', '2024-06-01', '2025-06-01', 9.99),
(7, 'Premium', '2024-07-01', '2025-07-01', 19.99),
(8, 'Basic', '2024-08-01', '2025-08-01', 9.99),
(9, 'Premium', '2024-09-01', '2025-09-01', 19.99),
(10, 'Basic', '2024-10-01', '2025-10-01', 9.99),
(11, 'Premium', '2024-11-01', '2025-11-01', 19.99),
(12, 'Basic', '2024-12-01', '2025-12-01', 9.99),
(13, 'Premium', '2025-01-01', '2026-01-01', 19.99),
(14, 'Basic', '2025-02-01', '2026-02-01', 9.99),
(15, 'Premium', '2025-03-01', '2026-03-01', 19.99);

-- Insert into WATCHHISTORY table (15 entries)
INSERT INTO WATCHHISTORY (HistoryID, UserID, ContentID, WatchDate, WatchDuration) VALUES
(1, 1, 1, '2025-04-01', 120.5),
(2, 2, 2, '2025-04-02', 95.0),
(3, 3, 3, '2025-04-03', 130.0),
(4, 4, 4, '2025-04-04', 85.5),
(5, 5, 5, '2025-04-05', 115.0),
(6, 6, 6, '2025-04-06', 90.0),
(7, 7, 7, '2025-04-07', 140.0),
(8, 8, 8, '2025-04-08', 100.5),
(9, 9, 9, '2025-04-09', 125.0),
(10, 10, 10, '2025-04-10', 80.0),
(11, 11, 11, '2025-04-11', 110.5),
(12, 12, 12, '2025-04-12', 95.0),
(13, 13, 13, '2025-04-13', 135.0),
(14, 14, 14, '2025-04-14', 105.5),
(15, 15, 15, '2025-04-15', 120.0);

-- Insert into PAYMENT table (15 entries)
INSERT INTO PAYMENT (PaymentID, UserID, PaymentDate, Amount) VALUES
(1, 1, '2025-04-01', 19.99),
(2, 2, '2025-04-02', 9.99),
(3, 3, '2025-04-03', 19.99),
(4, 4, '2025-04-04', 9.99),
(5, 5, '2025-04-05', 19.99),
(6, 6, '2025-04-06', 9.99),
(7, 7, '2025-04-07', 19.99),
(8, 8, '2025-04-08', 9.99),
(9, 9, '2025-04-09', 19.99),
(10, 10, '2025-04-10', 9.99),
(11, 11, '2025-04-11', 19.99),
(12, 12, '2025-04-12', 9.99),
(13, 13, '2025-04-13', 19.99),
(14, 14, '2025-04-14', 9.99),
(15, 15, '2025-04-15', 19.99);

-- Insert into CONTENT table (15 entries, base for MOVIE and SERIES)
INSERT INTO CONTENT (ContentID, Title, Type, ReleaseDate, Duration, Rating) VALUES
(1, 'Inception', 'Movie', '2010-07-16', 148.0, 8.8),
(2, 'The Dark Knight', 'Movie', '2008-07-18', 152.0, 9.0),
(3, 'Interstellar', 'Movie', '2014-11-07', 169.0, 8.6),
(4, 'The Matrix', 'Movie', '1999-03-31', 136.0, 8.7),
(5, 'Avatar', 'Movie', '2009-12-18', 162.0, 7.9),
(6, 'Breaking Bad S1', 'Series', '2008-01-20', NULL, 9.5),
(7, 'Game of Thrones S1', 'Series', '2011-04-17', NULL, 9.2),
(8, 'Stranger Things S1', 'Series', '2016-07-15', NULL, 8.8),
(9, 'The Office S1', 'Series', '2005-03-24', NULL, 9.0),
(10, 'Friends S1', 'Series', '1994-09-22', NULL, 8.9),
(11, 'The Mandalorian S1', 'Series', '2019-11-12', NULL, 8.7),
(12, 'Westworld S1', 'Series', '2016-10-02', NULL, 8.5),
(13, 'House of Cards S1', 'Series', '2013-02-01', NULL, 8.6),
(14, 'Ozark S1', 'Series', '2017-07-21', NULL, 8.3),
(15, 'The Crown S1', 'Series', '2016-11-04', NULL, 8.7);

-- Insert into MOVIE table (5 entries from CONTENT)
INSERT INTO MOVIE (ContentID, Title, Type, ReleaseDate, Duration, Rating) VALUES
(1, 'Inception', 'Movie', '2010-07-16', 148.0, 8.8),
(2, 'The Dark Knight', 'Movie', '2008-07-18', 152.0, 9.0),
(3, 'Interstellar', 'Movie', '2014-11-07', 169.0, 8.6),
(4, 'The Matrix', 'Movie', '1999-03-31', 136.0, 8.7),
(5, 'Avatar', 'Movie', '2009-12-18', 162.0, 7.9);

-- Insert into SERIES table (10 entries from CONTENT)
INSERT INTO SERIES (ContentID, Title, Type, ReleaseDate, Rating, TotalSeasons) VALUES
(6, 'Breaking Bad S1', 'Series', '2008-01-20', 9.5, 5),
(7, 'Game of Thrones S1', 'Series', '2011-04-17', 9.2, 8),
(8, 'Stranger Things S1', 'Series', '2016-07-15', 8.8, 4),
(9, 'The Office S1', 'Series', '2005-03-24', 9.0, 9),
(10, 'Friends S1', 'Series', '1994-09-22', 8.9, 10),
(11, 'The Mandalorian S1', 'Series', '2019-11-12', 8.7, 2),
(12, 'Westworld S1', 'Series', '2016-10-02', 8.5, 4),
(13, 'House of Cards S1', 'Series', '2013-02-01', 8.6, 6),
(14, 'Ozark S1', 'Series', '2017-07-21', 8.3, 4),
(15, 'The Crown S1', 'Series', '2016-11-04', 8.7, 5);

-- Insert into REVIEW table (15 entries)
INSERT INTO REVIEW (ReviewID, UserID, ContentID, Comment, Rating, ReviewDate) VALUES
(1, 1, 1, 'Amazing movie!', 9.0, '2025-04-01'),
(2, 2, 2, 'Best Batman film', 9.5, '2025-04-02'),
(3, 3, 3, 'Mind-blowing', 8.5, '2025-04-03'),
(4, 4, 4, 'Classic sci-fi', 8.8, '2025-04-04'),
(5, 5, 5, 'Great visuals', 7.5, '2025-04-05'),
(6, 6, 6, 'Intense drama', 9.6, '2025-04-06'),
(7, 7, 7, 'Epic fantasy', 9.3, '2025-04-07'),
(8, 8, 8, 'Spooky and fun', 8.9, '2025-04-08'),
(9, 9, 9, 'Hilarious', 9.1, '2025-04-09'),
(10, 10, 10, 'Timeless comedy', 8.7, '2025-04-10'),
(11, 11, 11, 'Great Star Wars spin-off', 8.6, '2025-04-11'),
(12, 12, 12, 'Intriguing plot', 8.4, '2025-04-12'),
(13, 13, 13, 'Political thriller', 8.5, '2025-04-13'),
(14, 14, 14, 'Gripping story', 8.2, '2025-04-14'),
(15, 15, 15, 'Royal drama done well', 8.8, '2025-04-15');

-- Insert into EPISODE table (15 entries)
INSERT INTO EPISODE (EpisodeID, ContentID, EpisodeTitle, SeasonNumber, Duration) VALUES
(1, 6, 'Pilot', 1, 58.0),
(2, 6, 'Cat''s in the Bag', 1, 48.0),
(3, 6, 'And the Bag''s in the River', 1, 50.0),
(4, 7, 'Winter Is Coming', 1, 62.0),
(5, 7, 'The Kingsroad', 1, 58.0),
(6, 8, 'The Vanishing of Will Byers', 1, 49.0),
(7, 8, 'The Weirdo on Maple Street', 1, 51.0),
(8, 9, 'Pilot', 1, 23.0),
(9, 9, 'Diversity Day', 1, 22.0),
(10, 10, 'The One Where Monica Gets a Roommate', 1, 22.0),
(11, 10, 'The One with the Sonogram', 1, 23.0),
(12, 11, 'Chapter 1: The Mandalorian', 1, 38.0),
(13, 11, 'Chapter 2: The Child', 1, 36.0),
(14, 13, 'Chapter 1', 1, 55.0),
(15, 13, 'Chapter 2', 1, 54.0);

-- Insert into GENRE table (15 entries)
INSERT INTO GENRE (GenreID, GenreName) VALUES
(1, 'Action'),
(2, 'Sci-Fi'),
(3, 'Drama'),
(4, 'Fantasy'),
(5, 'Horror'),
(6, 'Comedy'),
(7, 'Adventure'),
(8, 'Thriller'),
(9, 'Crime'),
(10, 'Romance'),
(11, 'Mystery'),
(12, 'Historical'),
(13, 'Western'),
(14, 'Animation'),
(15, 'Documentary');

-- Insert into DIRECTOR table (15 entries)
INSERT INTO DIRECTOR (DirectorID, FirstName, LastName, DateOfBirth) VALUES
(1, 'Christopher', 'Nolan', '1970-07-30'),
(2, 'Quentin', 'Tarantino', '1963-03-27'),
(3, 'Steven', 'Spielberg', '1946-12-18'),
(4, 'David', 'Fincher', '1962-08-28'),
(5, 'Martin', 'Scorsese', '1942-11-17'),
(6, 'James', 'Cameron', '1954-08-16'),
(7, 'Vince', 'Gilligan', '1967-02-10'),
(8, 'David', 'Benioff', '1970-09-25'),
(9, 'Matt', 'Duffer', '1984-07-15'),
(10, 'Ross', 'Geller', '1968-10-18'),
(11, 'Greg', 'Daniels', '1963-06-11'),
(12, 'Jon', 'Favreau', '1966-10-19'),
(13, 'Jonathan', 'Nolan', '1976-06-06'),
(14, 'Beau', 'Willimon', '1977-10-26'),
(15, 'Peter', 'Morgan', '1963-04-25');

-- Insert into ACTOR table (15 entries)
INSERT INTO ACTOR (ActorID, FirstName, LastName, DateOfBirth, Nationality) VALUES
(1, 'Leonardo', 'DiCaprio', '1974-11-11', 'American'),
(2, 'Christian', 'Bale', '1974-01-30', 'British'),
(3, 'Matthew', 'McConaughey', '1969-11-04', 'American'),
(4, 'Keanu', 'Reeves', '1964-09-02', 'Canadian'),
(5, 'Sam', 'Worthington', '1976-08-02', 'Australian'),
(6, 'Bryan', 'Cranston', '1956-03-07', 'American'),
(7, 'Emilia', 'Clarke', '1986-10-23', 'British'),
(8, 'Millie', 'Bobby Brown', '2004-02-19', 'British'),
(9, 'Steve', 'Carell', '1962-08-16', 'American'),
(10, 'Jennifer', 'Aniston', '1969-02-11', 'American'),
(11, 'Pedro', 'Pascal', '1975-04-02', 'Chilean'),
(12, 'Evan', 'Rachel Wood', '1987-09-07', 'American'),
(13, 'Kevin', 'Spacey', '1959-07-26', 'American'),
(14, 'Jason', 'Bateman', '1969-01-14', 'American'),
(15, 'Claire', 'Foy', '1984-04-16', 'British');