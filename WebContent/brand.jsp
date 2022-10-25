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
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>브랜드</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option selected>다다일상 스토리</option>
                    <option value="brand.jsp#page2">티뮤지엄 제주</option>
                    <option value="brand.jsp#page3">티하우스 북촌</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title1">다다일상 스토리</h2>
                <p class="page_p1">대한민국이 가진 천혜의 자연 유산 제주,<br>화산섬 제주가 가진 경이로운 생명력으로<br>다다일상의 차는 탄생합니다.</p>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/forest.jpg" alt="제주제주"></div>
                    <h3 class="story_tit">다다일상의 차가 특별한 이유</h3>
                    <p class="story_p">1995년, 돌과 바람이 전부였던 제주의 땅에서 시작해 최고의 차를 생산하기까지,<br>다다일상의 차가 특별한 이유를 만나보세요.</p><br><br>
                    <div class="img_box_fr2"><img src="./img/tea_garden.jpg" alt="차밭"></div>
                    <h3 class="story_tit">다다일상의 제주 차밭</h3>
                    <p class="story_p">약 100만 평에 달하는 3개의 오설록 유기농 차밭은 화산섬의 지역적 기후 환경에 따라 각각의 색과 향, 그리고 맛이 특별한 차를 생산하고 있습니다.</p><br>
                    <h4 class="story_subtit">색이 좋은 서광 차밭</h4>
                    <p class="story_subp">산방산 근처의 서광 차밭은 대기가 한라산을 지나며 많은 구름과 안개를
                        형성하고, 이는 자연 차광 효과를 내 찻잎의 색을 좋게 만듭니다. 온화한
                        기후와 자연 차광 효과는 고급 품질의 차를 만들 때 더없이 좋은 생육
                        조건이 됩니다.
                    </p><br>
                    <h4 class="story_subtit">향이 좋은 돌송이 차밭</h4>
                    <p class="story_subp">돌송이 차밭 지역은 예로부터 화산재가 굳어서 돌멩이같이 잘게 부서진
                        화산송이가 많아 ‘돌송이’라고 불리어 왔습니다. 이곳은 산과 바다를
                        동시에 접하고 있어 매년 4월 한라산의 잔설을 품은 산바람과 바다의
                        수분을 머금은 바닷바람이 밤낮으로 불어와 돌송이 차밭에서 채엽한
                        차는 향이 매우 좋습니다.
                    </p><br>
                    <h4 class="story_subtit">맛이 좋은 한남 차밭</h4>
                    <p class="story_subp">과거 ‘해들이밭’이라 하여 마을에서 가장 먼저 해가 드는 곳이라 불렸던
                        한남 차밭은 온화한 기후에서 성장해 차나무가 어리고 아미노산 함량이
                        높아 뛰어난 맛을 선사합니다.
                    </p><br><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option value="">브랜드</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>티뮤지엄 제주</option>
                    <option value="brand.jsp#page1">다다일상 스토리</option>
                    <option value="brand.jsp#page3">티하우스 북촌</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">티뮤지엄 제주</h2>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/daily6.jpg" alt="뮤지엄클래스"></div>
                    <h3 class="mus_tit">프리미엄 티 클래스 화산암차 클래스 + 애프터눈 티타임 (55분)</h3>
                    <p class="mus_p">곶자왈 숲을 배경으로 오설록의 발효차와 제주의 원물을 재료로한 다식을 즐기는 시간</p><br>
                    <p class="mus_price">30,000원 / 1인</p><br><br>
                </div>
                <ul class="thumb_lst">
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect05.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>01</span></p>
                                <p class="thumb_tit">웰컴 티타임</p>
                                <p class="thumb_com">다다일상의 유기농 녹차 제공<br>(계절에 따른 변동 메뉴)</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect04.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>03</span></p>
                                <p class="thumb_tit">애프터눈 티 즐기기</p>
                                <p class="thumb_info">- 애프터눈 티 세트 구성<br>
                                    (제주 숲 홍차, 취나물 브루스케타, 곶감호두말이, <br>미니 케이크, 오설록 아이스 경단)<br>
                                    - 현장상황에 따라 다식과 티는 변경될 수 있습니다.
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
                                <p class="thumb_tit">따뜻한 티타임</p>
                                <p class="thumb_com">제주 화산암차, 화산섬 제주와 발효차 이야기</p>
                                <p class="thumb_info">- 후각과 미각 모두를 만족시키는 오설록의 발효차 다례<br>
                                    - 오설록의 대표 발효차 제주 화산암차 제공<br>
                                    - 발효차의 향을 즐기는데 최적화된 자기 개완 사용
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/teacollect02.jpg" alt=""></div>
                            <div class="com_fr">
                                <p class="num"><span>04</span></p>
                                <p class="thumb_tit">발효차 숙성고 투어</p>
                                <p class="thumb_com">기념품 증정</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="mus_box">
                    <h3 class="mus_tit1">유의사항</h3>
                    <p class="mus_p1">온라인 예약시, 2인 이상 예약가능<br>
                        1인 또는 10인 이상, 외국인 단체 예약, 임직원 할인은 전화문의<br>
                        1회 티클래스 최대 정원은 22명, 티라운지는 16명으로 선착순 조기 마감될 수 있습니다.<br>
                        티타임 시작 이후에는 입장이 제한됩니다.<br>
                        투어는 야외로 진행되며, 노약자 또는 이동이 불편하신 분들은 티스톤으로 사전 문의 바랍니다.<br>
                        각 프로그램별로 연령에 제한이 있으니 양해 부탁드립니다.<br>
                        특정 음식에 알러지가 있으신 분은 클래스 시작 하루 전까지 티스톤으로 문의 바랍니다<br>
                        코로나 바이러스 감염 예방을 위해, 일부 서비스를 제공하는 직원들이 마스크를 착용할 수 있습니다.<br>
                        고객과 직원의 안전을 위한 조치이오니 양해 부탁드립니다.</p><br>
                    <p class="mus_call">문의전화 ☎ 010-1234-1234<br></p>
                    <p class="mus_call1">
                        - 상담시간 09:00~18:00(연중무휴)<br>
                        - 점심시간 11:30~12:30
                    </p>
                </div>
            </div>
        </section>
    </div>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option value="">브랜드</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>티하우스 북촌</option>
                    <option value="brand.jsp#page1">다다일상 스토리</option>
                    <option value="brand.jsp#page2">티뮤지엄 제주</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title1">티하우스 북촌</h2>
                <p class="page_p1">북촌의 아름다운 뷰를 누릴 수 있는 곳,<br>다다일상의 새로운 티하우스를 소개합니다.</p>
                <div class="img_box">
                    <div class="img_box_fr"><img src="./img/teahouse.jpg" alt="티하우스"></div>
                    <div class="bottom-wrap">
                    <dl class="bottom-txt">
						<div>
							<dt>OPEN</dt>
							<dd><span>2022. 12. 16</span></dd>
						</div>
						<div>
							<dt>ADDRESS</dt>
							<dd>서울특별시 종로구 북촌로</dd>
						</div>
						<div>
							<dt>STORE HOURS</dt>
							<dd class="last">일 - 목 / <span>11:00-21:00</span>,<br class="mo-br"> 금 - 토 / <span>11:00-22:00 (3F 14:00~)</span><span>11:00-22:00 (3F 14:00~)</span></dd>
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
<a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>