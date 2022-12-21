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

    .content {clear: both; width: 100%;}
    .vs { clear:both; width: 100%; height:645px; overflow:hidden; }
    .img { display:block; width:100%; height:auto; }
    .vs_tit { position:absolute; top:350px; padding-left:350px; font-size: 50px; font-weight: 100; line-height:2em; letter-spacing :10px}
    .page { clear:both; width: 100%;}
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_tit { text-align: left; font-size:30px; font-weight: 700; padding-top:0.8em; padding-bottom: 0.8em; line-height:2em; }
    .page_ex {text-align: left; font-size:20px; font-weight: 100; padding-top:0em; padding-bottom: 0.8em;}
    .pic_lst {clear: both; width:100%; padding-bottom: 40px;}
    .pic_lst:after {content: ""; display: block; clear: both;}
    .pic_lst li {float:left; position: relative; margin-bottom: 60px;}
    .pic_lst li a {display: block; width: 200px; margin-right: 40px; overflow: hidden;}
    .pic_lst li a .hv_box {color: #333;}
    .pic_lst li a:hover .hv_box {color:#588824;font-weight: 700;}
    .pic_com {font-weight: 600;}
    #page2, #page3 { background-color:#f9f9f9; }
    .sub_lst {clear: both; width:100%; padding-bottom: 40px;}
    .sub_lst:after {content: ""; display: block; clear: both;}
    .sub_lst li {float:left; position: relative; margin-bottom: 60px; height: 500px;}
    .sub_lst li a {display: block; width: 350px; margin-right: 40px; overflow: hidden; height: 500px;}
    .sub_lst li a img { display:block; width:500px; margin-left: -120px; transition-duration:0.8s; }
    .sub_lst li a:hover img { margin-left: 0; }
    .sub_lst li a .hv_box { width: 350px; height: 500px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .sub_lst li a:hover .hv_box { opacity:1; background-color: rgba(51, 51, 51, 0.407); height: 500px; width: 350px;}
    .sub_tit { position:absolute; top:30px; left: 20px; font-size: 25px;font-weight: 600; line-height:1.5em; letter-spacing :2px;text-shadow:0px 0px 3px #333; }
    .price_text { position:absolute; right:20px; bottom:50px; font-size: 20px;font-weight: 100; line-height:1.5em; letter-spacing :2px;text-shadow:0px 0px 3px #333; }
    #page3 { background-repeat: no-repeat; background-size: cover; background-position:center center; height: 100vh; background-image:url("./img/teagarden.png"); overflow:hidden; height: 650px; }
    #page3 .page_wrap { width: 100%; }
    #page3 .page_tit {text-align: center; font-size:30px; font-weight: 700; padding-top:2em; padding-bottom: 0.8em;}
    #page3 .page_ex {text-align: center; font-size:20px; font-weight: 100; padding-top:0em; padding-bottom: 2em;}
    .square_lst { clear:both; width: 4455px; }
    .square_lst li { width: 300px; height: 300px; position:relative;  overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .square_lst li a { display:block; width: 100%; height: 100%; }
    .lst { clear:both; width: 1200px;}
    .lst:after { content:""; display:block; clear: both;}
    .lst li { margin-bottom: 40px; }
    .lst li.left { float:left;}
    .lst li.left:after {content: ""; display: block; clear: both;}
    .lst li.right { float:right; width:500px; height: 459px; }
    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; 
    background-position:0px center; background-size:auto 75%; padding-left: 120px; padding-bottom: 30px;}
    .ico_lst li a.icon1 { background-image: url("./img/icon/calicon.png");background-size:auto 60%; }
    .ico_lst li a.icon2 { background-image: url("./img/icon/teaicon.png");}
    .ico_lst li a.icon3 { background-image: url("./img/icon/leaficon.png"); }
    .cate_tit { color:#222; font-size:25px; padding-bottom: 1em; }
    .cate_com { color:#222; font-size:18px; overflow:hidden; font-weight: 100; line-height:2em; white-space:nowrap; text-overflow:ellipsis;}
    </style>
     <script>
        $(document).ready(function(){
            $(window).scroll(function(){
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if(tp>=620){
                    $(".hd").css("position","fixed");
                } else {
                    $(".hd").css("position","absolute");
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
    <div class="content">
        <figure class="vs">
            <img src="./img/teamain.jpg" alt="main image" class="img">
            <h3 class="vs_tit">쌀쌀해진 날씨엔<br>따뜻한 차 한잔</h3>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">오늘은 어떤 차를 마셔볼까요?</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="product.html#page1">
                            <img src="./img/teacollect01.jpg" alt="차1" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">차1</h3>
                                <p class="pic_com">20,000원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="product.html#page1">
                            <img src="./img/teacollect05.jpg" alt="차2" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">차2</h3>
                                <p class="pic_com">35,000원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="product.html#page1">
                            <img src="./img/teacollect03.jpg" alt="차3" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">차3</h3>
                                <p class="pic_com">15,000원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="product.html#page1">
                            <img src="./img/teacollect04.jpg" alt="차4" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">차4</h3>
                                <p class="pic_com">40,000원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="product.html#page1">
                            <img src="./img/teacollect02.jpg" alt="차5" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">차5</h3>
                                <p class="pic_com">50,000원</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">다다일상 구독</h2>
                <p class="page_ex">하루 한번 나를 만나는 시간을 가져보세요</p>
                <ul class="sub_lst">
                    <li>
                        <a href="subscription.html#page1">
                            <img src="./img/sub1.jpg" alt="구독1">
                            <div class="hv_box">
                                <h3 class="sub_tit">새롭게 만나는 차,<br>다다일상 베이직</h3>
                                <div class="price_text">
                                    <span class="smT">매월</span>
                                    <span class="price">16,000원</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="subscription.html#page1">
                            <img src="./img/sub2.jpg" alt="구독2">
                            <div class="hv_box">
                                <h3 class="sub_tit">다르게 만나는 차,<br>다다일상 홈카페</h3>
                                <div class="price_text">
                                    <span class="smT">매월</span>
                                    <span class="price">25,000원</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="subscription.html#page1">
                            <img src="./img/sub3.jpg" alt="구독3">
                            <div class="hv_box">
                                <h3 class="sub_tit">매일 만나는 차,<br>다다일상 정기배송</h3>
                                <div class="price_text">
                                    <span class="smT">3종류 이상<br></span>
                                    <span class="price">35,000원부터 <br>시작하는 다양한 구성</span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page3">
            <div class="page_wrap">
                <h2 class="page_tit">다다일상 기록</h2>
                <p class="page_ex">차를 통해 달라지는 당신의 일상을 만나보세요</p>
                <ul class="square_lst">
                    <li><a href=""><img src="./img/daily1.jpg" alt="일상01" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily2.jpg" alt="일상02" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily3.jpg" alt="일상03" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily4.jpg" alt="일상04" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily5.jpg" alt="일상05" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily6.jpg" alt="일상06" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily7.jpg" alt="일상07" class="thumb"></a></li>
                    <li><a href=""><img src="./img/daily8.jpg" alt="일상08" class="thumb"></a></li>
                </ul>
            </div>
        </section>
        <section class="page" id="page4">
            <div class="page_wrap">
                <h2 class="page_tit">당신의 일상에<br>차가 필요한 순간,<br>다다일상을 만나보세요</h2>
                <ul class="lst">
                    <li class="left">
                        <img src="./img/tea_garden1.jpg" alt="티뮤지엄">
                    </li>
                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="brand.html#page2" class="icon1">
                                    <h3 class="cate_tit">다다일상 티뮤지엄 제주</h3>
                                    <p class="cate_com">제주에서 즐기는 다양한 체험 <br>프로그램으로 차를 만나보세요</p>
                                </a>
                            </li>
                            <li>
                                <a href="brand.html#page3" class="icon2">
                                    <h3 class="cate_tit">다다일상 티하우스 북촌</h3>
                                    <p class="cate_com">북촌에서 전통적인 차를 만나보세요</p>
                                </a>
                            </li>
                            <li>
                                <a href="brand.html#page1" class="icon3">
                                    <h3 class="cate_tit">다다일상 스토리</h3>
                                    <p class="cate_com">다다일상에 대해 더 알아보고 싶다면</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
</body>
</html>