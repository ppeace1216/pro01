<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
	<link rel="stylesheet" href="header.css">
	<title>자주하는 질문 및 답변 상세보기</title>
	<style>
	/* header.css */
	.hd { position:fixed; }
	/* content */
	.vs { clear:both; width: 100%; height:300px; overflow: hidden; }
	.vs img { display:block; width: 100%; height:auto; }
	    .bDetail { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
	    .bDetail_fr { width: 1200px; margin: 0 auto; }
	.page { clear:both; width: 100%; min-height:100vh;}
	.page:after { content:""; display:block; clear:both; }
	.page_wrap { width: 1200px; margin: 0 auto; }
	.page_title { padding-top: 1em; text-align: center; }
	.home { color:#333; }
	</style>
	<link rel="stylesheet" href="footer.css">
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
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option value="">다다일상</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>다다일상 FAQ</option>
                    <option value="subscription.jsp#page1">다다일상 구독</option>
                    <option value="subscription.jsp#page2">다다일상 기록</option>
                </select>
            </div>
        </div>
        <section class="page">
        	<div class="page_wrap">
        		<h2 class="page_title">다다일상 FAQ</h2>
  				<div class="tb_fr">
  					<table class="tb">
<%@ include file="connectionPool.conf" %>
<%
		sql = "select * from faqa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		String author = ""; 
		if(rs.next()){
%>
  						<tbody>  
  							<tr>
								<th>구분</th>
								<td>
								<%
								if(rs.getInt("gubun")==0){
									out.println("<span>질문</span>");
								} else {
									out.println("<span>답변</span>");
								}
								%>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=rs.getString("content") %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>관리자</td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=rs.getString("resdate") %></td>
							</tr>
						</tbody> 
					<%
							}
					%>
					
					</table>
					<div class="btn_group">
						<a href="faq.jsp" class="btn primary">자주하는 질문 및 답변 목록</a>
						<%
							if(sid.equals("admin")) {
						%>
						<a href='faqModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
						<a href='faqDel.jsp?no=<%=no %>' class="btn primary">글 삭제</a>
						<% } %>
					</div>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
<%@ include file="connectionEnd.conf" %>
</body>
</html>