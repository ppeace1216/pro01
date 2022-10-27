 CREATE TABLE faqa
   (	NO NUMBER primary key, 
	TITLE VARCHAR2(100), 
	CONTENT VARCHAR2(1000), 
	AUTHOR VARCHAR2(16), 
	RESDATE DATE DEFAULT sysdate,
    gubun number not null,  --����(0)/�亯(1)�� ����
    parno number not null   --����(1)�� �亯(1)�� ���� ��ȣ
   );
   
create sequence fseq;

insert into faqa values (fseq.nextval, 'Q1', '���� 1', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q2', '���� 2', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q3', '���� 3', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q4', '���� 4', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, 'Q5', '���� 5', 'admin', sysdate, 0, fseq.currval);

insert into faqa values (fseq.nextval, 'A1', '�亯 1', 'admin', sysdate, 1, 1);
insert into faqa values (fseq.nextval, 'A2', '�亯 2', 'admin', sysdate, 1, 2);
insert into faqa values (fseq.nextval, 'A3', '�亯 3', 'admin', sysdate, 1, 3);
insert into faqa values (fseq.nextval, 'A4', '�亯 4', 'admin', sysdate, 1, 4);
insert into faqa values (fseq.nextval, 'A5', '�亯 5', 'admin', sysdate, 1, 5);

select * from faqa order by parno asc, gubun asc;

commit;