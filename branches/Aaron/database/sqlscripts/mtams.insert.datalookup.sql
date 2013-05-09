-- The top section of inserts are conisered safe as they do not have any foreign key 
-- constraints
-- The section of inserts OTHER is unsafe and left commented
-- You can uses these inserts as templates for creating your own insert statements.
-- There is a simple application insert script to do just enough initialisation
-- of the system for most simple operations to work. It is also incomplete
-- mtams.insert.app.sql

--role inserts
--pulled down from netbeans so not optimal

INSERT INTO MTAMS."ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (11, 'Applicant', DEFAULT);
INSERT INTO MTAMS."ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (12, 'Authorizer', DEFAULT);
INSERT INTO MTAMS."ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (21, 'Admin', DEFAULT);
INSERT INTO MTAMS."ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (22, 'SuperAdmin', DEFAULT);
INSERT INTO MTAMS."ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (99, 'Deactivated', DEFAULT);



-- simple quick inserts
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('s' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Mr' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Mrs' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Miss' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Dr' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Phd' /*not nullable*/);
INSERT INTO "MTAMS"."TITLE" (TITLE) VALUES ('Sir' /*not nullable*/);

-- sample city look up for code testing
INSERT INTO "MTAMS"."COUNTRYLOOKUP" (IDCOUNTRYLOOKUP,CONTINENT,COUNTRY) VALUES (1 /*not nullable*/,'Africa','South Africa');
INSERT INTO "MTAMS"."COUNTRYLOOKUP" (IDCOUNTRYLOOKUP,CONTINENT,COUNTRY) VALUES (2 /*not nullable*/,'Africa','Swaziland');
INSERT INTO "MTAMS"."COUNTRYLOOKUP" (IDCOUNTRYLOOKUP,CONTINENT,COUNTRY) VALUES (3 /*not nullable*/,'Europe','France');
INSERT INTO "MTAMS"."COUNTRYLOOKUP" (IDCOUNTRYLOOKUP,CONTINENT,COUNTRY) VALUES (4 /*not nullable*/,'Europe','England');

INSERT INTO "MTAMS"."CITYLOOKUP" (IDCITYLOOKUP,CITY,COUNTRYLOOKUP_IDCOUNTRYLOOKUP) VALUES (1 /*not nullable*/,'Pretoria',1 /*not nullable*/);
INSERT INTO "MTAMS"."CITYLOOKUP" (IDCITYLOOKUP,CITY,COUNTRYLOOKUP_IDCOUNTRYLOOKUP) VALUES (2 /*not nullable*/,'Lobamba',2 /*not nullable*/);
INSERT INTO "MTAMS"."CITYLOOKUP" (IDCITYLOOKUP,CITY,COUNTRYLOOKUP_IDCOUNTRYLOOKUP) VALUES (3 /*not nullable*/,'Paris',3 /*not nullable*/);
INSERT INTO "MTAMS"."CITYLOOKUP" (IDCITYLOOKUP,CITY,COUNTRYLOOKUP_IDCOUNTRYLOOKUP) VALUES (4 /*not nullable*/,'London',4 /*not nullable*/);

INSERT INTO "MTAMS"."DEPARTMENTLOOKUP" (DEPARTMENT) VALUES ('school of Information Technology' /*not nullable*/);
INSERT INTO "MTAMS"."DEPARTMENTLOOKUP" (DEPARTMENT) VALUES ('school of Arts' /*not nullable*/);
INSERT INTO "MTAMS"."DEPARTMENTLOOKUP" (DEPARTMENT) VALUES ('Finance' /*not nullable*/);
INSERT INTO "MTAMS"."DEPARTMENTLOOKUP" (DEPARTMENT) VALUES ('Administration' /*not nullable*/);

INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Annual Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Maternity Leave - Paid' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Paternity Leave - Paid' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Compassionate Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Sick Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Injury on Duty Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Conference Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Consultancy Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Research Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - full pay' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - half pay' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - double pay' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Leave without pay' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Adoption Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Family Leave' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Outside Studies Program International' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Outside Studies Program Domestic' /*not nullable*/);
INSERT INTO "MTAMS"."LEAVELOOKUP" (LEAVETYPE) VALUES ('Other' /*not nullable*/);

-- *********************************************************************
-- 		OTHER
-- *********************************************************************

--INSERT INTO "MTAMS"."TASK" (IDTASKS,TASK,DESCRIPTION) VALUES (1 /*not nullable*/,'s','s');
--
--INSERT INTO "MTAMS"."PERMISSION" (PERMISSION,DISCRITPTION,CREATEPERM,DELETEPERM,UPDATEPERM,READPERM,GRANTPERM,TASKS_IDTASKS,ROLES_IDROLES) 
--	VALUES ('s','s',0,0,0,0,0,0 /*not nullable*/,0 /*not nullable*/);
--
--
--INSERT INTO "MTAMS"."APPROVAL" (FROMSECTION,SECTIONID,SECTIONAPPROVED,NOTES,DATE,APPLICATION_IDAPPLICATION,ACCOUNT_IDACCOUNT) 
--	VALUES ('s',0,0,'s',{ts '2013-05-08 12:20:42.839000'},0 /*not nullable*/,0 /*not nullable*/);
--
--
--INSERT INTO "MTAMS"."ATTACHEMENT" (DESCRIPTION,DOCUMENTLOCATION,CONFERENCE_IDCONFERENCE,ITINERARY_IDITINERARY,APPROVAL_IDAPPROVAL,APPLICATION_IDAPPLICATION,TRAVEL_IDTRAVEL,FINALCOSTING_IDFINALCOSTING,CARQUOTES_IDCARQUOTES,QUOTES_IDQUOTES,ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES,FLIGHTQUOTES_IDFLIGHTQUOTES,TRAVELDOCUMENT_IDTRAVELDOCUMENTS,TRAVELERPROFILE_IDTRAVELERPROFILE,REWARDSPROGRAM_IDREWARDSPROGRAM,FOREXORDER_IDFOREXORDER,MOTIVATION_IDMOTIVATION) 
--	VALUES ('s','s',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
--
--INSERT INTO "MTAMS"."ACCOMODATIONQUOTES" (DATECHECKIN,DATECHECKOUT,COUNTRY,CITY,DISCRITPTION,ACCOMODATIONPROVIDER,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:20:30.363000'},{ts '2013-05-08 12:20:30.363000'},'s','s','s','s','s','s',0 /*not nullable*/);
--
--INSERT INTO "MTAMS"."CARQUOTES" (DATECOLLECT,DATERETURN,PROVIDER,DISCRITPTION,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:21:02.184000'},{ts '2013-05-08 12:21:02.184000'},'s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "MTAMS"."FLIGHTQUOTES" (FLIGHTNUMBER,FLIGHTFROM,FLIGHTTO,DATEDEPARTURE,DATEARRIVAL,QUOTESOURCEDESCRIPTION,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ('s','s','s',{ts '2013-05-08 12:24:17.284000'},{ts '2013-05-08 12:24:17.284000'},'s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "MTAMS"."ITINERARY" (DATE,DATEFROM,DATETO,LEAVETYPE,LEAVEDISCRITPTION,TRAVELDAY,TRAVEL_IDTRAVEL,DESTINATION) 
--	VALUES ({ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},'s','s','s',0 /*not nullable*/,'s');
--
--
--INSERT INTO "MTAMS"."REWARDSPROGRAM" (DESCRIPTION,MEMBERSHIPTYPE,PROVIDER,MEMBERSHIPNUMBER,TRAVELERPROFILE_IDTRAVELERPROFILE) VALUES ('s','s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "MTAMS"."SESSION" (ACCOUNTID,DATE,EXPIRES) VALUES (0 /*not nullable*/,{ts '2013-05-08 12:24:59.450000'},{ts '2013-05-08 12:24:59.450000'});
--INSERT INTO "MTAMS"."TRAVELDOCUMENT" (PASSPORTNUMBER,COUNTRY,DATEOFISSUE,EXPIRYDATE,VALIDVISA,TRAVLERPROFILE_IDTRAVLERPROFILE) 
--	VALUES ('s','s',{ts '2013-05-08 12:25:22.150000'},{ts '2013-05-08 12:25:22.150000'},'s',0 /*not nullable*/);

