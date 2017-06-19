

-- insert a repeated primary key value 
INSERT INTO Movie VALUES (1, 'Rocky III', 1982, 9.8, 99);

ORA-00001: unique constraint (LUIS.SYS_C006996) violated


-- This happends because the prmary key already exists "1"

-- a NULL primary key
INSERT INTO Movie VALUES (NULL, 'Rocky III', 1982, 9.8, 99);
-- this ouputs the error
ORA-01400: cannot insert NULL into ("LUIS"."MOVIE"."ID")
-- NULL cannot be used as a identifier

--violation of a CHECK constraint
INSERT INTO Movie VALUES (66, 'Rocky III', 1782, 9.8,99);

--this outputs the error
ORA-02290: check constraint (LUIS.SYS_C006995) violated
-- because 1782 cannot be added due to check. lower than set date


-- iv. a violation of an SQL datatype constraint
INSERT INTO Movie VALUES (5, 'Rocky III', '1982', 9.8, 99)
-- outputs the error
-- ORA-01722: invalid number
-- Because i tried to add a string inside an integer field


-- a negative score value
INSERT INTO Movie VALUES (37, 'Rocky III', 1982, -9.8, 99);
-- negative score works because the score is represented by a floating number and that includes negatives

--a new record with a NULL value for a foreign key value
INSERT INTO Performer VALUES (9, NULL);
-- NULL is not a primary key for the performer table

 --a foreign key value in a referencing (aka child) table that doesn’t match any key value in the referenced (aka parent) table
INSERT INTO Casting VALUES (121, 212, 'extra');
-- out put the error, because referencing non existing value
-- 02291: integrity constraint (LUIS.SYS_C007000) violated - parent key not found


-- key value in a referenced table with no related records in the referencing table
INSERT INTO Performer VALUES (99,'Rocky Balboa');
-- perfectly okay

--Delete a referenced record that is referenced by a referencing record.
DELETE FROM Movie where id = 5 ;


-- Delete a referencing record that references a referenced record.
DELETE FROM Casting  where MovieId = 22;


-- Modify the ID of a movie record that is referenced by a casting record.
UPDATE Movie SET id = 37 WHERE year = 1977;
-- outputs the error RA-02292: integrity constraint (LUIS.SYS_C006999) violated - child record found

--Note that though the text discusses it, Oracle doesn’t support ON UPDATE CASCADE. Would supporting such a feature be a good idea? See Ask Tom’s discussion of this.

-- oracle does not support UPDATE CASCADE , for the following reasons
-- its not safe to edit sever tables at once
-- data can be delete or currupt if not used properly

--The original IMDB Movie table included fields for both score and votes. Can you add a constraint (using the mechanisms we’ve studied) the requires that all movies having a non-NULL score value must also have more than 1000 votes? If so, explain what constraint you’d specify; if not, include an explanation of why it’s not possible.

-- I would just check using an IF statement or returning a boolean.

select score, case when score = 1000 THEN 'Score is not null and over a thousnd'
ELSE 'Score is either null or under 1000'

--Can you imagine when, if ever, you might want to separate a constraint from the table definition it modifies? If so, describe the circumstances; if not, explain why not.
-- yes there are some cases where contraints should be changed to fit the appropriate situation, for instance  around the globe there are different alcoholic dinking ages. Here in the united state its 21, but in other countries like mexico or germany, there drinking ages varies and are lower than 21. Thus if there was a DB with a restriction on drinking ages, then the contraints would have to be modified for those countries. 

