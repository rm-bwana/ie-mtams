-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "REWARDSPROGRAM"
--

-- DROP TABLE  "REWARDSPROGRAM";
CREATE TABLE "REWARDSPROGRAM" (
  "IDREWARDSPROGRAM" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "DESCRIPTION" VARCHAR(100) DEFAULT NULL,
  "MEMBERSHIPTYPE" VARCHAR(45) DEFAULT NULL,
  "PROVIDER" VARCHAR(45) DEFAULT NULL , --COMMENT 'THE COMPANY THE PROVIDES THE REWARDS PROGRAM',
  "MEMBERSHIPNUMBER" VARCHAR(45) DEFAULT NULL,
  "TRAVELERPROFILE_IDTRAVELERPROFILE" INT NOT NULL,
  PRIMARY KEY ("IDREWARDSPROGRAM"),
  CONSTRAINT "FK_REWARDSPROGRAM_TRAVELERPROFILE1" FOREIGN KEY ("TRAVELERPROFILE_IDTRAVELERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "REWARDSPROGRAM"
--
-- ORDER BY:  "IDREWARDSPROGRAM"

-- LOCK TABLE "REWARDSPROGRAM" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02