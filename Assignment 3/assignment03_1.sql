 
-- Luis Pena
-- Assingment 3_1
-- A) Get then ames and mandate statments of all teams along with the 
-- ID of thier "Chair " mameber. 
-- if Chair memeber does not exist , INLUDE NULL for the ID
SELECT Team.name, Team.mandate, PersonTeam.personID
FROM (Team LEFT OUTER JOIN PersonTeam
            ON Team.name = PersonTeam.teamName
            AND PersonTeam.role = 'Chair');

-- B) OPTIONAL

-- 2)
--A)Compute the average age of all the people in the database. Note you can use the following Oracle features in this query
-- MONTHS_BETWEEN(laterDate, earlierDate) computes the number of months between the earlier and later dates.
-- SYSDATE gives the current date.
-- TRUNC() rounds a number down to the nearest integer.
select TRUNC(avg(months_between(sysdate, Person.birthdate) / 12))
    AS age 
        from Person;


--A.1) This query uses an agregate function, but is it doing grouping? If so, what is the group? If not, what is it doing instead?
 -- Theoretically, yes it is a group, the group is being specified and its being averaged by dates and birthdays. 


-- b) Get the household ID and count of members of all households in Grand Rapids having at least 2 members. Order the results by decreasing size.
select HouseHold.ID, COUNT(*) as family_size from HouseHold, Person 
    where Person.householdID = HouseHold.ID

-- c)  Modify the previous query to retrieve the phone number of the household as wel

select HouseHold.ID, COUNT(*) as family_size from HouseHold, Person 
    where Person.householdID = HouseHold.ID
    group by
        HouseHold.ID, HouseHold.phoneNumber
        having COUNT(*) >=2;

