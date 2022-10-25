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
        .hd {
            position: fixed;
        }
        .vs {
            clear: both;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }
        .vs img {
            display: block;
            width: 100%;
            height: auto;
        }
        .bread {
            clear: both;
            width: 100%;
            line-height: 60px;
            border-bottom: 3px solid #eee;
        }
        .bread_fr {
            width: 1200px;
            margin: 0 auto;
        }
        .page {
            clear: both;
            width: 100%;
            min-height: 100vh;
        }
        .page:after {
            content: "";
            display: block;
            clear: both;
        }
        .page_wrap {
            width: 1200px;
            margin: 0 auto;
        }
        .content {
            display: none;
        }
        .content:target {
            display: block;
        }
        .page_title {
            padding-top: 1em;
        }
        .page_p {
            padding: 1em 0px;
            font-size: 18px;
        }
        .home {
            color: #333;
        }
        .to_top {
            position: fixed;
            bottom: 80px;
            right: 80px;
            z-index: 999;
            background-color: rgba(11, 11, 11, 0.75);
            color: #fff;
            display: block;
            width: 60px;
            height: 60px;
            line-height: 60px;
            text-align: center;
            font-size: 20px;
            border-radius: 32px;
            visibility: hidden;
            transition-duration: 0.8s;
        }
        .to_top:hover {
            background-color: rgb(131, 183, 129);
        }
        .to_top.on {
            visibility: visible;
        }
        .thumb_lst {
            width: 100%;
            float: left;
            margin-bottom: 50px;
            margin: 20px 0px;
        }
        .thumb_lst li {
            clear: both;
            height: 500px;
        }
        .thumb_lst li a {
            display: block;
        }
        .thumb_lst li .img_fr {
            width: 100%;
            height: 400px;
            overflow: hidden;
            float: left;
        }
        .thumb_lst li .img_fr img {
            display: block;
            width: 100%;
            height: auto;
            margin-top: -200px;
        }
        .thumb_lst li .com_fr {
            padding-left: 30px;
            float: left;
            color: #333;
            margin: 20px 0px;
        }
        .thumb_tit {
            line-height: 2.4;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .thumb_com {
            line-height: 2;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .thumb_price {
            line-height: 1.8;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".to_top").attr("href", location.href);
            $(window).scroll(function () {
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if (tp >= 300) {
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
                        <option value="">선물세트</option>
                        <option value="product.jsp#page1">제품</option>
                        <option value="subscription.jsp#page1">다다일상</option>
                        <option value="brand.jsp#page1">브랜드</option>
                        <option value="customer.jsp#page1">고객센터</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option value="" selected>다다일상의 추천</option>
                        <option value="gift.jsp#page2">베스트</option>
                        <option value="gift.jsp#page3">티웨어 세트</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">다다일상의 추천</h2>
                    <p class="page_p">다다일상에서 자신있게 추천드리는 선물세트입니다.</p>
                    <ul class="thumb_lst">
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily5.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명1</h3>
                                    <p class="thumb_com">제품설명1</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily6.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명2</h3>
                                    <p class="thumb_com">제품설명2</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily7.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명3</h3>
                                    <p class="thumb_com">제품설명3</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
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
                        <option value="">선물세트</option>
                        <option value="product.jsp#page1">제품</option>
                        <option value="subscription.jsp#page1">다다일상</option>
                        <option value="brand.jsp#page1">브랜드</option>
                        <option value="customer.jsp#page1">고객센터</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="" selected>베스트</option>
                        <option value="gift.jsp#page1">다다일상의 추천</option>
                        <option value="gift.jsp#page3">티웨어 세트</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">베스트</h2>
                    <p class="page_p">다다일상에서 이걸 사지 않으면 손해! 꼭 확인하세요!</p>
                    <ul class="thumb_lst">
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily4.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명1</h3>
                                    <p class="thumb_com">제품설명1</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily8.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명2</h3>
                                    <p class="thumb_com">제품설명2</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily1.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명3</h3>
                                    <p class="thumb_com">제품설명3</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
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
                        <option value="">선물세트</option>
                        <option value="product.jsp#page1">제품</option>
                        <option value="subscription.jsp#page1">다다일상</option>
                        <option value="brand.jsp#page1">브랜드</option>
                        <option value="customer.jsp#page1">고객센터</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="" selected>티웨어 세트</option>
                        <option value="gift.jsp#page1">다다일상의 추천</option>
                        <option value="gift.jsp#page2">베스트</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">티웨어 세트</h2>
                    <p class="page_p">집에서도 제대로된 차를 즐기고 싶다면</p>
                    <ul class="thumb_lst">
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily7.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명1</h3>
                                    <p class="thumb_com">제품설명1</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily8.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명2</h3>
                                    <p class="thumb_com">제품설명2</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/daily4.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">제품명3</h3>
                                    <p class="thumb_com">제품설명3</p>
                                    <p class="thumb_price">가격 : 30000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
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
		<%@include file = "footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>