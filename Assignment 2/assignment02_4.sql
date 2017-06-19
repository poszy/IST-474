
-- A) Retrieve the cross products of all persons and all household records. 
SELECT * FROM Person, Household;

-- A.2) Optional chalange. will dispolay integer of quantitiy 
SELECT COUNT FROM(*) FROM Person,Household;


-- B)
SELECT * FROM Person WHERE Person.birthdate IS NOT NULL ORDER BY TO_CHAR(Person.birthdate, 'DDD');
