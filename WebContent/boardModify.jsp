<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
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
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
		<div class="bread">
		     <div class="bread_fr">
		         <a href="index.jsp" class="home">HOME</a> &gt;
		         <span class="sel">문의 수정하기</span>
		     </div>
		</div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">문의 수정하기</h2>
			<%@ include file="connectionPool.conf" %>
			<%
				sql = "select * from boarda where no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				if(rs.next()){
			%>
			<div class="frm1">
				<form name="frm" class="frm" action="boardModifyPro.jsp" method="post">
					<input type="hidden" name="no" id="no" value='<%=rs.getInt("no") %>' required>
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="title">제목</label></th>
								<td><input type="text" name="title" id="title" placeholder="제목 입력" class="in_data" value='<%=rs.getString("title") %>' required></td>
							</tr>
							<tr>
								<th><label for="content">내용</label></th>
								<td>
									<textarea cols="100" rows="6" name="content" id="content" class="in_data2"><%=rs.getString("content") %></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				<%
					}
				%>
				<%@ include file="connectionEnd.conf" %>
					<div class="btn_group">
						<button type="submit" class="btn primary">글 수정</button>
						<a href="boardList.jsp" class="btn primary">목록으로</a>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>