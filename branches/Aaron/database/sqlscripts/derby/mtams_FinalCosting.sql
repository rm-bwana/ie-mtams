-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "FINALCOSTING"
--

-- DROP TABLE  "FINALCOSTING";
CREATE TABLE "FINALCOSTING" (
  "IDFINALCOSTING" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "AIRFAREBUDGET" FLOAT DEFAULT NULL,
  "AIRFARECOST" FLOAT DEFAULT NULL,
  "CARRENTALBUDGET" FLOAT DEFAULT NULL,
  "CARRENTALCOST" FLOAT DEFAULT NULL,
  "ACCOMMODATIONBUDGET" FLOAT DEFAULT NULL,
  "ACCOMMODATIONCOST" FLOAT DEFAULT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  PRIMARY KEY ("IDFINALCOSTING"),
  CONSTRAINT "FK_FINALCOSTING_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "FINALCOSTING"
--
-- ORDER BY:  "IDFINALCOSTING"

-- LOCK TABLE "FINALCOSTING" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03