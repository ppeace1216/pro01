-- 회원 가입
insert into MEMBERA values ('peace','1111','박평화','peace1216@naver.com','010-8120-0204',sysdate);
insert into MEMBERA values ('admin','1234','관리자','admin@gmail.com','010-1234-1234',sysdate);
-- insert into membera values (?,?,?,?,?,sysdate);
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);
-- pstmt.setString(3, name);
-- pstmt.setString(4, email);
-- pstmt.setString(5, tel);

-- 회원 목록
select * from membera;
desc membera;
-- 로그인
select * from membera where id='peace' and pw='1111';
-- "select * from membera where id='"+id+"' and pw="'"+pw+"';  -- Statement
-- select * from membera where id=? and pw=?;	-- PrepareStatement
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);


-- 회원 정보 수정
update membera set pw='4444', tel='010-4444-4444', email='ppp@gmail.com' where id='peace'; 
-- update membera set pw=?, tel=?, email=? where id=?;
-- pstmt.setString(1, pw);
-- pstmt.setString(2, tel);
-- pstmt.setString(3, email);
-- pstmt.setString(4, id);

-- 회원 탈퇴
delete from membera where id='peace';
-- delete from membera where id=?;
-- pstmt.setString(1, id);


select * from boarda order by resdate;

