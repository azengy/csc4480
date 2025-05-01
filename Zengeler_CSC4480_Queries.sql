SELECT PlayerID, FName, LName, Position
FROM Players
WHERE Position = 'Catcher'
ORDER BY LName;

INSERT INTO Players (PlayerID, FName, LName, Position, DOB, TeamID) VALUES (131, 'Korey', 'Lee', 'Catcher', TO_DATE('1998-07-25', 'YYYY-MM-DD'), 007);

SELECT PlayerID, FName, LName, Position
FROM Players
WHERE Position = 'Catcher'
ORDER BY LName;

SELECT SeasonID, Year
FROM Seasons
ORDER BY Year DESC;

SELECT PlayerID, FName, LName, DOB
FROM Players
WHERE EXTRACT(MONTH FROM DOB) = 10
ORDER BY EXTRACT(DAY FROM DOB);

SELECT p.PlayerID, p.FName, p.LName, s.SeasonID, s.Walks
FROM Players p
JOIN Stats s ON p.PlayerID = s.PlayerID
WHERE s.Walks < 10
ORDER BY s.Walks DESC;

SELECT P.PlayerID, P.FName, P.LName, SUM(s.Homers) AS Total
FROM Players p
JOIN Stats s on p.PlayerID = s.PlayerID
GROUP BY p.playerID, p.FName, p.LName
HAVING SUM(s.Homers) > 40
ORDER BY Total DESC;

DELETE FROM Stats
Where PlayerID = 106;

SELECT P.PlayerID, P.FName, P.LName, SUM(s.Homers) AS Total
FROM Players p
JOIN Stats s on p.PlayerID = s.PlayerID
GROUP BY p.playerID, p.FName, p.LName
HAVING SUM(s.Homers) > 40
ORDER BY Total DESC;