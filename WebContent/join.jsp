<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file = "head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="footer.css">
    <style>
    /* header.css */
    .hd { position:fixed; }
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
   
    .frm { border:3px solid #cbdace; padding: 30px; width: 900px; margin:50px auto; }
    .frm_tb { display:table; margin:50px auto; width:100px }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 50px; }
    .frm_tb td { width:500px; height: 50px; }
    .frm_tb label:before { content:"*"; }
    .in_dt { border:3px solid #cbdace; background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#333; font-size:18px; text-indent:0.7em; }
    .in_btn { display:block; background-color:rgb(255, 255, 255); border:2px solid #cbdace;; min-width:300px; margin: 10px auto; height: 40px; 
    color: #333; font-size:18px; line-height: 32px; border-radius:10px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: #cbdace; }
    </style>
    <link rel="stylesheet" href="footer.css">
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
        <%@include file = "nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">?????? ??????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????????</h2>
                <div class="form_fr">
                    <form name="frm1" action="joinPro.jsp" method="post" id="joinForm" class="frm" onsubmit="return joinAlert(this)">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <th><label for="id">?????????</label></th>
                                    <td>
                                        <input type="text" id="id" name="id" class="in_dt" placeholder="8~16??? ????????? ????????? ??????" maxlength="16" pattern="[a-z0-9]{8,16}"required autofocus>
                                        <button type="button" class="in_btn" onclick="idcheck()">????????? ????????????</button>
                                        <input type="hidden" name="idck" value="no" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="pw">????????????</label></th>
                                    <td>
                                        <input type="password" id="pw" name="pw" class="in_dt" placeholder="??????????????????,????????????,????????? ???????????? 8~20???" maxlength="20" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="pw2">???????????? ??????</label></th>
                                    <td>
                                        <input type="password" id="pw2" name="pw2" class="in_dt" placeholder="???????????? ??????" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="name">???  ???</label></th>
                                    <td>
                                        <input type="text" id="name" name="name" class="in_dt" pattern="\[^(???-???)]\" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="email">?????????</label></th>
                                    <td>
                                        <input type="email" id="email" name="email" class="in_dt" placeholder="????????? ???????????? ??????????????????" pattern=".+@naver\.com" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="tel">????????????</label></th>
                                    <td>
                                        <input type="tel" id="tel" name="tel" class="in_dt" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" placeholder="000-0000-0000" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit" class="in_btn">????????????</button>
                                        <button type="reset" class="in_btn">??????</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
            <script>
                function joinAlert(f){
                	if(f.pw.value!=f.pw2.value){
                		alert("???????????? ????????? ???????????? ????????????.");
                		return false;
                	}
                	if(f.idck.value!="yes"){
                		alert("????????? ??????????????? ????????????!");
                		return false;
                	}
                }
                function idcheck(){
                	var win = window.open("idcheck.jsp", "idcheckWin", "width=400, height=300");
                }
			</script>
        </section>
    </div>
    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
</body>
</html>