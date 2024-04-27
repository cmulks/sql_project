# Web Scrape Schema

# Creating games table
CREATE TABLE Games (
  GameID INT PRIMARY KEY,
  Date DATE NOT NULL,
  Matchup VARCHAR(255) NOT NULL,
  Outcome VARCHAR(255) NOT NULL
);

-- Inserting date and outcome from gameoutcomes and matchup from teamgamedata
INSERT INTO Games (GameID, Date, Matchup, Outcome)
SELECT go.Game_ID, STR_TO_DATE(go.date, '%b %e, %Y'), tgd.Matchup, go.outcome 
FROM GameOutcomes go
JOIN TeamGameData tgd ON go.Game_ID = tgd.Game_ID;

