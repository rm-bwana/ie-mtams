/*
NAVICAT MYSQL DATA TRANSFER

SOURCE SERVER         : MUJUU
SOURCE SERVER VERSION : 50051
SOURCE HOST           : LOCALHOST:3306
SOURCE DATABASE       : WORLDDB

TARGET SERVER TYPE    : MYSQL
TARGET SERVER VERSION : 50051
FILE ENCODING         : 65001

DATE: 2009-10-22 12:34:00
*/

--SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- TABLE STRUCTURE FOR "CITIES"
-- ----------------------------
--DROP TABLE IF EXISTS "CITIES";
CREATE TABLE "CITIES" (
  "ID" INT NOT NULL,
  "COUNTRY" VARCHAR(2) NOT NULL,
  "REGION" VARCHAR(3) NOT NULL,
  "URL" VARCHAR(50) NOT NULL,
  "NAME" VARCHAR(50) NOT NULL,
  "LATITUDE" FLOAT NOT NULL,
  "LONGITUDE" FLOAT NOT NULL,
  PRIMARY KEY  ("ID")
--  UNIQUE KEY "COUNTRY" USING BTREE ("COUNTRY","NAME","REGION")
); 


-- ----------------------------
-- TABLE STRUCTURE FOR "COUNTRIES"
-- ----------------------------
--DROP TABLE IF EXISTS "COUNTRIES";
CREATE TABLE "COUNTRIES" (
  "CODE2" VARCHAR(2) NOT NULL,
  "CODE3" VARCHAR(3) NOT NULL,
  "URL" VARCHAR(50) NOT NULL,
  "NAME" VARCHAR(50) NOT NULL,
  "LATITUDE" FLOAT NOT NULL,
  "LONGITUDE" FLOAT NOT NULL,
  "REGIONS" INT NOT NULL,
  PRIMARY KEY  ("CODE2")
--  UNIQUE KEY "NAME" USING BTREE ("NAME"),
--  KEY "URL" ("URL")
); 


-- ----------------------------
-- TABLE STRUCTURE FOR "REGIONS"
-- ----------------------------
--DROP TABLE IF EXISTS "REGIONS";
CREATE TABLE "REGIONS" (
--  "ID" INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
--  "ID" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ID" INT NOT NULL,
  "COUNTRY" VARCHAR(2) NOT NULL,
  "CODE"VARCHAR(3) NOT NULL,
  "URL" VARCHAR(50) NOT NULL,
  "NAME" VARCHAR(50) NOT NULL,
  "LATITUDE" FLOAT NOT NULL,
  "LONGITUDE" FLOAT NOT NULL,
  "CITIES" INT NOT NULL,
  PRIMARY KEY  ("ID")
--  UNIQUE KEY "COUNTRYCODE" ("COUNTRY","CODE"),
--  UNIQUE KEY "COUNTRYCODE_2" ("COUNTRY","NAME")
);

-- ----------------------------
-- TABLE STRUCTURE FOR "CURRENCY"
-- ----------------------------
--DROP TABLE IF EXISTS "CURRENCY";
CREATE TABLE "CURRENCY" (
  "IDCURRENCY" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "COUNTRYNAME" VARCHAR(70) NOT NULL,
  "CURRENCYNAME" VARCHAR(50) NOT NULL,
  "CODE2"VARCHAR(2) NOT NULL,
  "CODE3"VARCHAR(3) NOT NULL,
  "CURRENCYCODE3"VARCHAR(3) NOT NULL,
  PRIMARY KEY  ("IDCURRENCY")
);

