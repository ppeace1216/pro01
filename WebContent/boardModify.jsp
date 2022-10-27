<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String uid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
	String title = "";
	String content = "";
	String author = "";
	String resdate = "";
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
                <h2 class="page_title">문의글 수정하기</h2>
                <div class="form_fr">
                <%@include file = "connectionPool.conf" %>
				<%
					sql = "select * from boarda where no=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, no);
					rs = pstmt.executeQuery();
							
					if(rs.next()){
				%>
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
										<textarea cols="100" rows="50" name="content" id="content" class="in_data2"><%=rs.getString("content") %></textarea>
									</td>
								</tr>
								<tr>
									<th><label for="author">작성자</label></th>
									<td><%=rs.getString("author") %></td>
								</tr>
							</tbody>
						</table>
						<%} %>
    					<%@ include file = "connectionEnd.conf" %>
    					<div class="btn_group">
							<button type="submit" class="btn primary">문의글 수정하기</button>
							<a href="boardList.jsp" class="btn primary">게시판 목록</a>
						</div>
    				</form>
    			</div>
    		</div>
    	</section>
	</div>
    <script>
    var sel = document.getElementsByClassName("sel");
    for(var i=0;i<sel.length;i++){
        sel[i].addEventListener("change", function(){
            location.href = this.value;
        });
    }
    </script>
    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
</body>
</html>