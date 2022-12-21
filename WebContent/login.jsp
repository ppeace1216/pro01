<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .frm { border:3px solid #cbdace; padding: 30px; width: 500px; margin:50px auto; }
    .frm_tb { display:table; margin:50px auto; width:100px }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell;}
    .frm_tb th { width:180px; height: 48px;  }
    .frm_tb td { width:350px; height: 48px; padding-left: 30px;}
    .in_dt { border:3px solid #cbdace; background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#333; font-size:18px; text-indent:0.7em; }
    .in_btn { display:block; background-color:rgb(255, 255, 255); border:2px solid #cbdace;; min-width:300px; margin: 10px auto; height: 40px; 
    color: #333; font-size:18px; line-height: 32px; border-radius:10px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: #cbdace; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd">
        <%@include file = "nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">로그인</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">로그인</h2>
                <div class="form_fr">
                    <form name="frm1" action="loginPro.jsp" method="post" id="loginForm" class="frm">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <th><label for="id">아이디</label></th>
                                    <td>
                                        <input type="text" id="id" name="id" class="in_dt" required autofocus>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="id">비밀번호</label></th>
                                    <td>
                                        <input type="password" id="pw" name="pw" class="in_dt" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit" class="in_btn">로그인</button>
                                        <button type="button" id="join" class="in_btn">회원가입</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <script>
        var join_btn1 = document.getElementById("join");
        join_btn1.addEventListener("click", function(){
            location.href = "term.jsp";
        });    
    </script>
    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
</body>
</html>