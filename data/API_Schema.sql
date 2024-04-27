# API SCHEMA

# Creating players table, taking into account unique first and last names
CREATE TABLE Players (
  PlayerID INT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  CONSTRAINT unique_name UNIQUE (FirstName, LastName)  -- Unique constraint for name combination
);

# Insert data into the Players table, ignoring duplicate names
INSERT IGNORE INTO Players (PlayerID, FirstName, LastName)
SELECT id, FirstName, LastName
FROM PlayerData
WHERE (FirstName, LastName) NOT IN (  -- Check against existing names in Players
    SELECT FirstName, LastName FROM Players
);


# Creating playergamestats table
CREATE TABLE PlayerGameStats (
  PlayerID INT,
  GameID INT,
  Points BIGINT,
  Minutes TEXT,
  FGM BIGINT,
  FGA BIGINT,
  FGP TEXT,
  FTM BIGINT,
  FTA BIGINT,
  FTP TEXT,
  TPM BIGINT,
  TPA BIGINT,
  TPP TEXT,
  Rebounds BIGINT,
  Assists BIGINT,
  Steals BIGINT,
  Turnovers BIGINT,
  Blocks BIGINT,
  PlusMinus TEXT,
  FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
  FOREIGN KEY (GameID) REFERENCES Games(GameID),
  PRIMARY KEY (PlayerID, GameID)  -- Composite Primary Key
);

# Inserting Data into tables
INSERT INTO PlayerGameStats (PlayerID, GameID, Points, Minutes, FGM, FGA, FGP, FTM, FTA, FTP, TPM, TPA, TPP, Rebounds, Assists, Steals, Turnovers, Blocks, PlusMinus)
SELECT pd.id, g.GameID, pd.points, pd.min, pd.fgm, pd.fga, pd.fgp, pd.ftm, pd.fta, pd.ftp, pd.tpm, pd.tpa, pd.tpp, pd.totReb, pd.assists, pd.steals, pd.turnovers, pd.blocks, pd.plusMinus
FROM PlayerData pd
JOIN Games g ON pd.game = g.GameID;

