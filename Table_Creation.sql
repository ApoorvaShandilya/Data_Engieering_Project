-- Create the support_data database
CREATE DATABASE IF NOT EXISTS Gans_support_data;

-- Use the support_data database
USE Gans_support_data;

-- Create the cities table
CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(255),
    country_code VARCHAR(2)
);

-- Create the population table
CREATE TABLE population (
    city_id INT PRIMARY KEY,
    population INT,
    timestamp_population TIMESTAMP
);
CREATE TABLE Weather (
    city_id INT,
    forecast_time TIMESTAMP,
    outlook VARCHAR(255),
    temperature FLOAT,
    feels_like FLOAT,
    wind_speed FLOAT,
    rain_prob FLOAT,
    PRIMARY KEY (city_id, forecast_time)
);
CREATE TABLE Cities_airport (
    city_id INT PRIMARY KEY,
    airport_icao VARCHAR(4)
);

-- Create the flight table
CREATE TABLE flight (
    flight_id INT PRIMARY KEY,
    flight_num VARCHAR(255),
    departure_icao VARCHAR(4),
    arrival_icao VARCHAR(4),
    arrival_time TIMESTAMP
);

-- Create the airport_icao table
CREATE TABLE airport_icao (
    airport_icao VARCHAR(4) PRIMARY KEY,
    airport_name VARCHAR(255)
);