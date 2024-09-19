--------------------------------------------------------
--  Fichier cr�� - samedi-avril-27-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."CLIENT" 
   (	"ID_CLIENT" NUMBER(*,0), 
	"NOM_CLIENT" VARCHAR2(45 BYTE), 
	"PRENOM_CLIENT" VARCHAR2(45 BYTE), 
	"TELEPHONE" NUMBER(*,0), 
	"TYPE_CLIENT" NUMBER(*,0), 
	"ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table COMMANDE
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."COMMANDE" 
   (	"ID_COMMANDE" NUMBER(*,0), 
	"NOM_C" VARCHAR2(45 BYTE), 
	"ADDRESSE" VARCHAR2(100 BYTE), 
	"ID_CLIENT" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table ENTREPRISE
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."ENTREPRISE" 
   (	"ID" NUMBER(*,0), 
	"NOM_ENTREPRISE" VARCHAR2(45 BYTE), 
	"ADDRESE" VARCHAR2(45 BYTE), 
	"SIEGE_SOCIAL" VARCHAR2(45 BYTE), 
	"ANNEE_CREATION" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table FOURNISSEUR
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."FOURNISSEUR" 
   (	"ID_FOURNISSEUR" NUMBER(*,0), 
	"NOM_FOURNISSEUR" VARCHAR2(45 BYTE), 
	"NIVEAU_SATISFACTION" VARCHAR2(300 BYTE), 
	"JOURS_RECEPTION" VARCHAR2(20 BYTE), 
	"ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table SEC_ENTREPRISE
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."SEC_ENTREPRISE" 
   (	"ID_SECTEUR" VARCHAR2(45 BYTE), 
	"ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table SECTEUR
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."SECTEUR" 
   (	"ID_SECTEUR" VARCHAR2(45 BYTE), 
	"TYPE" VARCHAR2(45 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table TRANSACTION
--------------------------------------------------------

  CREATE TABLE "SMI1001_061"."TRANSACTION" 
   (	"ID_TRANSACTION" NUMBER(*,0), 
	"ID_COMMANDE" NUMBER, 
	"ID_FOURNISSEUR" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "COURSBD"   NO INMEMORY ;
REM INSERTING into SMI1001_061.CLIENT
SET DEFINE OFF;
REM INSERTING into SMI1001_061.COMMANDE
SET DEFINE OFF;
REM INSERTING into SMI1001_061.ENTREPRISE
SET DEFINE OFF;
REM INSERTING into SMI1001_061.FOURNISSEUR
SET DEFINE OFF;
REM INSERTING into SMI1001_061.SEC_ENTREPRISE
SET DEFINE OFF;
REM INSERTING into SMI1001_061.SECTEUR
SET DEFINE OFF;
REM INSERTING into SMI1001_061.TRANSACTION
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PERSONEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SMI1001_061"."PERSONEL_PK" ON "SMI1001_061"."CLIENT" ("ID_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" ;
--------------------------------------------------------
--  DDL for Index COMMANDE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SMI1001_061"."COMMANDE_PK" ON "SMI1001_061"."COMMANDE" ("ID_COMMANDE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" ;
--------------------------------------------------------
--  DDL for Index ENTREPRISE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SMI1001_061"."ENTREPRISE_PK" ON "SMI1001_061"."ENTREPRISE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" ;
--------------------------------------------------------
--  DDL for Index PRODUIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SMI1001_061"."PRODUIT_PK" ON "SMI1001_061"."FOURNISSEUR" ("ID_FOURNISSEUR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" ;
--------------------------------------------------------
--  DDL for Index SECTEUR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SMI1001_061"."SECTEUR_PK" ON "SMI1001_061"."SECTEUR" ("ID_SECTEUR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "COURSBD" ;
--------------------------------------------------------
--  Constraints for Table SECTEUR
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."SECTEUR" ADD CONSTRAINT "SECTEUR_PK" PRIMARY KEY ("ID_SECTEUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "COURSBD"  ENABLE;
  ALTER TABLE "SMI1001_061"."SECTEUR" MODIFY ("ID_SECTEUR" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."SECTEUR" MODIFY ("TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."TRANSACTION" MODIFY ("ID_TRANSACTION" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."TRANSACTION" MODIFY ("ID_COMMANDE" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."TRANSACTION" MODIFY ("ID_FOURNISSEUR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOURNISSEUR
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."FOURNISSEUR" ADD CONSTRAINT "FOURNISSEUR_PK" PRIMARY KEY ("ID_FOURNISSEUR")
  USING INDEX (CREATE UNIQUE INDEX "SMI1001_061"."PRODUIT_PK" ON "SMI1001_061"."FOURNISSEUR" ("ID_FOURNISSEUR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" )  ENABLE;
  ALTER TABLE "SMI1001_061"."FOURNISSEUR" MODIFY ("ID_FOURNISSEUR" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."FOURNISSEUR" MODIFY ("NOM_FOURNISSEUR" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."FOURNISSEUR" MODIFY ("JOURS_RECEPTION" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."FOURNISSEUR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEC_ENTREPRISE
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."SEC_ENTREPRISE" MODIFY ("ID_SECTEUR" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."SEC_ENTREPRISE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."COMMANDE" ADD CONSTRAINT "COMMANDE_PK" PRIMARY KEY ("ID_COMMANDE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD"  ENABLE;
  ALTER TABLE "SMI1001_061"."COMMANDE" MODIFY ("NOM_C" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."COMMANDE" MODIFY ("ADDRESSE" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."COMMANDE" MODIFY ("ID_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."COMMANDE" MODIFY ("ID_COMMANDE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ENTREPRISE
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."ENTREPRISE" ADD CONSTRAINT "ENTREPRISE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD"  ENABLE;
  ALTER TABLE "SMI1001_061"."ENTREPRISE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."ENTREPRISE" MODIFY ("NOM_ENTREPRISE" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."ENTREPRISE" MODIFY ("SIEGE_SOCIAL" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."ENTREPRISE" MODIFY ("ANNEE_CREATION" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."ENTREPRISE" MODIFY ("ADDRESE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("ID_CLIENT")
  USING INDEX (CREATE UNIQUE INDEX "SMI1001_061"."PERSONEL_PK" ON "SMI1001_061"."CLIENT" ("ID_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "COURSBD" )  ENABLE;
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("ID_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("NOM_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("PRENOM_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SMI1001_061"."CLIENT" MODIFY ("TYPE_CLIENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."CLIENT" ADD CONSTRAINT "CLIENT_FK1" FOREIGN KEY ("ID_CLIENT")
	  REFERENCES "SMI1001_061"."ENTREPRISE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."COMMANDE" ADD CONSTRAINT "COMMANDE_FK1" FOREIGN KEY ("ID_CLIENT")
	  REFERENCES "SMI1001_061"."CLIENT" ("ID_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FOURNISSEUR
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."FOURNISSEUR" ADD CONSTRAINT "FOURNISSEUR_FK1" FOREIGN KEY ("ID")
	  REFERENCES "SMI1001_061"."ENTREPRISE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEC_ENTREPRISE
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."SEC_ENTREPRISE" ADD CONSTRAINT "SEC_ENTREPRISE_FK1" FOREIGN KEY ("ID_SECTEUR")
	  REFERENCES "SMI1001_061"."SECTEUR" ("ID_SECTEUR") ENABLE;
  ALTER TABLE "SMI1001_061"."SEC_ENTREPRISE" ADD CONSTRAINT "SEC_ENTREPRISE_FK2" FOREIGN KEY ("ID")
	  REFERENCES "SMI1001_061"."ENTREPRISE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "SMI1001_061"."TRANSACTION" ADD CONSTRAINT "TRANSACTION_FK1" FOREIGN KEY ("ID_COMMANDE")
	  REFERENCES "SMI1001_061"."COMMANDE" ("ID_COMMANDE") ENABLE;
  ALTER TABLE "SMI1001_061"."TRANSACTION" ADD CONSTRAINT "TRANSACTION_FK2" FOREIGN KEY ("ID_TRANSACTION")
	  REFERENCES "SMI1001_061"."FOURNISSEUR" ("ID_FOURNISSEUR") ENABLE;