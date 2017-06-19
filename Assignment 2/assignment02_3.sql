-- This command file loads an experimental person database.
-- The data conforms to the following assumptions:
--     * People can have 0 or many team assignments.
--     * People can have 0 or many visit dates.
--     * Teams and visits don't affect one another.

DROP TABLE PersonTeam;
DROP TABLE PersonVisit;

CREATE TABLE PersonTeam (

    personName varchar(10),
    teamName varchar(10)

);

CREATE TABLE PersonVisit (

    personName varchar(10),
    personVisit date
	
);

-- Load records for two team memberships and two visits for Shamkant.
INSERT INTO PersonTeam VALUES ('Shamkant', 'elders');
INSERT INTO PersonTeam VALUES ('Shamkant', 'executive');
INSERT INTO PersonVisit VALUES ('Shamkant', '22-FEB-2015');
INSERT INTO PersonVisit VALUES ('Shamkant', '1-MAR-2015');

-- Query a combined "view" of the data of the form View(name, team, visit).
SELECT pt.personName, pt.teamName, pv.personVisit
FROM PersonTeam pt, PersonVisit pv
WHERE pt.personName = pv.personName;


-- A) BNCF is satissfied because PersonTeam and PersonVisit do not have any functional dependiences. 

-- B) SINCE THE "view" does not have any functional dependencies it satifeis BCNF, and thier dependiences have many valid values, however the dependencies do not satisfy 4NF because they are not superkeys


-- C) Two table schema is perferable because the Team Name is dupliccated further down the road in the schema

-- D) 

CREATE TABLE ViewTable(
	personName VARCHAR(15),
	teamName VARCHAR(15),
	personVisit DATE
);

INSERT INTO ViewTable
    SELECT pt.personName, pt.teamName, pv.personVisit
    FROM PersonTeam pt, PersonVisit pv
    WHERE pt.personName = pv.personName;

SELECT * FROM ViewTable;
