-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TRAVELDOCUMENT"
--

-- DROP TABLE  "TRAVELDOCUMENT";
CREATE TABLE "TRAVELDOCUMENT" (
  "IDTRAVELDOCUMENTS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "PASSPORTNUMBER" VARCHAR(12) DEFAULT NULL,
  "COUNTRY" VARCHAR(45) DEFAULT NULL,
  "DATEOFISSUE" TIMESTAMP  DEFAULT NULL,
  "EXPIRYDATE" TIMESTAMP  DEFAULT NULL,
  "VALIDVISA" VARCHAR(45) DEFAULT NULL,
  "TRAVLERPROFILE_IDTRAVLERPROFILE" INT NOT NULL,
  PRIMARY KEY ("IDTRAVELDOCUMENTS"),
  CONSTRAINT "FK_TRAVELDOCUMENTS_TRAVELERPROFILE1" FOREIGN KEY ("TRAVLERPROFILE_IDTRAVLERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "TRAVELDOCUMENT"
--
-- ORDER BY:  "IDTRAVELDOCUMENTS"

-- LOCK TABLE "TRAVELDOCUMENT" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
