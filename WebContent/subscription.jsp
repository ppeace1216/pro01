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
    .page_subtitle {padding-top: 1em; text-align: center; font-size: 42px; color: rgb(57, 57, 57);}
    .page_p{ padding: 1em 0; text-align: center; font-size: 20px; color: rgb(120, 120, 120);}
    .page_subtitle2 {padding-top: 1em; font-size: 80px; color: rgb(57, 57, 57);}
    .page_p2{ padding: 1em 0; font-size: 24px; color: rgb(120, 120, 120);}
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: rgb(131, 183, 129); }
    .to_top.on { visibility: visible; }
    .sub_lst {clear: both; width:100%; padding-bottom: 40px;}
    .sub_lst:after {content: ""; display: block; clear: both;}
    .sub_lst li {float:left; position: relative; margin-bottom: 60px; height: 500px;}
    .sub_lst li a {display: block; width: 350px; margin-right: 40px; overflow: hidden; height: 500px;}
    .sub_lst li a img { display:block; width:500px; margin-left: -120px; transition-duration:0.8s; }
    .sub_lst li a:hover img { margin-left: 0; }
    .sub_lst li a .hv_box { width: 350px; height: 500px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .sub_lst li a:hover .hv_box { opacity:1; background-color: rgba(51, 51, 51, 0.407); height: 500px; width: 350px;}
    .sub_tit { position:absolute; top:30px; left: 20px; font-size: 25px;font-weight: 600; line-height:1.5em; letter-spacing :2px;text-shadow:2px 2px 3px rgb(83, 87, 79); }
    .sub_p {position:absolute; top:120px; left: 20px; font-size: 15px;font-weight: 100; line-height:1.5em; letter-spacing :2px;text-shadow:0px 0px 3px #333;}
    .price_text { position:absolute; right:20px; bottom:50px; font-size: 20px;font-weight: 100; line-height:1.5em; letter-spacing :2px;text-shadow:0px 0px 3px #333; }
   
    .pic_lst { clear:both; width: 100%; }
    .pic_lst li { width: 33%; float:left; margin-bottom: 60px; position:relative; }
    .pic_lst li a { display:block; position:relative;}
    .pic_lst li a .pic_fr { width: 100%; height:650px; overflow:hidden; border-right: 3px solid #ececec;border-left: 3px solid #ececec;}
    .pic_lst li a .pic_fr:hover { font-size: 17px; font-weight: 500; text-shadow:1px 1px 0px rgb(200, 200, 200)}
    .pic_lst li a img { display:block; width: 100%; height: 500px; }
    .pic_tit { line-height:1.5; text-align: center; font-size: 30px; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:rgb(73, 73, 73); font-weight: 300; margin-top: 1em;}
    .pic_com { line-height:2; text-align: center; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:rgb(73, 73, 73); font-weight: 100; }
    .pic_hd { position:absolute; top:0; left: 0; z-index:10; width: 100%; height:32px; text-shadow:1px 1px 0px rgb(200, 200, 200);}
    .noti_lst {  width: 100%; }
    .noti_lst li { clear:both; height:100px; border-bottom:2px solid rgb(216, 216, 216);
    box-sizing:border-box; }
    .noti_lst li:first-child { border-top:5px solid rgb(216, 216, 216); }
    .noti_lst li:last-child { border-bottom:5px solid  rgb(216, 216, 216); }
    .noti_lst li span { display:block; box-sizing:border-box; float:left; line-height: 50px; font-size:28px; font-weight: 700; padding-top: 0.8em;}
    .noti_num { width: 150px; text-align:center; }
    .not_tit { overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    .not_tit a:hover {color: rgb(102, 161, 102);font-size:30px; font-weight: 900; text-shadow:1px 1px 0px rgb(200, 200, 200)}
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
                    <option value="">다다일상</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>다다일상 구독</option>
                    <option value="subscription.jsp#page2">다다일상 기록</option>
                    <option value="subscription.jsp#page3">다다일상 FAQ</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">다다일상 구독</h2>
                <h3 class="page_subtitle">다다일상을 만나보세요</h3>
                <p class="page_p">다다일상은 누구나 차를 쉽게 즐길 수 있도록 세 가지 플랜으로 구성되어 있어요.<br>취향에 맞는 플랜을 선택하여 즐겨보세요.</p><br>
                <ul class="sub_lst">
                    <li>
                        <a href="">
                            <img src="./img/sub1.jpg" alt="구독1">
                            <div class="hv_box">
                                <h3 class="sub_tit">새롭게 만나는 차,<br>다다일상 베이직</h3>
                                <p class="sub_p">다다일상 티 소믈리에가 매월<br> 그달의 테마와 어울리는<br>
                                    차들을 선정하여 보내드립니다.<br>
                                    일상의 작은 순간들을 <br>차와 함께 새롭게 만나보세요.</p>
                                <div class="price_text">
                                    <span class="smT">매월</span>
                                    <span class="price">16,000원</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sub2.jpg" alt="구독2">
                            <div class="hv_box">
                                <h3 class="sub_tit">다르게 만나는 차,<br>다다일상 홈카페</h3>
                                <p class="sub_p">매월 다다일상이 티를 이용한 <br>새로운 레시피를 소개해드립니다. 
                                    <br>다양한 레시피를 따라하면서 <br>차를 색다르게 경험해보세요.</p>
                                <div class="price_text">
                                    <span class="smT">매월</span>
                                    <span class="price">25,000원</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sub3.jpg" alt="구독3">
                            <div class="hv_box">
                                <h3 class="sub_tit">매일 만나는 차,<br>다다일상 정기배송</h3>
                                <p class="sub_p">원하는 차를 집에서 <br>매월 편하게 받아보세요.<br>
                                    다다일상과 함께 편안한 <br>티 라이프를 즐겨보세요.</p>
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
                    <option value="">다다일상</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>다다일상 기록</option>
                    <option value="subscription.jsp#page1">다다일상 구독</option>
                    <option value="subscription.jsp#page3">다다일상 FAQ</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">다다일상 기록</h2>
                <h3 class="page_subtitle2">다다일상,</h3>
                <p class="page_p2">차와 함께하는 삶
                    <br><br>
                    차를 마시는 것은 일상의 쉼을 가지며,<br>
                    나를 이끌어내고 세상을 따뜻하게<br>
                    바라보는 것에 관한 일입니다.
                    <br><br>
                    각자의 취향이 묻어있는 다다일상의 차와<br>
                    함께하는 여섯분의 다다일상을 만나보세요.
                </p><br>
                <div class="con_wrap">
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/d4.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">차가운 것으로<br>따뜻한 것을 만들다</h3>
                                    <p class="pic_com">철제 가구 디자이너 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">주변의 모든 것이<br>예술이 되는 과정</h3>
                                    <p class="pic_com">테이핑 아티스트 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/d3.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">잘 달리는 것보다<br>즐겁게 달리는 방법</h3>
                                    <p class="pic_com">러닝 트레이너 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/d2.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">일과 삶 사이<br>자연이라는 쉼표</h3>
                                    <p class="pic_com">오지 캠퍼 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">온전하게 나만을 위한<br>채식이야기</h3>
                                    <p class="pic_com">채식 요리 연구가 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/d1.jpg" alt="">
                                    <div class="pic_hd"></div>
                                    <h3 class="pic_tit">지루한 일상 속<br>평화를 찾다</h3>
                                    <p class="pic_com">취업준비중인 OOO의 티라이프</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
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
                <p class="page_p2">가장 많이 하는 질문들을 모아 알려드립니다!</p>
                <ul class="noti_lst">
                    <li>
                        <span class="noti_num">Q1.</span>
                        <span class="not_tit"><a href="">결제일 변경이 가능한가요?</a></span>
                    </li>
                    <li>
                        <span class="noti_num">Q2.</span>
                        <span class="not_tit"><a href="">배송지 변경은 어떻게 하나요?</a></span>
                    </li>
                    <li>
                        <span class="noti_num">Q3.</span>
                        <span class="not_tit"><a href="">홈카페를 이용하다가 베이직으로 변경할 수 있나요?</a></span>
                    </li>
                    <li>
                        <span class="noti_num">Q4.</span>
                        <span class="not_tit"><a href="">구독 신청은 언제든지 가능한가요?</a></span>
                    </li>
                    <li>
                        <span class="noti_num">Q5.</span>
                        <span class="not_tit"><a href="">이번 달 다다일상은 패스하고 싶어요.</a></span>
                    </li>
                    <li>
                        <span class="noti_num">Q6.</span>
                        <span class="not_tit"><a href="">이번 달에 결제가 되지 않았어요. 왜 그런 건가요?</a></span>
                    </li>
                </ul>
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