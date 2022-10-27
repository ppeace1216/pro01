<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*,java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = (String) session.getAttribute("id");
	String author = "";
	int no = Integer.parseInt(request.getParameter("no"));
%>
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
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
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
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
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
                <select name="sel1" id="sel1" class="sel">
                    <option value="">고객센터</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>문의 게시판</option>
                    <option value="customer.jsp#page1">매장찾기</option>
                    <option value="boardWrite.jsp#page1">문의하기</option>
                </select>
            </div>
        </div>
        <section class="page">
        	<div class="page_wrap">
        		<h2 class="page_title">문의 게시판</h2>
        			<div class="tb_fr">
<%@ include file = "connectionPool.conf" %>
<%
	sql = "select a.no no,a.title title, a.author author, a.content con, b.name name, to_char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join membera b on a.author=b.id where a.no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs = pstmt.executeQuery();
	
	if (rs.next()){
		author = rs.getString("author");
	}
%>
						<table class="tb">
							<tr>
								<td>게시 번호</td>
								<td><%=rs.getInt("no") %></td>
							</tr>
							<tr>
								<td>제목</td>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<td>내용</td>
								<td><%=rs.getString("con") %></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><%=rs.getString("name") %></td>
							</tr>
							<tr>
								<td>작성일</td>
								<td><%=rs.getString("res") %></td>
							</tr>
							<%@ include file = "connectionEnd.conf" %>
						</table>
						<div class="btn_group">
							<a href="boardList.jsp" class=button_primary>글 목록으로 돌아가기</a>
							<%
								if(uid.equals("admin") || uid.equals(author)) {
							%>
							<a href='boardModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
							<a href="boardWrite.jsp" class=button_primary>글 작성</a>
							<a href="boardDelete.jsp" class=button_primary>글 삭제</a>
							<% } %>
						</div>
					</div>
			</div>
		</section>
	</div>
    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>