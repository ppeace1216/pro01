<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, java.text.*" %>
<%@ include file = connectionPool.conf %>
<%@ include file = connectionEnd.conf %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file = "head.jsp" %>

</head>
<body>
<div class="wrap">
    <header class="hd">
        <%@ include file = "nav.jsp" %>
    </header>

    <footer class="ft">
		<%@ include file = "footer.jsp" %>
    </footer>
</div>
</body>
</html>