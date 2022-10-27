--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-27-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARDA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDA" 
   (	"NO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"AUTHOR" VARCHAR2(16 BYTE), 
	"RESDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOARDA
SET DEFINE OFF;
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (23,'메롱메롱','바보야 메롱메롱','peace',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (28,'dd','dd','peace',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (37,'d','d','admin',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (4,'테스트 글2','테스트 글2의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (6,'테스트 글4','테스트 글4의 내용입니다.','qwertyuu',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (9,'테스트 글3','테스트 글3의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (10,'테스트 글6','테스트 글6의 내용입니다.','baba12345',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (11,'테스트 글1','테스트 글1의 내용입니다.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (12,'테스트 글5','테스트 글5의 내용입니다.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (13,'테스트 글7','테스트 글7의 내용입니다.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (14,'테스트 글8','테스트 글8 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (15,'테스트 글9','테스트 글9의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (16,'테스트 글10','테스트 글10의 내용입니다.','qwertyuu',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (17,'테스트 글11','테스트 글11의 내용입니다.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (18,'테스트 글12','테스트 글12의 내용입니다.','baba12345',to_date('22/10/25','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007162
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007162" ON "SYSTEM"."BOARDA" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARDA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOARDA" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."BOARDA" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARDA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOARDA" ADD CONSTRAINT "BO_FK" FOREIGN KEY ("AUTHOR")
	  REFERENCES "SYSTEM"."MEMBERA" ("ID") ENABLE;
