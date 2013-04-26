-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "PERMISSION"
--

-- DROP TABLE  "PERMISSION";
CREATE TABLE "PERMISSION" (
  "IDPERMISSIONS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "PERMISSION" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  "CREATEPERM" SMALLINT DEFAULT 1,
  "DELETEPERM" SMALLINT DEFAULT 1,
  "UPDATEPERM" SMALLINT DEFAULT 1,
  "READPERM" SMALLINT DEFAULT 0,
  "GRANTPERM" SMALLINT DEFAULT 1,
  "TASKS_IDTASKS" INT NOT NULL,
  "ROLES_IDROLES" INT NOT NULL,
  PRIMARY KEY ("IDPERMISSIONS"),
  CONSTRAINT "FK_PERMISSIONS_TASKS1" FOREIGN KEY ("TASKS_IDTASKS") REFERENCES "TASK" ("IDTASKS") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_PERMISSIONS_ROLES1" FOREIGN KEY ("ROLES_IDROLES") REFERENCES "ROLE" ("IDROLES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "PERMISSION"
--
-- ORDER BY:  "IDPERMISSIONS"

-- LOCK TABLE "PERMISSION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
