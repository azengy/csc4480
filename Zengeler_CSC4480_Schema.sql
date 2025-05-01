DROP TABLE Stats;
DROP TABLE Players;
DROP TABLE Teams;
DROP TABLE Seasons;

CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TName VARCHAR(25) NOT NULL,
    City VARCHAR(25) NOT NULL
);

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    FName VARCHAR(25) NOT NULL,
    LName VARCHAR(25) NOT NULL,
    Position VARCHAR(20) NOT NULL,
    DOB DATE,
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Seasons(
    SeasonID INT PRIMARY KEY,
    Year INT NOT NULL
);

CREATE TABLE Stats(
    PlayerID INT,
    SeasonID INT,
    Hits INT DEFAULT 0,
    Homers INT DEFAULT 0,
    RBIs INT DEFAULT 0,
    Walks INT DEFAULT 0,
    PRIMARY KEY (PlayerID, SeasonID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (SeasonID) REFERENCES Seasons(SeasonID)
);
