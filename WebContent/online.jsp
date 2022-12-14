<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
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
    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:900px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
     border-right:2px solid #333;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:2px solid #333; }
    .tb tr:first-child td { border-top:2px solid #333; }
    .tb tr:last-child th { border-bottom:2px solid #333; }
    .tb tr:last-child td { border-bottom:2px solid #333; }
	.btn_group { clear:both; width:940px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
	.btn_group .btn.primary { background-color:#333; color:#fff; }
	.btn_group .btn.primary:hover { background-color:deepskyblue; }
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; 
	min-width:740px; }
	textarea { padding:6px; }
    </style>
    <link rel="stylesheet" href="footer.css">
	<title>?????? ??????</title>
</head>
<body>
<header class="hd">
	<%@ include file="nav.jsp" %>
</header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="?????????">
        </figure>
        <div class="bDetail">
            <div class="bDetail_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option value="">????????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="gift.jsp#page1">????????????</option>
                    <option value="subscription.jsp#page1">????????????</option>
                    <option value="brand.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="boardList.jsp" selected>?????? ?????????</option>
                    <option value="customer.jsp#page1">????????????</option>
                    <option value="" selected>????????? ??????</option>
                </select>
            </div>
        </div>
	<section class="page">
		<div class="page_wrap">
			<h2 class="page_title">????????? ?????? ??????</h2><br><br>
			<p style="clear:both">??? ????????? ????????? ????????? ?????? ???????????????. ???????????? ?????? ??????????????? ????????? ??? ?????? ?????? ??????????????????.</p><br>
			<h3 style="clear:both">???????????? ????????? ????????? ????????? ???????????? ????????????, ????????? ?????? ??? ?????? ??????????????? 3??? ?????? ??????????????????.</h3>
		<%@ include file="connectionPool.conf" %>
		<%
		sql = "select * from membera where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, sid);
		//select??? ???????????? ?????????, rs=null??? ???
		rs = pstmt.executeQuery();
		//int cnt = pstmt.executeUpdate();
		
		if(rs.next()){	
		%>
			<div class="frm1">
				<form name="frm" class="frm" action="onlinePro.jsp" method="post">
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="author">????????????</label></th>
								<td>
									<input type="text" name="name" id="name" class="in_data" value='<%=rs.getString("name") %>' required>
								</td>
							</tr>
							<tr>
								<th><label for="from">????????? ??????</label></th>
								<td>
									<input type="email" name="from" id="from" class="in_data" value='<%=rs.getString("email") %>' required >
								</td>
							</tr>
							<tr>
								<th><label for="tel">?????????</label></th>
								<td>
									<input type="tel" name="tel" id="tel" class="in_data" value='<%=rs.getString("tel") %>' required >
								</td>
							</tr>
							<tr>
								<th><label for="title">?????? ??????</label></th>
								<td><input type="text" name="title" id="title" placeholder="?????? ??????" class="in_data" required></td>
							</tr>
							<tr>
								<th><label for="content">?????? ??????</label></th>
								<td>
									<textarea cols="100" rows="6" name="content" id="content" class="in_data2"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_group">
						<button type="submit" class="btn primary">?????? ??????</button>
					</div>
				</form>
			</div>
			<%
			}
			%>
			<%@ include file="connectionEnd.conf" %>
			</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>