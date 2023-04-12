CREATE DATABASE metadata;

USE metadata;

CREATE TABLE Songs (
	song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title varchar(20) NOT NULL,
    artist_id varchar(20) NOT NULL,
    duration time,
    genre_id varchar(20) NOT NULL,
    explicit Boolean,
    cloudLink varchar(255),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Artists (
	artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    firstName varchar(20) NOT NULL,
    lastName varchar(20),
    DOB Date
);

CREATE TABLE Users (
	user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email varchar(20) UNIQUE NOT NULL,
    firstName varchar(20) NOT NULL,
    lastName varchar(20) NOT NULL,
    password varchar(20) NOT NULL
);

CREATE TABLE Genres (
	genre_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name varchar(20) NOT NULL
);

CREATE TABLE Playlists (
	playlist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userID Int NOT NULL,
    songID Int NOT NULL,
    FOREIGN KEY (userID) REFERENCES Users(user_id),
    FOREIGN KEY (songID) REFERENCES Songs(song_id)
);

CREATE TABLE UserSongs (
    userID Int NOT NULL,
    songID Int NOT NULL,
    favorite Boolean NOT NULL,
    FOREIGN KEY (userID) REFERENCES Users(user_id),
    FOREIGN KEY (songID) REFERENCES Songs(song_id)
);


CREATE TABLE PlaylistSongs (
	playlist_id INT PRIMARY KEY,
    songID Int,
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (songID) REFERENCES Songs(song_id)
);
