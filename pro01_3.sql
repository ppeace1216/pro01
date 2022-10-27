 CREATE TABLE faqa
   (	NO NUMBER primary key, 
	TITLE VARCHAR2(100), 
	CONTENT VARCHAR2(1000), 
	AUTHOR VARCHAR2(16), 
	RESDATE DATE DEFAULT sysdate,
    gubun number not null,  --질문(0)/답변(1)의 구분
    parno number not null   --질문(1)과 답변(1)의 공통 번호
   );
   
create sequence fseq;

insert into faqa values (fseq.nextval, 'Q1', '질문 1', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q2', '질문 2', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q3', '질문 3', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q4', '질문 4', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q5', '질문 5', 'admin', sysdate, 0, fseq.currval);

insert into faqa values (fseq.nextval, 'A1', '답변 1', 'admin', sysdate, 1, 1);
insert into faqa values (fseq.nextval, 'A2', '답변 2', 'admin', sysdate, 1, 2);
insert into faqa values (fseq.nextval, 'A3', '답변 3', 'admin', sysdate, 1, 3);
insert into faqa values (fseq.nextval, 'A4', '답변 4', 'admin', sysdate, 1, 4);
insert into faqa values (fseq.nextval, 'A5', '답변 5', 'admin', sysdate, 1, 5);

select * from faqa order by parno asc, gubun asc;

commit;