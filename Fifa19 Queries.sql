/*Who are the top 10 players under 20 years*/
SELECT Player_Name, Player_Age, Player_Position, Overall, Potential FROM Player_Data
WHERE Player_Age <= 20
ORDER BY Potential DESC, Overall DESC
LIMIT 10;

/*Short List of strikers with an overall above 80, Finishing above 80*/
SELECT Player_Name, Player_Position, Overall, Finishing FROM Player_Data
WHERE Finishing >=80 
AND Overall >=80 
AND (Player_Position LIKE 'ST'
OR Player_Position LIKE 'RF'
OR Player_Position LIKE 'LF'
OR Player_Position LIKE 'RS'
OR Player_Position LIKE 'LS'
OR Player_Position LIKE 'RW'
OR Player_Position LIKE 'LW')
ORDER BY Overall DESC, Finishing DESC;

/*Your team needs a defender that can also score goals from set pieces*/
SELECT Player_Name, Player_Position, Overall, HeadingAccuracy, Height FROM Player_Data
WHERE HeadingAccuracy>=80
AND Player_Position LIKE '%CB'
AND Height > '6\'0'
ORDER BY Overall DESC, Height DESC;

/*What are the contries with the most players with overall higher than 80*/
SELECT Nationality, COUNT(Nationality) FROM Player_Data
WHERE Overall>=80
GROUP BY Nationality
ORDER BY COUNT(Nationality) DESC
LIMIT 10;

/*What are the contries with the highest number of promissing young players?*/
SELECT Nationality, COUNT(Nationality) FROM Player_Data
WHERE Potential>=80
GROUP BY Nationality
ORDER BY COUNT(Nationality) DESC
LIMIT 10;