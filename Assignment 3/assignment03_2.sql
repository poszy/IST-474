-- Luis Pena
-- Assingment 3_2
-- Create a view that for the CPDB “birthday czar” that includes each person’s full name, age (using TRUNC(MONTHS_BETWEEN(SYSDATE, birthdate)/12) ) and birthdate (only), and then write commands that:
CREATE MATERIALIZED VIEW birthday_czar_materialized 
        AS SELECT firstName || ' ' || lastName 
            AS name,TRUNC(MONTHS_BETWEEN(SYSDATE, birthdate)/12) 
            AS age, birthdate
        FROM Person;

--A)Retrieve the GenX people from the database (i.e., those born from 1961–1975).
    SELECT * FROM birthday_czar_materialized
        WHERE birthdate >= '01-JAN-1961'
        AND birthdate <= '31-DEC-1975';
--b) Update the Person base table to include a GenX birthdate for some person who had a NULL birthdate before. Now, try to re-run your query on the view from the previous question. Do the results of the view query change? Why or why not?
UPDATE Person
    SET birthdate = '21-OCT-1968'
    WHERE ID = 7;

-- C) Insert a new person using your new view. If this doesn’t work, explain the modifications you’d have to make to your view so that it does. Be sure that you understand what is required for a view to be updateable and what happens to the fields of the new record in the base table that are not included in the view.
insert into birthday_czar_materialized values ('Son Goku', 1211, '22-OCT-1981');


--D) Drop your new view. Does this affect your base tables in any way?
DROP MATERIALIZED VIEW birthday_czar_materialized;
-- IT DOES NOT. CHANGE ANYTHING. 

-- E) Repeat the previous exercise, but this time use a materialized view. Pay attention to what changes in the view and in the table respectively.
-- created birthday_czar_materialized origional was birthday_czar
-- NOTE: I only included the queries for the materilized view as I saw them redundant to include the regular view queries, since they are basically the same thing.
