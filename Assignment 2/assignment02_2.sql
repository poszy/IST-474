-- A) This relation does not have the best design in the world beause
-- it has data repudiation in some of the rows. some of these dupilcations 
-- conflict with each other. For instance MentorId and MentorName both rely on mentorID. this could be solved by normalization.

-- b) To Normalize this schema, I would have to give a mentorID to everything inside the Person table and set it as a forign key.
-- Next I would have to give the Team table uniqueID and names. that goes hand in hand with the Role table .
-- This allows a person to be on more than one team. 

-- C)

drop table AltPerson;

CREATE TABLE AltPerson (

    personId integer,
	name varchar(10),
	status char(1),
	mentorId integer,
	mentorName varchar(10),
	mentorStatus char(1),
    teamName varchar(10),
    teamRole varchar(10),
    teamTime varchar(10)

);

INSERT INTO AltPerson VALUES (0, 'Ramez', 'v', 1, 'Shamkant', 'm', 'elders', 'trainee', 'Monday');
INSERT INTO AltPerson VALUES (1, 'Shamkant', 'm', NULL, NULL, NULL, 'elders', 'chair', 'Monday');
INSERT INTO AltPerson VALUES (1, 'Shamkant', 'm', NULL, NULL, NULL, 'executive', 'protem', 'Wednesday');
INSERT INTO AltPerson VALUES (2, 'Jennifer', 'v', 3, 'Jeff', 'm', 'deacons', 'treasurer', 'Tuesday');
INSERT INTO AltPerson VALUES (3, 'Jeff', 'm', NULL, NULL, NULL, 'deacons', 'chair', 'Tuesday');



DROP TABLE Person;
DROP TABLE Team;
DROP TABLE Role;

CREATE TABLE Team(
	
	teamName VARCHAR(25) PRIMARY KEY,
	teamTime VARCHAR(25)

);

CREATE TABLE Person (

    personID INTEGER PRIMARY KEY,
	mentorID INTEGER,
	status CHAR(1),
	name VARCHAR(25),
	FOREIGN KEY (mentorID) REFERENCES Person(personID) ON DELETE SET NULL

);

CREATE TABLE Role (
	
	teamName VARCHAR(10),
	teamRole VARCHAR(10),
	personID INTEGER,
	
	PRIMARY KEY (personID, teamName),
	FOREIGN KEY (personID) REFERENCES Person(personID) ON DELETE CASCADE,
	FOREIGN KEY (teamName) REFERENCES Team(teamName) ON DELETE CASCADE
);



INSERT INTO Role 
   SELECT UNIQUE personID, teamName, teamRole FROM AltPerson;
   INSERT INTO Team SELECT UNIQUE teamName, teamTime FROM AltPerson;
   INSERT INTO Person SELECT UNIQUE personID, name, status, mentorID FROM AltPerson;

-- Display the newley created tables
SELECT * From Team;
SELECT * FROM Person;
SELECT * FROM Role;

INSERT INTO AltPerson(
-- Start Select
    SELECT P.personID, P.name, P.status, M.personID, M.name, M.status, T.teamName, R.teamRole, T.teamTime 
        FROM Person P, Person M, Team T, Role R 
        WHERE T.teamName = R.teamName AND P.personID = R.personID AND P.mentorId = M.personID
 
    UNION(
        SELECT P.personID, P.name, P.status, NULL, NULL, NULL, T.teamName, R.teamRole, T.teamTime
        FROM Person P, Team T, Role R 
        WHERE T.teamName = R.teamName AND P.personID = R.personID AND P.mentorId IS NULL)

-- End Select

);


