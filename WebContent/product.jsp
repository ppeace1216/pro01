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
    .page_title { padding: 1em 0; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: rgb(131, 183, 129); }
    .to_top.on { visibility: visible; }
    .pic_lst { clear:both; width: 100%; }
    .pic_lst li { width: 30%; float:left; margin-right: 5%; margin-bottom: 60px; position:relative; }
    .pic_lst li a { display:block; position:relative;}
    .pic_lst li a .pic_fr { width: 100%; height:550px; overflow:hidden;}
    .pic_lst li a .pic_fr:hover { font-size: 17px; font-weight: 700; text-shadow:1px 1px 0px rgb(200, 200, 200)}
    .pic_lst li a img { display:block; width: 100%; height: 450px; }
    .pic_lst li:nth-child(3n) { margin-right: 0; }
    .pic_tit { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:#222; }
    .pic_com, .pic_info { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:#222; }
    .pic_hd { position:absolute; top:0; left: 0; z-index:10; 
    width: 100%; height:32px; text-shadow:2px 2px 0px rgb(200, 200, 200);}
    .ht_ico { display:block; float:left; width:100px; line-height: 32px; height: 32px; padding-left: 10px; padding-top: 10px; color:rgb(255, 255, 255);  font-size: 30px; font-weight: 900;}
    .best:before { content:"BEST";}
    .new:before { content:"NEW"; }
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
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option value="">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>티제품</option>
                    <option value="product.jsp#page2">티푸드</option>
                    <option value="product.jsp#page3">티웨어</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">티제품</h2>
                <div class="con_wrap">
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 1</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 2</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">25,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 3</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 4</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 5</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 6</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 7</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 8</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub3.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 9</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
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
                    <option value="">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>티푸드</option>
                    <option value="product.jsp#page1">티제품</option>
                    <option value="product.jsp#page3">티웨어</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">티푸드</h2>
                <div class="con_wrap">
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 1</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 2</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">25,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 3</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 4</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 5</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 6</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 7</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 8</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub1.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 9</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
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
                    <option value="">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                    <option value="customer.jsp#page1">고객센터</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>티웨어</option>
                    <option value="product.jsp#page1">티제품</option>
                    <option value="product.jsp#page2">티푸드</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">티웨어</h2>
                <div class="con_wrap">
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico best"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 1</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 2</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">25,000원</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico new"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 3</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 4</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 5</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 6</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 7</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 8</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="pic_fr">
                                    <img src="./img/sub2.jpg" alt="">
                                    <div class="pic_hd"><span class="ht_ico"><span class="starating"></span></span></div>
                                    <h3 class="pic_tit">제품 9</h3>
                                    <p class="pic_com">제품 설명</p>
                                    <p class="pic_info">30,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
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