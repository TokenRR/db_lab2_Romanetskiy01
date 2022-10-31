INSERT INTO drivers(driver_id, driver_name, age, number)
VALUES
('1', 'Lewis Hamilton', 37, 44),
('2', 'Charles Leclerc', 25, 16),
('3', 'Lando Norris', 22, 4),
('4', 'Daniel Ricciardo', 33, 3),
('5', 'Max Verstappen', 25, 33),
('6', 'Valtteri Bottas', 33, 77),
('7', 'Carlos Sainz', 28, 55),
('8', 'Sergio Perez', 32, 11),
('9', 'George Russell', 24, 63),
('10', 'Esteban Ocon', 26, 31);


INSERT INTO races(race_id, date, location) 
VALUES
('1', '2022-11-20', 'Abu Dhabi Grand Prix'),
('2', '2022-11-13', 'Rio de Janeiro'),
('3', '2022-10-30', 'Mexico City'),
('4', '2022-10-23', 'California'),
('5', '2022-10-09', 'Suzuka'),
('6', '2022-10-02', 'Marina Bay'),
('7', '2022-09-11', 'Monza'),
('8', '2022-09-04', 'Zandvoort'),
('9', '2022-08-28', 'Spa'),
('10', '2022-07-31', 'Budapest');

INSERT INTO countries(country_id, country_name) 
VALUES
('1', 'UAE'),
('2', 'Brazil'),
('3', 'Mexico'),
('4', 'USA'),
('5', 'Japan'),
('6', 'Singapore'),
('7', 'Italy'),
('8', 'Netherlands'),
('9', 'Belgium'),
('10', 'Hungary');

INSERT INTO race_contest(race_contest_id, driver_id, race_id, country_id) 
VALUES
('1', '1', '1', '1'),
('2', '2', '1', '1'),
('3', '3', '1', '1'),
('4', '4', '1', '1'),
('5', '5', '1', '1'),
('6', '6', '1', '1'),
('7', '7', '1', '1'),
('8', '8', '1', '1'),
('9', '9', '1', '1'),
('10', '10', '1', '1');