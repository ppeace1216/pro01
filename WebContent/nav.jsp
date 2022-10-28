<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
%>
<div class="hd_wrap">
    <a href="index.jsp" class="logo"><img src="./img/logo.png" alt="회사 로고"></a>
    <nav class="tnb">
    <%
    	if(id!=null && id.equals("admin")){
    %>
    	<div>
    		<a href="memList.jsp">회원 관리</a>
    		<a href="boardList.jsp">게시판 관리</a>
        	<a href="logout.jsp">로그아웃</a>
    	</div>
    <%
    	} else if(id!=null) {
    %>
    	<div>
    		<span class="id_print"><%=name %>님</span>
    		<a href="logout.jsp">로그아웃</a>
        	<a href="join.jsp">회원정보</a>
    	</div>
    <%
    	} else {
    %>
    	<div>
    		<a href="login.jsp">로그인</a>
        	<a href="term.jsp">회원가입</a>
    	</div>
    <%
    	}
    %>
    </nav>
    <nav class="gnb">
        <ul>
            <li class="item1">
                <a href="product.jsp#page1" class="dp1">제품</a>
                <ul class="sub">
                    <li><a href="product.jsp#page1">티제품</a></li>
                    <li><a href="product.jsp#page2">티푸드</a></li>
                    <li><a href="product.jsp#page3">티웨어</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="gift.jsp#page1" class="dp1">선물세트</a>
                <ul class="sub">
                    <li><a href="gift.jsp#page1">다다일상 추천</a></li>
                    <li><a href="gift.jsp#page2">베스트</a></li>
                    <li><a href="gift.jsp#page3">티웨어 세트</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="subscription.jsp#page1" class="dp1">다다일상</a>
                <ul class="sub">
                    <li><a href="subscription.jsp#page1">다다일상 구독</a></li>
                    <li><a href="subscription.jsp#page2">다다일상 기록</a></li>
                    <li><a href="faqList.jsp#page1">다다일상 FAQ</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="brand.jsp#page1" class="dp1">브랜드</a>
                <ul class="sub">
                    <li><a href="brand.jsp#page1">다다일상 스토리</a></li>
                    <li><a href="brand.jsp#page2">티뮤지엄 제주</a></li>
                    <li><a href="brand.jsp#page3">티하우스 북촌</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="customer.jsp#page1" class="dp1">고객센터</a>
                <ul class="sub">
                    <li><a href="customer.jsp#page1">매장찾기</a></li>
                    <li><a href="boardList.jsp#page1">문의 게시판</a></li>
                    <li><a href="online.jsp#page1">온라인 상담</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>