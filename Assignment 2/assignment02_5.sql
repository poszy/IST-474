
-- A) Get the youngest person in the database
-- Not a rorrelated subquery
SELECT * FROM (SELECT * FROM Person ORDER BY Person.birthdate) WHERE ROWNUM = 1;


-- B) Get the Id's and full names of people who share trhe same first name.
-- 
SELECT P2.ID, P2.firstName, P2.lastName FROM Person P1, Person P2 WHERE P2.firstName = P1.firstName AND P2.ID <> P1.ID;


-- C) Get all the names of all people who are on the music team but not in the By's homegroup. 
-- this is a operations query
(SELECT Person.firstName, Person.lastName FROM Person, PersonTeam WHERE Person.ID = PersonTeam.personID AND PersonTeam.teamName = 'Music') INTERSECT (SELECT Person.firstName, Person.lastName FROM Person, Homegroup WHERE Person.homeGroupID = Homegroup.ID AND Homegroup.name <> 'Byl');
-- This is a subquery but is not correlated.

SELECT firstName, lastName FROM (
SELECT Person.ID, Person.firstName, Person.lastName 
FROM Person, Homegroup 
WHERE Person.homeGroupID = Homegroup.ID AND Homegroup.name <> 'Byl'), 
PersonTeam WHERE ID = PersonTeam.personID 
AND PersonTeam.teamName = 'Music'; )
