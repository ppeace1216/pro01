<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = (String) session.getAttribute("id");
	int cnt = 0;
	
	if(uid==null){
		uid="guest";	
	}
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
		sql = "select * from faqa order by parno asc, gubun asc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
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
    .bDetail { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bDetail_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding: 1em 0; }
    .home { color:#333; }
    
    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
	.tb { display:table; margin:40px auto; width:1200px; border-collapse:collapse; }
	.tb tr { display:table-row; }
	.tb td, .tb th { display:table-cell; }
	.tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
	   color:#fff; background-color:#333; }
	.tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:820px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
	.tb tr td:nth-child(2) { text-align:left; text-overflow:ellipsis; overflow:hidden;
	white-space:nowrap; }
	.tb tr td a { display:block; color:#333; padding-left:4px; padding-right:4px; 
	width:810px; text-overflow:ellipsis; overflow:hidden;
	white-space:nowrap; }
	.tb tr td a:hover { text-decoration:underline; }
	.tb_com { clar:both; width:100%; height:48px; }
	strong.total { display:block; text-align:right; padding-top:60px; margin-bottom:-20px; float:right; }
	strong.cur { display:block; text-align:left; padding-top:60px; margin-bottom:-20px; float:left; }
	.btn_group { clear:both; width:1200px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
	.btn_group .btn.primary { background-color:#333; color:#fff; }
	.btn_group .btn.primary:hover { background-color:deepskyblue; }
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
        <div class="bDetail">
            <div class="bDetail_fr">
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
                <p>자주하는 질문들을 모아 답해드립니다.</p>
  				<div class="tb_fr">
  					<table class="tb">
  						<thead>
  							<tr>
  								<th>연번</th>
  								<th>제목</th>
  								<th>작성자</th>
  								<th>작성일</th>
  							</tr>
  						</thead>
  						<tbody>         
<%
		while(rs.next()){
			cnt++;
			//작성일의 날짜 데이터를 특정 문자열 형식으로 변환
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(rs.getInt("gubun")==0) { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<% } else { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:30px;"><%=rs.getString("title") %></a>
					<% } %>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%		
		}
	} catch(Exception e) {
		
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						</tbody> 
					</table>
					<div class="btn_group">
						<% if(uid.equals("admin")) { %>
						<a href="faqWrite.jsp" class="btn primary">자주하는 질문 및 답변 등록</a>
						<% } %>
					</div>	
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