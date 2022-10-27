--------------------------------------------------------
--  ������ ������ - �����-10��-27-2022   
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
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (23,'�޷ո޷�','�ٺ��� �޷ո޷�','peace',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (28,'dd','dd','peace',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (37,'d','d','admin',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (4,'�׽�Ʈ ��2','�׽�Ʈ ��2�� �����Դϴ�.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (6,'�׽�Ʈ ��4','�׽�Ʈ ��4�� �����Դϴ�.','qwertyuu',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (9,'�׽�Ʈ ��3','�׽�Ʈ ��3�� �����Դϴ�.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (10,'�׽�Ʈ ��6','�׽�Ʈ ��6�� �����Դϴ�.','baba12345',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (11,'�׽�Ʈ ��1','�׽�Ʈ ��1�� �����Դϴ�.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (12,'�׽�Ʈ ��5','�׽�Ʈ ��5�� �����Դϴ�.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (13,'�׽�Ʈ ��7','�׽�Ʈ ��7�� �����Դϴ�.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (14,'�׽�Ʈ ��8','�׽�Ʈ ��8 �����Դϴ�.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (15,'�׽�Ʈ ��9','�׽�Ʈ ��9�� �����Դϴ�.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (16,'�׽�Ʈ ��10','�׽�Ʈ ��10�� �����Դϴ�.','qwertyuu',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (17,'�׽�Ʈ ��11','�׽�Ʈ ��11�� �����Դϴ�.','peace',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (18,'�׽�Ʈ ��12','�׽�Ʈ ��12�� �����Դϴ�.','baba12345',to_date('22/10/25','RR/MM/DD'));
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
