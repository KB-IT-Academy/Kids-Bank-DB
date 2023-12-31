--------------------------------------------------------
--  DDL for Table CHILD
--------------------------------------------------------


  CREATE TABLE "KIDSBANK"."CHILD" 
   (	"CHILD_NUM" NUMBER, 
	"ID" VARCHAR2(40 BYTE), 
	"PASSWORD" VARCHAR2(60 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(50 BYTE), 
	"JOIN_DATE" DATE, 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"REGISTRATION_NUMBER" VARCHAR2(20 BYTE), 
	"IS_OPEN" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CHILD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."CHILD_PK" ON "KIDSBANK"."CHILD" ("CHILD_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CHILD_ID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."CHILD_ID_UK" ON "KIDSBANK"."CHILD" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CHILD_NICKNAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."CHILD_NICKNAME_UK" ON "KIDSBANK"."CHILD" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CHILD
--------------------------------------------------------

  ALTER TABLE "KIDSBANK"."CHILD" ADD CONSTRAINT "CHILD_NICKNAME_UK" UNIQUE ("NICKNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."CHILD" ADD CONSTRAINT "CHILD_ID_UK" UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."CHILD" ADD CONSTRAINT "CHILD_PK" PRIMARY KEY ("CHILD_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("REGISTRATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."CHILD" MODIFY ("CHILD_NUM" NOT NULL ENABLE);
