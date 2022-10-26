-- 글 추가 (등록)

select * from BOARDA;
select rownum rn, no, title, content, author, resdate from boarda order by no desc;
select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from boarda order by no desc) t1 where t1.rn between 1 and 10;

-- 글 상세보기
select a.no no,a.title title, a.content con, b.name name, to_char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join membera b on a.author=b.id where a.no=1;