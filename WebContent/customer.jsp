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
    .frm { border:3px solid #cbdace; padding: 30px; width: 1135px; margin:50px auto; }
    .frm_tb { display:table; }
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .sel {color: #333; height: 20px;}
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:900px }
    .frm_tb .td2 { width:300px; }
    .frm_tb label:before { content:"*"; }
    .in_dt { float: left;border:3px solid #cbdace; background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#333; font-size:18px; text-indent:0.7em; }
    .in_btn { float: left;display:block; background-color:rgb(255, 255, 255); border:2px solid #cbdace;; min-width:300px; margin: 10px auto; height: 40px; 
    color: #333; font-size:18px; line-height: 32px; border-radius:10px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: #cbdace; }
    #map_canvas { margin-bottom:40px; }
    #contact p { text-align:left;	padding-left:30px; line-height:30px; margin-top:25px; padding-right:25px; }
	.map_tab a { display:inline-block; margin:18px; width:150px; text-align: center; line-height: 36px; background-color: #b8de90; color:rgb(72, 72, 72); border-radius:5px; }
    
    .noti_lst { width: 100%; float:left; margin-bottom: 80px;}
    .noti_lst li { clear:both; height:40px; border-bottom:1px solid rgb(216, 216, 216); box-sizing:border-box; margin: 10px 0;}
    .noti_lst li:first-child { border-top:5px solid rgb(216, 216, 216); }
    .noti_lst li:last-child { border-bottom:5px solid  rgb(216, 216, 216); }
    .noti_lst li span { display:block; box-sizing:border-box; float:left; line-height: 28px; font-size:18px; font-weight: 100;}
    .noti_num { width: 150px; text-align:center; }
    .not_tit { width: 750px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    .not_tit a:hover {color: rgb(102, 161, 102);font-size:18px; font-weight: 600; }
    .item_hd { font-weight:700; }
    .not_tit.item_hd { text-align: center; }
    .noti_auth { width: 150px; text-align: center; }
    .noti_date { width: 150px; text-align: center; }
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
                    <option value="">고객센터</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>문의하기</option>
                    <option value="customer.jsp#page2">매장찾기</option>
                    <option value="customer.jsp#page3">공지사항</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">문의하기</h2>
                <p class="page_p">문의사항을 남겨주시면 빠른 시간내에 답변을 드리도록 하겠습니다.<br>
                문의하시기 전 FAQ를 참고해주세요.<br>
                한번 등록한 상담내용은 수정이 불가능합니다.<br>
                수정을 원하시는 경우 삭제 후 재등록하셔야 합니다.<br>
                알림 받기를 설정하시면 1:1 상담 답변완료시 고객님의 메일과 카카오톡 알림톡으로도 확인하실 수 있습니다.<br>
                고객상담센터 답변가능시간 오전 9시~오후 6시(토/일/공휴일 제외)<br>
                </p>
                <div class="form_fr">
                    <form name="frm1" action="" method="post" id="joinForm" class="frm">
                        <ul class="frm_tb">
                            <li>
                                <div class="th"><label for="name">성  함</label></div>
                                <div class="td">
                                    <input type="text" id="name" name="name" class="in_dt" required>
                                </div>
                            </li>
                            <li>
                                <div class="th">문의 유형</div>
                                <div class="td">
                                    <select name="sel" id="sel">
                                        <option value="0"selected>아래 유형 중 선택해주세요</option>
                                        <option value="1">주문/결제</option>
                                        <option value="2">배송</option>
                                        <option value="3">환불/반품/교환</option>
                                        <option value="4">이벤트/쿠폰</option>
                                        <option value="5">회원/포인트</option>
                                        <option value="6">사이트 이용/기타</option>
                                    </select>
                                </div>
                            </li>
                            <li>
                                <div class="th"><label for="title">제  목</label></div>
                                <div class="td">
                                    <input type="text" id="title" name="title" class="in_dt" required>
                                </div>
                            </li>
                            <li>
                                <div class="th">문의 내용</div>
                                <div class="td">
                                    <textarea name="memo" id="memo" cols="80" rows="80"></textarea>
                                </div>
                            </li>
                            <li>
                                <div class="th">이미지 등록</div>
                                <div class="td">
                                    <input type="file" name="file" id="file">
                                    <input type="hidden" name="idck" id="idck" value="">
                                </div>
                            </li>
                            <li>
                                <div class="td2">
                                    <button type="reset" class="in_btn">취소</button>
                                    <button type="submit" class="in_btn">등록</button>
                                </div>
                            </li>
                        </table>
                    </form>
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
                    <option value="">고객센터</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>매장찾기</option>
                    <option value="customer.jsp#page1">문의하기</option>
                    <option value="customer.jsp#page3">공지사항</option>
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
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/tea_garden.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option value="">고객센터</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="gift.jsp#page1">선물세트</option>
                    <option value="subscription.jsp#page1">다다일상</option>
                    <option value="brand.jsp#page1">브랜드</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>공지사항</option>
                    <option value="customer.jsp#page1">문의하기</option>
                    <option value="customer.jsp#page2">매장찾기</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">공지사항</h2>
                <ul class="noti_lst">
                    <li class="item_hd">
                        <span class="noti_num item_hd">번호</span>
                        <span class="not_tit item_hd">제목</span>
                        <span class="noti_auth item_hd">작성자</span>
                        <span class="noti_date item_hd">작성일</span>
                    </li>
                    <li>
                        <span class="noti_num">1</span>
                        <span class="not_tit"><a href="">[제휴 안내] 다다일상 x KT '10월 나의 초이스' 서비스 이용</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-19</span>
                    </li>
                    <li>
                        <span class="noti_num">2</span>
                        <span class="not_tit"><a href="">[제휴 안내] PAYCO 10월 페이백 프로모션 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-19</span>
                    </li>
                    <li>
                        <span class="noti_num">3</span>
                        <span class="not_tit"><a href="">	[제휴 안내] SKT 10월 VIP Pick 프로모션 이용 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-19</span>
                    </li>
                    <li>
                        <span class="noti_num">4</span>
                        <span class="not_tit"><a href="">다다일상카드 이용약관 변경 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-19</span>
                    </li>
                    <li>
                        <span class="noti_num">5</span>
                        <span class="not_tit"><a href="">제 17기 주식회사 다다데일리 결산공고</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-18</span>
                    </li>
                    <li>
                        <span class="noti_num">6</span>
                        <span class="not_tit"><a href="">개인정보처리방침 변경 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-18</span>
                    </li>
                    <li>
                        <span class="noti_num">7</span>
                        <span class="not_tit"><a href="">멤버십 이용약관 변경 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-18</span>
                    </li>
                    <li>
                        <span class="noti_num">8</span>
                        <span class="not_tit"><a href="">개인정보처리방침 변경 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-18</span>
                    </li>
                    <li>
                        <span class="noti_num">9</span>
                        <span class="not_tit"><a href="">멤버십 이용약관 및 다다일상 카드 이용약관 변경 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-17</span>
                    </li>
                    <li>
                        <span class="noti_num">10</span>
                        <span class="not_tit"><a href="">본인인증 정보 없는 휴면회원 정보 삭제 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-17</span>
                    </li>
                    <li>
                        <span class="noti_num">11</span>
                        <span class="not_tit"><a href="">2021 플래너 - 4종 쿠폰 사용 불가 매장 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-17</span>
                    </li>
                    <li>
                        <span class="noti_num">12</span>
                        <span class="not_tit"><a href="">홀케이크 예약 픽업 구매혜택 (쿠폰팩 3종) 사용 가능 매장 리스트</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-16</span>
                    </li>
                    <li>
                        <span class="noti_num">13</span>
                        <span class="not_tit"><a href="">	홀케이크 사전예약 유의사항 안내(위시 케이크 2종)</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-16</span>
                    </li>
                    <li>
                        <span class="noti_num">14</span>
                        <span class="not_tit"><a href="">이벤트 기프트카드 유의사항 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-16</span>
                    </li>
                    <li>
                        <span class="noti_num">15</span>
                        <span class="not_tit"><a href="">PC 크롬 브라우저 결제시스템 사용 안내</a></span>
                        <span class="noti_auth">관리자</span>
                        <span class="noti_date">2022-10-16</span>
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