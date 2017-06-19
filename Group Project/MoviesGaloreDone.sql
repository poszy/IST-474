--------------------------------------------------------
--  File created - Thursday-June-15-2017
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTOR
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."ACTOR"
   (	"ACTORID" NUMBER(*,0),
	"FNAME" VARCHAR2(20 BYTE),
	"LNAME" VARCHAR2(20 BYTE),
	"GENDER" CHAR(1 BYTE),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIRECTOR
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."DIRECTOR"
   (	"DIRECTORID" NUMBER(*,0),
	"FNAME" VARCHAR2(20 BYTE),
	"LNAME" VARCHAR2(20 BYTE),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GENRES
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."GENRES"
   (	"GENREID" NUMBER(*,0),
	"GENRE" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."MOVIE"
   (	"MOVIEID" NUMBER(*,0),
	"TITLE" VARCHAR2(50 BYTE),
	"RELEASEDATE" DATE,
	"MINUTES" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MOVIE_GENRES
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."MOVIE_GENRES"
   (	"GENREID" NUMBER(*,0),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLAYLIST
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."PLAYLIST"
   (	"PLAYLISTID" NUMBER(*,0),
	"PLAYLISTNAME" VARCHAR2(20 BYTE),
	"USERID" NUMBER(*,0),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RATING
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."RATING"
   (	"MOVIEID" NUMBER(*,0),
	"USERID" NUMBER(*,0),
	"RATING" VARCHAR(20 BYTE),
	"RATINGID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."ROLE"
   (	"ROLEID" NUMBER(*,0),
	"CHARACTERNAME" VARCHAR2(20 BYTE),
	"ACTORID" NUMBER(*,0),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUBSCRIBE
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."SUBSCRIBE"
   (	"SUBSCRIBEID" NUMBER(*,0),
	"TIMESTAMP" TIMESTAMP (6),
	"USERID" NUMBER(*,0),
	"PLAYLISTID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "MOVIESGALORE"."USERS"
   (	"USERID" NUMBER(*,0),
	"USERNAME" VARCHAR2(20 BYTE),
	"FNAME" VARCHAR2(20 BYTE),
	"LNAME" VARCHAR2(20 BYTE),
	"EMAIL" VARCHAR2(30 BYTE),
	"PASSWORD" VARCHAR2(20 BYTE),
	"MOVIEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence RATING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MOVIESGALORE"."RATING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into MOVIESGALORE.ACTOR
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.DIRECTOR
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.GENRES
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.MOVIE
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.MOVIE_GENRES
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.PLAYLIST
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.RATING
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.ROLE
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.SUBSCRIBE
SET DEFINE OFF;
REM INSERTING into MOVIESGALORE.USERS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PLAYLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."PLAYLIST_PK" ON "MOVIESGALORE"."PLAYLIST" ("PLAYLISTID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."ROLE_PK" ON "MOVIESGALORE"."ROLE" ("ROLEID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RATING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."RATING_PK" ON "MOVIESGALORE"."RATING" ("RATINGID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MOVIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."MOVIE_PK" ON "MOVIESGALORE"."MOVIE" ("MOVIEID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GENRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."GENRE_PK" ON "MOVIESGALORE"."GENRES" ("GENREID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."USERS_PK" ON "MOVIESGALORE"."USERS" ("USERID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SUBSCRIBE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."SUBSCRIBE_PK" ON "MOVIESGALORE"."SUBSCRIBE" ("SUBSCRIBEID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DIRECTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."DIRECTOR_PK" ON "MOVIESGALORE"."DIRECTOR" ("DIRECTORID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ACTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIESGALORE"."ACTOR_PK" ON "MOVIESGALORE"."ACTOR" ("ACTORID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger RATING_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MOVIESGALORE"."RATING_TRG"
BEFORE INSERT ON RATING
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.RATINGID IS NULL THEN
      SELECT RATING_SEQ.NEXTVAL INTO :NEW.RATINGID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


ALTER TRIGGER "MOVIESGALORE"."RATING_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBSCRIBE
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" MODIFY ("SUBSCRIBEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" MODIFY ("PLAYLISTID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" ADD CONSTRAINT "SUBSCRIBE_PK" PRIMARY KEY ("SUBSCRIBEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENRES
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."GENRES" MODIFY ("GENREID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."GENRES" ADD CONSTRAINT "GENRE_PK" PRIMARY KEY ("GENREID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIE
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."MOVIE" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."MOVIE" ADD CONSTRAINT "MOVIE_PK" PRIMARY KEY ("MOVIEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."ROLE" MODIFY ("ROLEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."ROLE" MODIFY ("ACTORID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."ROLE" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."ROLE" ADD CONSTRAINT "ROLE_PK" PRIMARY KEY ("ROLEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."USERS" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."DIRECTOR" MODIFY ("DIRECTORID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."DIRECTOR" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."DIRECTOR" ADD CONSTRAINT "DIRECTOR_PK" PRIMARY KEY ("DIRECTORID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RATING
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."RATING" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."RATING" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."RATING" MODIFY ("RATING" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."RATING" MODIFY ("RATINGID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."RATING" ADD CONSTRAINT "RATING_CHK1" CHECK (rating in ('1', '2', '3', '4', '5')) ENABLE;
  ALTER TABLE "MOVIESGALORE"."RATING" ADD CONSTRAINT "RATING_PK" PRIMARY KEY ("RATINGID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIE_GENRES
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."MOVIE_GENRES" MODIFY ("GENREID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."MOVIE_GENRES" MODIFY ("MOVIEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTOR
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."ACTOR" MODIFY ("ACTORID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."ACTOR" ADD CONSTRAINT "ACTOR_CHK1" CHECK (gender in ('m', 'f')) ENABLE;
  ALTER TABLE "MOVIESGALORE"."ACTOR" ADD CONSTRAINT "ACTOR_PK" PRIMARY KEY ("ACTORID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MOVIESGALORE"."ACTOR" MODIFY ("MOVIEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAYLIST
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."PLAYLIST" MODIFY ("PLAYLISTID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."PLAYLIST" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."PLAYLIST" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "MOVIESGALORE"."PLAYLIST" ADD CONSTRAINT "PLAYLIST_PK" PRIMARY KEY ("PLAYLISTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACTOR
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."ACTOR" ADD CONSTRAINT "ACTOR_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."DIRECTOR" ADD CONSTRAINT "DIRECTOR_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOVIE_GENRES
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."MOVIE_GENRES" ADD CONSTRAINT "MOVIE_GENRES_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MOVIESGALORE"."MOVIE_GENRES" ADD CONSTRAINT "MOVIE_GENRES_FK2" FOREIGN KEY ("GENREID")
	  REFERENCES "MOVIESGALORE"."GENRES" ("GENREID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAYLIST
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."PLAYLIST" ADD CONSTRAINT "PLAYLIST_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "MOVIESGALORE"."USERS" ("USERID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MOVIESGALORE"."PLAYLIST" ADD CONSTRAINT "PLAYLIST_FK2" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RATING
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."RATING" ADD CONSTRAINT "RATING_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."ROLE" ADD CONSTRAINT "ROLE_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MOVIESGALORE"."ROLE" ADD CONSTRAINT "ROLE_FK2" FOREIGN KEY ("ACTORID")
	  REFERENCES "MOVIESGALORE"."ACTOR" ("ACTORID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBSCRIBE
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."SUBSCRIBE" ADD CONSTRAINT "SUBSCRIBE_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "MOVIESGALORE"."USERS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "MOVIESGALORE"."USERS" ADD CONSTRAINT "USERS_FK1" FOREIGN KEY ("MOVIEID")
	  REFERENCES "MOVIESGALORE"."MOVIE" ("MOVIEID") ENABLE;

--------------------------------------------------------
--  Begin View Queries
--------------------------------------------------------

--------------------------------------------------------
-- Will display which users is subscribed to who
-- This will work if each user has a different subscribeID.
-------------------------------------------------------
CREATE VIEW USER_SUBSCRIPTIONS AS
SELECT USERS.USERID,SUBSCRIBE.SUBSCRIBEID
  FROM SUBSCRIBE,USERS
    WHERE USERS.USERID=SUBSCRIBE.SUBSCRIBEID
    GROUP BY USERS.USERID;

--------------------------------------------------------
-- Will display which Actors are in which movie
--------------------------------------------------------
CREATE VIEW ACTOR_MOVIES AS
SELECT MOVIE.MOVIEID, MOVIE.TITLE, ACTOR.FNAME, ACTOR.LNAME
  FROM MOVIE,ACTOR
    WHERE MOVIE.MOVIEID=ACTOR.MOVIEID
    GROUP BY MOVIE.TITLE;
--------------------------------------------------------
--  End View Queries
--------------------------------------------------------

--------------------------------------------------------
--  Begin
-- at least fifteen queries, at least two of which will include GROUP BY and HAVING clauses
-- at least two of which will include join clauses
-- at least one INSERT, at least two UPDATE, and at least one DELETE.
--------------------------------------------------------

--------------------------------------------------------
--  BEGIN ASSERTIONS
--------------------------------------------------------

Create ASSERTION CHECKRATING CHECK(
  NOT EXISTS(
    SELECT * FROM RATING
    WHERE RATINGID <= 5)
);

--------------------------------------------------------
--  Makes sure USERNAME is never null
--------------------------------------------------------
Create ASSERTION CHECKUSERNAME AS CHECK(
  NOT EXISTS(
    SELECT * FROM USERS
    WHERE  USERNAME IS NULL)
);

--------------------------------------------------------
--  END ASSERTIONS
--------------------------------------------------------



--------------------------------------------------------
--  Begin Group Having Clauses
--------------------------------------------------------

--------------------------------------------------------
--  Will display all movie titles uploaded by users
--------------------------------------------------------
SELECT MOVIE.MOVIEID, COUNT(*) AS TOTAL_MOVIES FROM MOVIES, USER
  WHERE MOVIE.MOVIEID = USER.MOVIEID
  GROUP BY
      MOVIE.MOVIEID, MOVIE.TITLE
      HAVING COUNT(*) >=1;

--------------------------------------------------------
--  Will display all created playlists by users
--------------------------------------------------------
SELECT PLAYLIST.ID, COUNT(*) AS TOTAL_PLAYLIST FROM PLAYLIST, USER
  WHERE PLAYLIST.PLAYLISTID = USER.USERID
  GROUP BY
      PLAYLIST.PLAYLISTID, PLAYLIST.PLAYLISTNAME
      HAVING COUNT(*) >=1;
--------------------------------------------------------
--  End HAVING CLAUSES
--------------------------------------------------------

--------------------------------------------------------
--  Begin JOIN CLAUSES
--------------------------------------------------------

--------------------------------------------------------
-- Will display Movie Titles greater than 4.
--------------------------------------------------------
SELECT MOVIE.TITLE, RATING.USERID, RATING.RATING
  FROM(
      MOVIE LEFT OUTER JOIN RATING
      ON MOVIE.MOVIEID = RATING.MOVIEID
      AND RATING.RATINGID > 4);

--------------------------------------------------------
-- Will display all movies directed by George Lucas
--------------------------------------------------------
SELECT DIRECTOR.ID MOVIE.TITLE, MOVIE.RELEASE,
  FROM(
      DIRECTOR LEFT OUTER JOIN MOVIE
      ON DIRECTOR.MOVIEID = MOVIE.MOVIEID
      AND DIRECTOR.FNAME  = 'George'
      AND DIRECTOR.LNAME  = 'Lucas' );
--------------------------------------------------------
--  End JOIN CLAUSES
--------------------------------------------------------

--------------------------------------------------------
--  Start Queries
--------------------------------------------------------

--------------------------------------------------------
--  Start Select Queries
--------------------------------------------------------
SELECT * FROM MOVIE;
--------------------------------------------------------
-- get all subscription dates from users
-- between January 1, 2016 and December 31 1026
--------------------------------------------------------
SELECT TIMESTAMP FROM SUBSCRIBE WHERE SUBSCRIBE BETWEEN TO_DATE ('2016/01/01', 'yyyy/mm/dd') AND TO_DATE ('2016/12/31', 'yyyy/mm/dd');

--------------------------------------------------------
-- get first user who registered
--------------------------------------------------------
SELECT * FROM (SELECT * FROM USER ORDER BY USER.USERID) WHERE ROWNUM = 1;
MOVIEID
--------------------------------------------------------
-- Get Name of a director based off of ID
--------------------------------------------------------
SELECT TRIM(TRIM(FNAME || ' ' || LNAME)) FROM DIRECTOR WHERE DIRECTORID='2';

--------------------------------------------------------
-- Display all movies realeased between 2000 and 2017
--------------------------------------------------------
SELECT MOVIEID , TITLE , MINUTES
FROM MOVIE WHERE RELEASEDATE BETWEEN 2000 AND 2017;


--------------------------------------------------------
-- get count of all Actors
--------------------------------------------------------
SELECT COUNT(ACTORID) FROM ACTOR;

--------------------------------------------------------
-- Select Movies that do not have 'The Movie' present in the title.
-- EX: Dragon Ball Z: The Movie
--------------------------------------------------------
SELECT TITLE FROM MOVIE WHERE TITLE NOT LIKE 'The Movie';

--------------------------------------------------------
--  End Select Queries
--------------------------------------------------------

--------------------------------------------------------
--  Begin INSERT,UPDATE,DELETE
--------------------------------------------------------
INSERT INTO MOVIEGALOR.MOVIE (MOVIEID, MOVIETITLE, RELEASEDATE, MINUTES)
VALUES
  (1, 'Minions', 2012, 107),
  (2, 'Minions 2', 2014, 112),
  (3, 'Minions 3', 2017, 83),
  (4, 'Transformers', 2011, 200),
  (5, 'Harry Potter and The Sorcerors Stone', 2008, 110),
  (6, 'Star Wars III', 2006, 90),
  (7, 'Hackerman', 2001, 69),
  (8, 'Pirates of Sillicon Valley', 1983, 140),
  (9, 'The Social Network', 2010, 130),
  (10, 'Dragon Ball Z : The Movie', 2008, 107),
  (11, 'Captain Underpants', 2017, 88);
  (12, 'Inception', 2010, 80);

INSERT INTO MOVIESGALORE.PLAYLIST (PLAYLISTID, PLAYLISTNAME, USERID, MOVIEID)
VALUES
  (1, 'OLDPLAYLISTNAME', 1, 12),
  (2, 'OLDPLAYLISTNAME', 2, 17),
  (3, 'OLDPLAYLISTNAME', 3, 1),
  (4, 'OLDPLAYLISTNAME', 4, 7),
  (5, 'OLDPLAYLISTNAME', 5, 24),
  (6, 'OLDPLAYLISTNAME', 6, 13);

INSERT INTO MOVIESGALORE.USERS (USERID, USERNAME, FNAME, LNAME, EMAIL, PASSWORD, MOVIEID)
VALUES
  (1, 'CutieWithTheMovies', 'Marcia','Smith', 'moviecutie@gmail.com', 'password123', 1),
  (2, 'AwesomeMovieDude', 'Dude','Perfect', 'Perfect2017ThatDude@aol.com', 'password123', 2),
  (401,'Jason21','Jason','Smith','Jason.Smith@yahoo.com','123321ASa',1),
  (402,'Ryan1993','Ryan','Johnson','Ryan.Johnston@gmail.com','424123ASs21',2),
  (403,'Kitkat909','Chris','Alborg','Chris1991@hotmail.com','4123ASa',3),
  (404,'Cheeseballs100','Sarah','Jones','JonesSS@gmail.com','124124AA24',4),
  (405,'RollerToasterX','Megan','Cantalope','Cantalope434@gmail.com','123asdAA',5),
  (406,'Tacoshimi29','Edd','Alvarez','Alvarez.Edd@yahoo.com','12AGSa21',6),
  (407,'JunkieAce','Elias','Rader','RadEli@hotmail.com','AASD121@',7),
  (408,'Mousepadman96','Jenny','Kingston','Jennytoomany@gmail.com','asdfAS21',8),
  (409,'PuppyMan','Michael','Owen','OwneTheone@hotmail.com','121ASAG',9),
  (410,'CaptainBroclli','Liam','McNelson','McnelsonLL@yahoo.com','65GDF12aa',10);

INSERT INTO MOVIESGALORE.ACTOR (ACTORID, FNAME, LNAME, GENDER, MOVIEID)
VALUES
  (9, 'Jesse','Esienberg','M',   9),
  (001,'Sandra','Bullock','F',   1),
  (002,'John','Hamm','M',        2),
  (003,'Michael','Keaton','M',   3),
  (004,'Andrew','Garfield','M',  4),
  (005,'Rooney','Mara','Female', 5),
  (006,'Daniel','Radcliffe','M', 6),
  (007,'Shaia','LaBeouf','M',    7),
  (008,'Josh','Duhamel','M',     8),
  (010,'Megan','Fox','F',        10),

INSERT INTO MOVIESGALORE.GENRES (GENREID, GENRE)
VALUES
  (1, 'Comedy'),
  (2, 'Horror'),
  (202,'Action'),
  (203,'Thriller'),
  (204,'Adventure'),
  (205,'Romance'),
  (206,'Drama'),
  (207,'Animation'),
  (208,'Fantasy'),
  (209,'Fiction'),
  (210,'Documentary');

INSERT INTO MOVIESGALORE.MOVIE_GENRES (GENREID, MOVIEID)
VALUES
  (1, 1,),
  (201,1),
  (202,2),
  (203,3),
  (204,4),
  (205,5),
  (206,6),
  (207,7),
  (208,8),
  (209,9),
  (2010,10);


INSERT INTO MOVIESGALORE.ROLE(ROLEID, CHARACTERNAME, ACTORID, MOVIEID)
VALUES
  (9, 'Mark Zuckerbeg', 9, 9),
  (101, 'Scarlet Overkill' ,001 , 1),
  (102, 'Herb Overkill' , 002 , 2),
  (103, 'Madge Nelson' , 003 , 3),
  (104, 'The Queen' , 004 , 4),
  (105, 'Hagrid' , 005 , 5),
  (106, 'Uncle Dursley', 006, 6),
  (107, 'Captain Lennox', 007, 7),
  (108, 'Agent Simmons', 008, 8,),
  (109, 'Nikon', 009, 9),
  (110, 'Razor', 010, 10);

INSERT INTO MOVIESGALORE.DIRECTOR (DIRECTORID, FNAME, LNAME, MOVIEID)
VALUES
  (1,  'George','Lucas',    6),
  (301,'Iain','Sofley',     1),
  (302,'Kyle','Balda',      2),
  (303,'Sam','Raimi',       3),
  (304,'Roman','Polanski',  4),
  (305,'Ridley','Scott',    5),
  (306,'Robert','Zemeckis', 6),
  (307,'James','Cameron',   7),
  (308,'Mike','Nichols',    8),
  (309,'Francis','Copola',  9),
  (310,'Mel','Brooks',     10);

INSERT INTO MOVIESGALORE.RATING (MOVIEID, USERID, RATING, RATINGID)
VALUES
  (1, 1, 'Excellent', 5),
  (1, 401,'Very Good', 4),
  (2, 402,'Excellent',5),
  (3, 403,'Good',3),
  (4, 404,'Poor',1),
  (5, 405,'Very Good',4),
  (6, 406,'Very Good',4),
  (7, 407,'Excellent',5),
  (8, 408,'Good',3),
  (9, 409,'Poor',1),
  (10,410,'Okay', 2);

INSERT INTO MOVIESGALORE.SUBSCRIBE (SUBSCRIBEID, TIMSTAMP, USERID, RATINGID)
VALUES
(801,'2009-05-18 15:16:51', 401,5),
(802,'2009-05-18 14:14:41', 402,3),
(803,'2009-05-18 23:18:11', 403,3),
(804,'2009-05-18 15:54:45', 404,4),
(805,'2009-05-18 16:47:16', 405,4),
(806,'2009-05-18 14:23:12', 406,5),
(807,'2009-05-18 18:11:16', 407,5),
(808,'2009-05-18 12:25:22', 408,1),
(809,'2009-05-18 20:16:25', 409,4),
(810,'2009-05-18 09:11:27', 410,2);




UPDATE MOVIESGALORE.PLAYLISTNAME
  SET  = 'NEWPLAYLISTNAME' WHERE PLAYLISTNAME = 'OLDPLAYLISTNAME';

UPDATE MOVIESGALORE.USERS
  SET  = 'NEWUSERNAME' WHERE ID = 25;

DELETE FROM MOVIESGALORE.MOVIE
  WHERE TITLE="Inception" ;

--------------------------------------------------------
--  End INSERT,UPDATE,DELETE
--------------------------------------------------------

--------------------------------------------------------
--  End  Queries
--------------------------------------------------------
