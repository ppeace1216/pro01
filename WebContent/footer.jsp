<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
    <div class="ft_logo"><img src="./img/logo.png" alt="하단로고"></div>
    <div class="mid_box">
        <nav class="fnb">
            <a href="sitemap.jsp" class="dgc">사이트 맵</a>
            <a href="member01.jsp">개인정보 처리 방침</a>
            <a href="member02.jsp">이용약관</a>
            <a href="member03.jsp">이메일무단수집거부</a>
        </nav>
        <p class="addr">
            DADA DAILY | 대표이사 | 박평화 사업자등록번호:123-45-67890<br>
            서울특별시 용산구 한강대로 100, 100층(한강로2가) | ppeace1216@naver.com<br>
            통신판매업신고번호: 2022-고양일산-1216호<br>
            당 사는 통신판매중개자이며, 통신 판매의 당사자가 아닙니다. 상품 및 거래에 관한 의무와 책임은 판매자에게 있습니다.  
        </p>
        <p class="copyright">COPYRIGHT ⓒ DADADAILY CO., LTD. ALL RIGHTS RESERVED.</p>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">패밀리 사이트</option>
            <option value="https://www.osulloc.com/kr/ko">OSULLOC</option>
            <option value="https://wedisplay.solutions/">WEDISPLAY</option>
        </select>
    </div>
    <script>
    function sel_link(sel){
        location.href = sel.value;
    }
    </script>
</div>