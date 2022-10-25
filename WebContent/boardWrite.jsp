<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = 0;
	String title = "";
	String content = "";
	String author = "";
	String resdate = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "update boarda";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			no = rs.getInt("no");
			title = rs.getString("title");
			content = rs.getString("content");
			author = rs.getString("author");
			resdate = rs.getString("resdate");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
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
                    <option value="" selected>문의하기</option>
                    <option value="customer.jsp#page1">매장찾기</option>
                    <option value="boardList.jsp#page1">문의 게시판</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">문의글 작성</h2>
                <div class="form_fr">
                    <form name="frm1" action="boardWritePro.jsp" method="post" id="" class="">
                        <table class="frm_tb">
                  			<tbody>
                  				<tr>
                  					<th><label for="no">글 번호</label></th>
                  					<td><%=no %></td>
                  				</tr>
                  				<tr>
                  					<th><label for="title">제목</label></th>
                  					<td>
                                        <input type="text" id="title" name="title" class="in_dt" required autofocus>
                                    </td>
                  				</tr>
                  				<tr>
                  					<th><label for="content">문의 내용</label></th>
                  					<td>
                  						<textarea rows="100" cols="10" name="content" id="content" class="content"></textarea>
                  					</td>
                  				</tr>
                  				<tr>
                  					<th><label for="author">작성자</label></th>
                  					<td><%=author %>
                  					<input type="hidden">
                  					</td>
                  				</tr>
                  				<tr>
                                    <td colspan="2">
                                        <button type="submit" class="in_btn">문의글 등록</button>
                                        <button type="reset" class="in_btn">등록 취소</button>
                                    </td>
                                </tr>
                  			</tbody>
    					</table>
    					<a href="boardList.jsp">목록으로 돌아가기</a>
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