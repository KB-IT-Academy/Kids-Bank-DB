--------------------------------------------------------
--  DDL for Table PARENT
--------------------------------------------------------

  CREATE TABLE "KIDSBANK"."PARENT" 
   (	"PARENT_NUM" NUMBER, 
	"ID" VARCHAR2(40 BYTE), 
	"PASSWORD" VARCHAR2(60 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(50 BYTE), 
	"JOIN_DATE" DATE, 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"PARENT_TYPE" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."TABLE1_PK" ON "KIDSBANK"."PARENT" ("PARENT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARENT_ID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."PARENT_ID_UK" ON "KIDSBANK"."PARENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARENT_NICKNAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."PARENT_NICKNAME_UK" ON "KIDSBANK"."PARENT" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PARENT
--------------------------------------------------------

  ALTER TABLE "KIDSBANK"."PARENT" ADD CONSTRAINT "PARENT_NICKNAME_UK" UNIQUE ("NICKNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."PARENT" ADD CONSTRAINT "PARENT_ID_UK" UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."PARENT" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("PARENT_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("PARENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."PARENT" MODIFY ("PARENT_NUM" NOT NULL ENABLE);