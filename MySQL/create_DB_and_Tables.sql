-- Создание базы данных
CREATE DATABASE music_manager;

-- Выбор базы данных для дальнейшей работы
USE music_manager;

-- Создание таблицы Group
CREATE TABLE Group_ (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    creation_year YEAR NOT NULL,
    country VARCHAR(255) NOT NULL,
    rating INT DEFAULT 0
);

-- Создание таблицы Song
CREATE TABLE Song (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    composer VARCHAR(255),
    lyricist VARCHAR(255),
    creation_year YEAR NOT NULL,
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES Group_(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Создание таблицы Tour
CREATE TABLE Tour (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES Group_(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


