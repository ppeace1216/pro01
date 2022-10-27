<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = (String) session.getAttribute("id");
	String author = (String) session.getAttribute("author");
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
                	<form name="frm1" action="boardWritePro.jsp" method="post" id="writeform" class="frm" onsubmit="return writeAlert(this)">
                		<table class="frm_tb">
                			<tbody>
                				<tr>
                					<th>제목</th>
                					<td>
                						<input type="text" id="title" name="title" class="write_td" required>
                					</td>
                				</tr>
                				<tr>
                					<th>내용</th>
                					<td>
                						<textarea rows="50" cols="100" name="content" id="content" class="write_td" required></textarea>
                					</td>
                				</tr>
                				<tr>
                					<th>작성자</th>
                					<td>
                						<input type="text" id="author" name="author" class="write_td" value="<%= uid %>" readonly>
                					</td>
                				</tr>
                			</tbody>
                		</table>
                		<div class="btn_group">
                				<a href="boardList.jsp" class="button_primary">글 목록으로 돌아가기</a>
                				<button type="submit" class="button_primary">문의글 등록</button>
                				<%
									if(uid!="admin" || uid!=author) {
								%>
								<span class="button_primary">로그인 후 문의글 작성이 가능합니다.</span>
								<% } else if(uid.equals("admin") || uid.equals(author)) {%>
								<button type="submit" class="button_primary">문의글 등록</button>
								<% } %>
                		</div>
                	</form>
    			</div>
    		</div>
    		<script>
                function writeAlert(f){
                	if(f.author.value.equals(null)){
                		alert("로그인한 회원만 문의글 작성이 가능합니다.");
                		return false;
                	}
			</script>
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