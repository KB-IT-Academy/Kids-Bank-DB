--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "KIDSBANK"."COMMENTS" 
   (	"COMMENTS_NUM" NUMBER, 
	"CHILD_NUM" NUMBER, 
	"PARENT_NUM" NUMBER, 
	"CONTENT" VARCHAR2(100 BYTE), 
	"MONEY_DATE" DATE, 
	"WRITE_DATE" DATE, 
	"UPDATE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."COMMENTS_PK" ON "KIDSBANK"."COMMENTS" ("COMMENTS_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_CHILD_NUM_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."COMMENTS_CHILD_NUM_UK" ON "KIDSBANK"."COMMENTS" ("CHILD_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PARENT_NUM_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KIDSBANK"."COMMENTS_PARENT_NUM_UK" ON "KIDSBANK"."COMMENTS" ("PARENT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "KIDSBANK"."COMMENTS" ADD CONSTRAINT "COMMENTS_PARENT_NUM_UK" UNIQUE ("PARENT_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."COMMENTS" ADD CONSTRAINT "COMMENTS_CHILD_NUM_UK" UNIQUE ("CHILD_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."COMMENTS" ADD CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("COMMENTS_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("MONEY_DATE" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("PARENT_NUM" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("CHILD_NUM" NOT NULL ENABLE);
  ALTER TABLE "KIDSBANK"."COMMENTS" MODIFY ("COMMENTS_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "KIDSBANK"."COMMENTS" ADD CONSTRAINT "COMMENTS_CHILD_NUM_FK" FOREIGN KEY ("CHILD_NUM")
	  REFERENCES "KIDSBANK"."CHILD" ("CHILD_NUM") ENABLE;
  ALTER TABLE "KIDSBANK"."COMMENTS" ADD CONSTRAINT "COMMENTS_PARENT_NUM_FK" FOREIGN KEY ("PARENT_NUM")
	  REFERENCES "KIDSBANK"."PARENT" ("PARENT_NUM") ENABLE;
