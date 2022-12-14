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
    .content { display:none; }
    .content:target { display:block; }
    .page_title { padding-top: 1em; }
    .page_title1 { padding: 0.5em 0; text-align: center; font-size: 60px; font-weight: 400;}
    .page_p1 {padding-bottom: 1em; text-align: center; font-size: 18px; font-weight: 100;}
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: rgb(131, 183, 129); }
    .to_top.on { visibility: visible; }
    .img_box { clear:both; width: 1200px; margin:20px auto;}
    .img_box_fr { float:right; margin:10px; width: 1200px; height: 500px; overflow:hidden; }
    .img_box_fr img { display:block; width: 100%; height: auto; }
    .img_box_fr2 { float:right; margin:10px; width: 1200px; height: 300px; overflow:hidden; }
    .img_box_fr2 img { display:block; width: 100%; height: auto; margin-top:-300px;}
    .story_tit {font-size: 40px;font-weight: 900; line-height: 3em;}
    .story_p {font-size: 20px;line-height: 2em;}
    .story_subtit {color: rgb(56, 96, 56);font-size: 25px;font-weight: 700; line-height: 2em;}
    .mus_box {clear:both; width: 100%; background-color: #ececec; padding : 20px; }
    .mus_tit {font-size: 25px;font-weight: 900; line-height: 3em;}
    .mus_tit1 {font-size: 20px;font-weight: 900; line-height: 1.5em;}
    .mus_p {font-size: 18px; line-height: 1.5em;}
    .mus_p1 {font-size: 15px; line-height: 1.5em; padding-left : 20px;}
    .mus_price{font-size: 20px;font-weight: 900; line-height: 1em;}
    .mus_call{font-size: 18px; font-weight: 900;line-height: 1.5em;}
    .mus_call1{font-size: 15px; font-weight: 100;line-height: 1.5em; padding-left : 20px;}
    .thumb_lst { width:50%; float:left; margin-bottom: 50px; background-color: #ececec;}
    .thumb_lst li { clear:both; border-bottom:3px solid #ececec; height: 200px;}
    .thumb_lst li a { display:block; }
    .thumb_lst li .img_fr { width: 200px; height: 200px; overflow:hidden; float:left; }
    .thumb_lst li .img_fr img { display:block; width: 100%; height:auto; margin-top:-28px; }
    .thumb_lst li .com_fr { padding-left: 30px; float:left; color:#333; }
    .thumb_tit { line-height: 1.5; font-size: 18px; font-weight: 800; }
    .thumb_com { line-height:1.5; font-size: 15px; font-weight: 300; }
    .thumb_info { line-height: 1.5; font-size: 12px; font-weight: 300; }
    .num {width: 24px;height: 24px;margin:12px 0px;line-height: 24px;text-align: center;background: #333;border-radius: 50%;}
    .num>span {display: inline-block; margin-left: 0.04em; font-size: 13px; color: #fff; line-height: 1; letter-spacing: .04em;}
    
    
    .bottom-wrap {clear:both; width: 100%; padding-top: -20px; padding-bottom: 50px;}
    .bottom-txt {position: relative;padding-top: 25px;font-size: 0;max-width: 650px;height: 155px;margin: 60px auto 0;text-align: center;box-sizing: border-box;}
    .bottom-txt:after {position: absolute;content: "";top: 25px;left: 156px;height: 105px;width: 1px;background: #d5d5d5;}
    .bottom-txt dt {display: inline-block;width: 25%;vertical-align: middle;font-size: 18px;line-height: 33px;color: #212222;font-weight: 500;letter-spacing: 1px;text-align: left;}
    .bottom-txt dd {display: inline-block;vertical-align: middle;padding-left: 20px;font-size: 17px;line-height: 33px;color: #787878;box-sizing: border-box; width: 75%; text-align: left;}
    .bottom-txt dd span {font-weight: 400;font-family: 'Noto Sans KR';}
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
        <%@ include file = "nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>?????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="gift.jsp#page1">????????????</option>
                    <option value="subscription.jsp#page1">????????????</option>
                    <option value="customer.jsp#page1">????????????</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option selected>???????????? ?????????</option>
                    <option value="brand.jsp#page2">???????????? ??????</option>
                    <option value="brand.jsp#page3">???????????? ??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title1">???????????? ?????????</h2>
                <p class="page_p1">??????????????? ?????? ????????? ?????? ?????? ??????,<br>????????? ????????? ?????? ???????????? ???????????????<br>??????????????? ?????? ???????????????.</p>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/forest.jpg" alt="????????????"></div>
                    <h3 class="story_tit">??????????????? ?????? ????????? ??????</h3>
                    <p class="story_p">1995???, ?????? ????????? ???????????? ????????? ????????? ????????? ????????? ?????? ??????????????????,<br>??????????????? ?????? ????????? ????????? ???????????????.</p><br><br>
                    <div class="img_box_fr2"><img src="./img/tea_garden.jpg" alt="??????"></div>
                    <h3 class="story_tit">??????????????? ?????? ??????</h3>
                    <p class="story_p">??? 100??? ?????? ????????? 3?????? ????????? ????????? ????????? ???????????? ????????? ?????? ????????? ?????? ????????? ?????? ???, ????????? ?????? ????????? ?????? ???????????? ????????????.</p><br>
                    <h4 class="story_subtit">?????? ?????? ?????? ??????</h4>
                    <p class="story_subp">????????? ????????? ?????? ????????? ????????? ???????????? ????????? ?????? ????????? ?????????
                        ????????????, ?????? ?????? ?????? ????????? ??? ????????? ?????? ?????? ????????????. ?????????
                        ????????? ?????? ?????? ????????? ?????? ????????? ?????? ?????? ??? ????????? ?????? ??????
                        ????????? ?????????.
                    </p><br>
                    <h4 class="story_subtit">?????? ?????? ????????? ??????</h4>
                    <p class="story_subp">????????? ?????? ????????? ???????????? ???????????? ????????? ??????????????? ?????? ?????????
                        ??????????????? ?????? ????????????????????? ????????? ????????????. ????????? ?????? ?????????
                        ????????? ????????? ?????? ?????? 4??? ???????????? ????????? ?????? ???????????? ?????????
                        ????????? ????????? ??????????????? ???????????? ????????? ????????? ???????????? ?????????
                        ?????? ?????? ?????? ????????????.
                    </p><br>
                    <h4 class="story_subtit">?????? ?????? ?????? ??????</h4>
                    <p class="story_subp">?????? ???????????????????????? ?????? ???????????? ?????? ?????? ?????? ?????? ????????? ?????????
                        ?????? ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????? ?????????
                        ?????? ????????? ?????? ???????????????.
                    </p><br><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option value="">?????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="gift.jsp#page1">????????????</option>
                    <option value="subscription.jsp#page1">????????????</option>
                    <option value="customer.jsp#page1">????????????</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>???????????? ??????</option>
                    <option value="brand.jsp#page1">???????????? ?????????</option>
                    <option value="brand.jsp#page3">???????????? ??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">???????????? ??????</h2>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/daily6.jpg" alt="??????????????????"></div>
                    <h3 class="mus_tit">???????????? ??? ????????? ???????????? ????????? + ???????????? ????????? (55???)</h3>
                    <p class="mus_p">????????? ?????? ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ????????? ??????</p><br>
                    <p class="mus_price">30,000??? / 1???</p><br><br>
                </div>
                <ul class="thumb_lst">
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect05.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>01</span></p>
                                <p class="thumb_tit">?????? ?????????</p>
                                <p class="thumb_com">??????????????? ????????? ?????? ??????<br>(????????? ?????? ?????? ??????)</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect04.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>03</span></p>
                                <p class="thumb_tit">???????????? ??? ?????????</p>
                                <p class="thumb_info">- ???????????? ??? ?????? ??????<br>
                                    (?????? ??? ??????, ????????? ???????????????, ??????????????????, <br>?????? ?????????, ????????? ????????? ??????)<br>
                                    - ??????????????? ?????? ????????? ?????? ????????? ??? ????????????.
                                </p>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="thumb_lst">
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect03.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>02</span></p>
                                <p class="thumb_tit">????????? ?????????</p>
                                <p class="thumb_com">?????? ????????????, ????????? ????????? ????????? ?????????</p>
                                <p class="thumb_info">- ????????? ?????? ????????? ??????????????? ???????????? ????????? ??????<br>
                                    - ???????????? ?????? ????????? ?????? ???????????? ??????<br>
                                    - ???????????? ?????? ???????????? ???????????? ?????? ?????? ??????
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect02.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>04</span></p>
                                <p class="thumb_tit">????????? ????????? ??????</p>
                                <p class="thumb_com">????????? ??????</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="mus_box">
                    <h3 class="mus_tit1">????????????</h3>
                    <p class="mus_p1">????????? ?????????, 2??? ?????? ????????????<br>
                        1??? ?????? 10??? ??????, ????????? ?????? ??????, ????????? ????????? ????????????<br>
                        1??? ???????????? ?????? ????????? 22???, ??????????????? 16????????? ????????? ?????? ????????? ??? ????????????.<br>
                        ????????? ?????? ???????????? ????????? ???????????????.<br>
                        ????????? ????????? ????????????, ????????? ?????? ????????? ???????????? ????????? ??????????????? ?????? ?????? ????????????.<br>
                        ??? ?????????????????? ????????? ????????? ????????? ?????? ??????????????????.<br>
                        ?????? ????????? ???????????? ????????? ?????? ????????? ?????? ?????? ????????? ??????????????? ?????? ????????????<br>
                        ????????? ???????????? ?????? ????????? ??????, ?????? ???????????? ???????????? ???????????? ???????????? ????????? ??? ????????????.<br>
                        ????????? ????????? ????????? ?????? ??????????????? ?????? ??????????????????.</p><br>
                    <p class="mus_call">???????????? ??? 010-1234-1234<br></p>
                    <p class="mus_call1">
                        - ???????????? 09:00~18:00(????????????)<br>
                        - ???????????? 11:30~12:30
                    </p>
                </div>
            </div>
        </section>
    </div>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option value="">?????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="gift.jsp#page1">????????????</option>
                    <option value="subscription.jsp#page1">????????????</option>
                    <option value="customer.jsp#page1">????????????</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>???????????? ??????</option>
                    <option value="brand.jsp#page1">???????????? ?????????</option>
                    <option value="brand.jsp#page2">???????????? ??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title1">???????????? ??????</h2>
                <p class="page_p1">????????? ???????????? ?????? ?????? ??? ?????? ???,<br>??????????????? ????????? ??????????????? ???????????????.</p>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/teahouse.jpg" alt="????????????"></div>
                    <div class="bottom-wrap">
                    <dl class="bottom-txt">
						<div>
							<dt>OPEN</dt>
							<dd><span>2022. 12. 16</span></dd>
						</div>
						<div>
							<dt>ADDRESS</dt>
							<dd>??????????????? ????????? ?????????</dd>
						</div>
						<div>
							<dt>STORE HOURS</dt>
							<dd class="last">??? - ??? / <span>11:00-21:00</span>,<br class="mo-br"> ??? - ??? / <span>11:00-22:00 (3F 14:00~)</span><span>11:00-22:00 (3F 14:00~)</span></dd>
						</div>
				    </dl>
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
<a href="" class="to_top">???</a><!-- .to_top.on -->
</body>
</html>