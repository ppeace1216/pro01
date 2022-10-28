<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String uid = (String) session.getAttribute("id");
	String author = ""; 
%>
<%@ include file="connectionPool.conf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file = "head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="footer.css">
    <style>
    /* header.css */
    .hd { position:fixed; }
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bDetail { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bDetail_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding: 1em 0; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(255, 255, 255, 0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: rgb(131, 183, 129); }
    .to_top.on { visibility: visible; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd">
        <%@ include file = "nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread">
		         <a href="index.jsp" class="home">HOME</a> &gt;
		         <span class="sel">문의 게시판</span>
            </div>
        </div>
        <section class="page">
        	<div class="page_wrap">
        		<h2 class="page_title">문의 게시판</h2>
        			<div class="tb_fr">
  						<table class="tb">
<%
	sql = "select a.no no, a.author author, a.title tit, a.content con, b.name nm, to_char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join memberb b on a.author=b.id where a.no=?"; 
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs = pstmt.executeQuery();
	if (rs.next()){
		author = rs.getString("author");
	}
%>
  						<tbody>             
							<tr>
								<th>글 번호</th>
								<td><%=rs.getInt("no") %></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=rs.getString("tit") %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=rs.getString("con") %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=rs.getString("nm") %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=rs.getString("res") %></td>
							</tr>
						</tbody>
<%@ include file = "connectionEnd.conf" %>
					</table>
				</div>
        	</div>
        </section>
	</div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>