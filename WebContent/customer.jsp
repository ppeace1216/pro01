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
    .page_p{ padding: 1em 1.5em; line-height: 1.5em;font-size: 15px; color: rgb(56, 56, 56); background-color: #cbdace8f; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(255, 255, 255, 0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: rgb(131, 183, 129); }
    .to_top.on { visibility: visible; }

    .in_dt { float: left;border:3px solid #cbdace; background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#333; font-size:18px; text-indent:0.7em; }
    .in_btn { float: left;display:block; background-color:rgb(255, 255, 255); border:2px solid #cbdace;; min-width:300px; margin: 10px auto; height: 40px; 
    color: #333; font-size:18px; line-height: 32px; border-radius:10px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: #cbdace; }
    #map_canvas { margin-bottom:40px; }
    #contact p { text-align:left;	padding-left:30px; line-height:30px; margin-top:25px; padding-right:25px; }
	.map_tab a { display:inline-block; margin:18px; width:150px; text-align: center; line-height: 36px; background-color: #b8de90; color:rgb(72, 72, 72); border-radius:5px; }
    
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
                <select name="sel1" id="sel2" class="sel">
                    <option value="">고객센터</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>매장찾기</option>
                    <option value="boardList.jsp#page1">문의 게시판</option>
                    <option value="online.jsp#page1">온라인 상담</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">매장찾기</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8933.221432481061!2d126.76757885685998!3d37.66399578491193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c85ed25c4399f%3A0x480ac483ea83a85c!2z64W4656Y7ZWY64qUIOu2hOyImOuMgA!5e0!3m2!1sko!2skr!4v1666139044571!5m2!1sko!2skr" width="1200" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" name="g_map" id="g_map"></iframe>
                <div class="map_tab">
                    <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8933.221432481061!2d126.76757885685998!3d37.66399578491193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c85ed25c4399f%3A0x480ac483ea83a85c!2z64W4656Y7ZWY64qUIOu2hOyImOuMgA!5e0!3m2!1sko!2skr!4v1666139044571!5m2!1sko!2skr" target="g_map">일산 본사</a>&nbsp;
                    <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26229.91007964785!2d127.06578496724492!3d34.73697876426351!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357213270f8d16c9%3A0x9dd70fd3ef463f14!2z67O07ISx64W57LCo67CtIOuMgO2VnOuLpOybkA!5e0!3m2!1sko!2skr!4v1666164962366!5m2!1sko!2skr" target="g_map">보성점</a> &nbsp; 
                    <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2383195.76054126!2d125.5993172720727!3d34.417728896277175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5df4514091f7%3A0x1b20bad0d95f73b8!2z64W57LCo67Ct!5e0!3m2!1sko!2skr!4v1666165058814!5m2!1sko!2skr" target="g_map">제주점</a> &nbsp; 
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