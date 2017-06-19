-- A) Produce an appropriate phone-book entry for tradinoal  family entries 

SELECT (H.lastName || ', ' || H.firstName || ' and ' || W.firstName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
    FROM Person H, Person W, HouseHold
    WHERE H.householdRole = 'husband' AND W.householdRole = 'wife' AND H.householdID = HouseHold.ID AND W.householdID = HouseHold.ID;

--B Extend your solution to handle families in which both spouses keep thier oen names 

(SELECT (H.lastName || ', ' || H.firstName || ' and ' || W.firstName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
    FROM Person H, Person W, HouseHold
    WHERE H.householdRole = 'husband' AND W.householdRole = 'wife' AND H.householdID = HouseHold.ID AND W.householdID = HouseHold.ID AND H.lastName = W.lastName)   
    
    UNION(SELECT (H.lastName || ', ' || H.firstName || ' and ' || W.firstName || ' ' || W.lastName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
        FROM Person H, Person W, HouseHold
        WHERE H.householdRole = 'husband' AND W.householdRole = 'wife' AND H.householdID = HouseHold.ID AND W.householdID = HouseHold.ID AND H.lastName <> W.lastName);

c) -- Finally extend your soultion to include sing-dule families 

SELECT * 
FROM ((SELECT (H.lastName || ', ' || H.firstName || ' and ' || W.firstName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
    FROM Person H, Person W, HouseHold
    WHERE H.householdRole = 'husband' AND W.householdRole = 'wife' AND H.householdID = HouseHold.ID AND W.householdID = HouseHold.ID AND H.lastName = W.lastName)

    UNION(SELECT (H.lastName || ', ' || H.firstName || ' and ' || W.firstName || ' ' || W.lastName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
        FROM Person H, Person W, HouseHold
        WHERE H.householdRole = 'husband' AND W.householdRole = 'wife' AND H.householdID = HouseHold.ID AND W.householdID = HouseHold.ID AND H.lastName <> W.lastName)

UNION(SELECT (S.lastName || ', ' || S.firstName || ' - ' || Household.phoneNumber || ' - ' || Household.street ) AS phoneBookEntry 
    FROM Person S, HouseHold
    WHERE S.householdRole = 'single' AND S.householdID = HouseHold.ID))
    ORDER BY phoneBookEntry;
