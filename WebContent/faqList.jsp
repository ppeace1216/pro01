<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, java.text.*" %>
<%
	
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
        				<%@ include file = "connectionPool.conf" %>
        					<tbody>
        						<tr>
        							<td>게시 번호</td>
        							if (gubun==0)
        							<td><%=rs.getInt("parno") %></td>
        							<td><a href='boardDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></td>
        							<td>작성일</td>
        						</tr>
        					</tbody>
        				<%@ include file = "connectionEnd.conf" %>
        				</table>
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
<a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>