CREATE OR REPLACE DATABASE IPL_DB;

CREATE SCHEMA IPL_SCHEMA;

CREATE OR REPLACE TABLE IPL_SCHEMA.SEASON_STATS (
    match_id INT,
    player_name VARCHAR,
    team_name VARCHAR,
    runs INT,
    wickets INT,
    catches INT,
    match_date DATE
);

INSERT INTO IPL_SCHEMA.SEASON_STATS (match_id, player_name, team_name, runs, wickets, catches, match_date) VALUES
(1, 'Virat Kohli', 'RCB', 89, 0, 2, '2023-04-05'),
(1, 'MS Dhoni', 'CSK', 45, 0, 1, '2023-04-05'),
(1, 'Glenn Maxwell', 'RCB', 60, 1, 1, '2023-04-05'),
(1, 'Ravindra Jadeja', 'CSK', 32, 2, 1, '2023-04-05'),
(2, 'Rohit Sharma', 'MI', 123, 0, 1, '2023-04-06'),
(2, 'KL Rahul', 'LSG', 56, 0, 1, '2023-04-06'),
(2, 'Suryakumar Yadav', 'MI', 72, 0, 2, '2023-04-06'),
(2, 'Krunal Pandya', 'LSG', 40, 1, 1, '2023-04-06'),
(3, 'Shikhar Dhawan', 'PBKS', 80, 0, 2, '2023-04-07'),
(3, 'David Warner', 'DC', 65, 0, 1, '2023-04-07'),
(3, 'Kagiso Rabada', 'PBKS', 15, 3, 0, '2023-04-07'),
(3, 'Anrich Nortje', 'DC', 12, 2, 0, '2023-04-07'),
(4, 'Sanju Samson', 'RR', 92, 0, 3, '2023-04-08'),
(4, 'Jos Buttler', 'RR', 101, 0, 1, '2023-04-08'),
(4, 'Andre Russell', 'KKR', 50, 2, 2, '2023-04-08'),
(4, 'Sunil Narine', 'KKR', 22, 3, 1, '2023-04-08'),
(5, 'Faf du Plessis', 'RCB', 55, 0, 2, '2023-04-09'),
(5, 'Devdutt Padikkal', 'RR', 44, 0, 1, '2023-04-09'),
(5, 'Mohammad Siraj', 'RCB', 8, 3, 0, '2023-04-09'),
(5, 'Yuzvendra Chahal', 'RR', 15, 4, 1, '2023-04-09'),
(6, 'Rishabh Pant', 'DC', 90, 0, 2, '2023-04-10'),
(6, 'Prithvi Shaw', 'DC', 65, 0, 1, '2023-04-10'),
(6, 'Hardik Pandya', 'GT', 78, 2, 2, '2023-04-10'),
(6, 'Shubman Gill', 'GT', 110, 0, 3, '2023-04-10'),
(7, 'Quinton de Kock', 'LSG', 85, 0, 1, '2023-04-11'),
(7, 'Marcus Stoinis', 'LSG', 48, 2, 1, '2023-04-11'),
(7, 'Pat Cummins', 'KKR', 27, 3, 0, '2023-04-11'),
(7, 'Venkatesh Iyer', 'KKR', 52, 0, 2, '2023-04-11');



CREATE OR REPLACE TABLE IPL_SCHEMA.PLAYERS (
    player_id INT AUTOINCREMENT PRIMARY KEY,
    player_name VARCHAR(100),
    team_name VARCHAR(50),
    role VARCHAR(50),
    nationality VARCHAR(50),
    age INT,
    matches_played INT,
    runs_scored INT,
    wickets_taken INT,
    debut_year INT,
    salary DECIMAL(10, 2) -- Salary in million INR
);

INSERT INTO IPL_SCHEMA.PLAYERS (player_name, team_name, role, nationality, age, matches_played, runs_scored, wickets_taken, debut_year, salary) VALUES
('Virat Kohli', 'RCB', 'Batsman', 'India', 34, 227, 6624, 4, 2008, 17.00),
('MS Dhoni', 'CSK', 'Wicketkeeper-Batsman', 'India', 42, 234, 4978, 0, 2008, 12.00),
('Rohit Sharma', 'MI', 'Batsman', 'India', 36, 227, 5879, 15, 2008, 16.00),
('KL Rahul', 'LSG', 'Batsman', 'India', 31, 100, 3818, 0, 2013, 17.00),
('Shikhar Dhawan', 'PBKS', 'Batsman', 'India', 37, 206, 6244, 0, 2008, 8.25),
('David Warner', 'DC', 'Batsman', 'Australia', 37, 162, 5881, 0, 2009, 6.25),
('Jos Buttler', 'RR', 'Wicketkeeper-Batsman', 'England', 33, 90, 2831, 0, 2016, 10.00),
('Faf du Plessis', 'RCB', 'Batsman', 'South Africa', 39, 125, 3403, 0, 2012, 7.00),
('Ravindra Jadeja', 'CSK', 'All-Rounder', 'India', 34, 210, 2532, 132, 2008, 16.00),
('Hardik Pandya', 'GT', 'All-Rounder', 'India', 30, 113, 1963, 50, 2015, 15.00),
('Andre Russell', 'KKR', 'All-Rounder', 'West Indies', 35, 104, 2035, 89, 2012, 12.00),
('Sunil Narine', 'KKR', 'Bowler', 'West Indies', 35, 148, 1025, 152, 2012, 6.00),
('Pat Cummins', 'KKR', 'Bowler', 'Australia', 31, 42, 379, 45, 2014, 7.25),
('Marcus Stoinis', 'LSG', 'All-Rounder', 'Australia', 34, 67, 1070, 35, 2016, 9.20),
('Mohammad Siraj', 'RCB', 'Bowler', 'India', 29, 65, 82, 66, 2017, 7.00),
('Yuzvendra Chahal', 'RR', 'Bowler', 'India', 34, 131, 75, 175, 2013, 6.50),
('Kagiso Rabada', 'PBKS', 'Bowler', 'South Africa', 28, 63, 60, 99, 2017, 9.25),
('Anrich Nortje', 'DC', 'Bowler', 'South Africa', 30, 30, 40, 43, 2019, 6.50),
('Rishabh Pant', 'DC', 'Wicketkeeper-Batsman', 'India', 27, 98, 2839, 0, 2016, 16.00),
('Suryakumar Yadav', 'MI', 'Batsman', 'India', 33, 108, 2897, 0, 2012, 8.00),
('Quinton de Kock', 'LSG', 'Wicketkeeper-Batsman', 'South Africa', 31, 92, 2764, 0, 2014, 9.75),
('Devdutt Padikkal', 'RR', 'Batsman', 'India', 23, 46, 1260, 0, 2020, 4.50),
('Shubman Gill', 'GT', 'Batsman', 'India', 25, 89, 2676, 0, 2018, 8.00),
('Sanju Samson', 'RR', 'Wicketkeeper-Batsman', 'India', 29, 138, 3526, 0, 2013, 14.00);


CREATE OR REPLACE TABLE IPL_SCHEMA.MATCHES (
    match_id INT AUTOINCREMENT PRIMARY KEY,
    match_date DATE,
    venue VARCHAR(100),
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    winning_team VARCHAR(50),
    player_of_match VARCHAR(100),
    team1_score INT,
    team2_score INT,
    team1_wickets INT,
    team2_wickets INT,
    overs FLOAT,
    season INT
);

INSERT INTO IPL_SCHEMA.MATCHES (match_date, venue, team1, team2, winning_team, player_of_match, team1_score, team2_score, team1_wickets, team2_wickets, overs, season) VALUES
('2023-05-28', 'Narendra Modi Stadium', 'GT', 'CSK', 'CSK', 'MS Dhoni', 190, 192, 7, 3, 19.4, 2023),
('2023-05-26', 'Eden Gardens', 'RCB', 'MI', 'MI', 'Rohit Sharma', 150, 154, 8, 4, 18.3, 2023),
('2023-05-24', 'Wankhede Stadium', 'PBKS', 'RR', 'RR', 'Jos Buttler', 180, 182, 6, 5, 20.0, 2023),
('2023-05-22', 'Arun Jaitley Stadium', 'DC', 'LSG', 'LSG', 'KL Rahul', 160, 162, 9, 4, 19.1, 2023),
('2023-05-20', 'M Chinnaswamy Stadium', 'KKR', 'SRH', 'KKR', 'Andre Russell', 175, 170, 7, 8, 20.0, 2023),
('2022-05-29', 'Narendra Modi Stadium', 'GT', 'RR', 'GT', 'Hardik Pandya', 180, 160, 5, 10, 19.0, 2022),
('2022-05-27', 'Wankhede Stadium', 'LSG', 'KKR', 'KKR', 'Sunil Narine', 145, 147, 9, 5, 18.0, 2022),
('2022-05-25', 'Eden Gardens', 'MI', 'PBKS', 'MI', 'Suryakumar Yadav', 200, 190, 5, 6, 20.0, 2022),
('2022-05-23', 'Arun Jaitley Stadium', 'CSK', 'SRH', 'CSK', 'Ravindra Jadeja', 220, 210, 4, 8, 20.0, 2022),
('2022-05-21', 'M Chinnaswamy Stadium', 'RR', 'RCB', 'RR', 'Jos Buttler', 165, 167, 6, 7, 19.5, 2022),
('2021-05-30', 'Narendra Modi Stadium', 'MI', 'CSK', 'MI', 'Kieron Pollard', 180, 179, 8, 9, 20.0, 2021),
('2021-05-28', 'Eden Gardens', 'RCB', 'GT', 'RCB', 'Virat Kohli', 170, 169, 6, 8, 20.0, 2021),
('2021-05-26', 'Wankhede Stadium', 'KKR', 'PBKS', 'KKR', 'Pat Cummins', 190, 188, 7, 9, 19.4, 2021),
('2021-05-24', 'Arun Jaitley Stadium', 'RR', 'SRH', 'RR', 'Sanju Samson', 210, 208, 4, 8, 20.0, 2021),
('2021-05-22', 'M Chinnaswamy Stadium', 'CSK', 'MI', 'CSK', 'MS Dhoni', 200, 199, 6, 9, 19.5, 2021);
