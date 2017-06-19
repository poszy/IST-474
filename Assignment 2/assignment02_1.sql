
-- Drop all the tabls.
drop table Role;
drop table HouseHold;
drop table PersonTeam;
drop table PersonHouseHold;
drop table Team;
drop table Request;
drop table Mentorship;
drop table Person;
drop table Homegroup;

create table Person (
	
	ID integer PRIMARY KEY,
	title varchar(10),
	firstName varchar(15),
	lastName varchar(15),
	membershipStatus char(1) CHECK (membershipStatus IN ('m', 'a', 'c')),
	homegroupID integer, 
	FOREIGN KEY (homegroupID) REFERENCES Homegroup(ID) ON DELETE SET NULL 

);


create table HouseHold(
	
	ID integer PRIMARY KEY,
	street varchar(35),
	city varchar(35),
	state varchar(2),
	zip char(5),
	phoneNumber char(11)

);

create table Homegroup(
	ID integer PRIMARY KEY
);
	

	
CREATE TABLE Team (
	ID integer PRIMARY KEY,
	teamName varchar(20)
);

CREATE TABLE PersonTeam (
	
	personID INTEGER,
	teamID   INTEGER,
	role varchar(20),
	
	PRIMARY KEY (personID, teamID),
	FOREIGN KEY (personID) REFERENCES Person(ID) ON DELETE CASCADE,
	FOREIGN KEY (teamID) REFERENCES Team(ID) ON DELETE CASCADE
);

CREATE TABLE Mentorship (

    mentorID integer,
	menteeID integer,
	FOREIGN KEY (mentorID) REFERENCES Person(ID) ON DELETE CASCADE,
	FOREIGN KEY (menteeID) REFERENCES Person(ID) ON DELETE CASCADE,
	PRIMARY KEY (mentorID, menteeID)

);
	
CREATE TABLE Role (
	
	ID integer PRIMARY KEY,
	name varchar(16)

);

CREATE TABLE PersonHouseHold (

    personID integer,
	houseHoldID integer,
	roleID integer,
	
	PRIMARY KEY (personID, houseHoldID),
	FOREIGN KEY (personID) REFERENCES Person(ID) ON DELETE CASCADE,
	FOREIGN KEY (houseHoldID) REFERENCES HouseHold(ID) ON DELETE CASCADE,
	FOREIGN KEY (roleID) REFERENCES Role(ID) ON DELETE CASCADE

);

CREATE TABLE Request (

    requestorID INTEGER,
	responderID INTEGER,uld also change the format of the quest
	requestDate DATE,
	text VARCHAR(256),
	response VARCHAR(256),
	
	PRIMARY KEY (requestorID, responderID),
	FOREIGN KEY (requestorID) REFERENCES Person(ID) ON DELETE SET NULL,
	FOREIGN KEY (responderID) REFERENCES Person(ID) ON DELETE SET NULL

);

-- Insert sample records


INSERT INTO Household VALUES (0,'2347 Oxford Dr. SE','Grand Rapids','MI','49506','616-243-5680');

INSERT INTO Person VALUES (0,'mr.','Keith','VanderLinden','m');
INSERT INTO Person VALUES (1,'ms.','Brenda','VanderLinden','m');
INSERT INTO PersonHouseHold VALUES (1, 2, 1);
INSERT INTO Homegroup VALUES (0);
