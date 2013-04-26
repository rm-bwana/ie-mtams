-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "QUOTES"
--

-- DROP TABLE  "QUOTES";
CREATE TABLE "QUOTES" (
  "IDQUOTES" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "NEW" VARCHAR(45) DEFAULT NULL , --COMMENT 'NEW OR AMENDED\N',
  "COSTCENTER" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDQUOTES")
);

--
-- DUMPING DATA FOR TABLE "QUOTES"
--
-- ORDER BY:  "IDQUOTES"

-- LOCK TABLE "QUOTES" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03