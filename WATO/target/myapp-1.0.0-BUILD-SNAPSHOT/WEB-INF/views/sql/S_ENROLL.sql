  CREATE TABLE "SCOTT"."S_ENROLL" 
   (	"S_NO" NUMBER, 
	"S_USERID" VARCHAR2(30 BYTE), 
	"S_CATEGORY" VARCHAR2(30 BYTE), 
	"S_TITLE" VARCHAR2(100 BYTE), 
	"S_STARTDATE" DATE, 
	"S_ENDDATE" DATE, 
	"S_DAY" VARCHAR2(30 BYTE), 
	"S_POSTNUM" NUMBER, 
	"S_PLACE" VARCHAR2(100 BYTE), 
	"S_CONTENT" VARCHAR2(3000 BYTE), 
	"S_PHOTO" VARCHAR2(50 BYTE), 
	"S_LEVEL" VARCHAR2(10 BYTE), 
	"S_PEOPLE" NUMBER DEFAULT 0, 
	"S_CREADATE" DATE DEFAULT sysdate, 
	"S_UPDATEDATE" DATE, 
	"S_INTRO" VARCHAR2(3000 BYTE), 
	"S_VIEWCNT" NUMBER DEFAULT 0, 
	"S_PARTI" NUMBER DEFAULT 0, 
	"S_BNO_LIKECNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;