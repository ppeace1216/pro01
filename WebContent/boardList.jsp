<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = (String) session.getAttribute("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String dbid="system";
	String dbpw="1234";
	String sql="";
	int cnt=0;
	int amount=0;
	int curPage = 0;
	int pageCount = 0;
	int startNum = 0;
	int endNum = 0;	
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		
		sql = "select count(*) cnt from boarda";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()){
			amount = rs.getInt("cnt");
		}
		rs.close();
		pstmt.close();
		
		pstmt=null;
		rs=null;
		
		sql = "select a.no no, a.title title, a.content content, b.name name, a.resdate resdate from boarda a inner join membera b on a.author=b.id order by a.resdate desc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		out.println("<p>건수 : "+amount+"건</p>");
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
        <div class="bDetail">
            <div class="bDetail_fr">
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
                    <option value="online.jsp#page1">온라인 상담</option>
                </select>
            </div>
        </div>
        <section class="page">
        	<div class="page_wrap">
        		<h2 class="page_title">문의 게시판</h2>
        			<div class="tb_fr">
        				<table class="tb">
        					<thead>
        						<tr>
        							<th>게시 번호</th>
        							<th>제	목</th>
        							<th>작성자</th>
        							<th>작성일</th>
        						</tr>
        					</thead>
        					<tbody>
<%
		curPage = 1;
		if(request.getParameter("curPage")!=null){
			curPage = Integer.parseInt(request.getParameter("curPage"));
		}
		pageCount = (amount%10==0) ? amount/10 : amount/10+1;
		startNum = curPage*10-9;
		endNum = curPage*10;
		if(endNum>amount){
			endNum=amount;	
		}
		
		rs.close();
		pstmt.close();
		
		pstmt=null;
		rs=null;
		
		sql = "select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from boarda order by no desc) t1 where t1.rn between ? and ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, startNum);
		pstmt.setInt(2, endNum);
		rs = pstmt.executeQuery();
		
		cnt = startNum-1;
		while(rs.next()){
			cnt+=1;
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
								<tr>
									<td><%=cnt %></td>
									<%
									if(uid!=null) {
									%>
										<td><a href='boardRead.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></td>
									<%
									} else {
									%>
										<td><%=rs.getString("title") %></td>
									<%
									}
									%>
									<td><%=rs.getString("author") %></td>
									<td><%=date %></td>
								</tr>
<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>        					
        					</tbody>
        				</table>
        				<div class="pageCount">
        				<%
        					
        				
        					pageCount = (amount%10==0) ? amount/10 : amount/10+1;
        				
        				//여기다 게시글 검색
        					for(int i=1;i<=pageCount;i++) {
        				%>
        					<a href="boardList.jsp?curPage=<%=i%>"><%=i %>&nbsp;</a>
        				<%		
        					}
        				%>
        				</div>
        				<div class="btn_group">
        				<%
        					if(uid!=null){
        				%>		
        					<a href="boardWrite.jsp" class="btn primary">문의글 쓰기</a>
        				<%		
        					}
        				%>
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