<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from membera where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			out.println("<p>"+id+"</p>");
			out.println("<p>해당 아이디는 사용할 수 없습니다.</p>");
			response.sendRedirect("idcheck.jsp");
		} else {
			out.println("<p>"+id+"</p>");
			out.println("<p>해당 아이디는 사용 가능합니다.</p>");
			out.println("<a href='javascript:apply(\""+id+"\")'>"+id+"[확인]</a>");
			out.println("<p>입력하신 아이디를 사용하시려면 확인을 눌러주세요.</p>");
		}
%>
	<script>
	function apply(fid){
		opener.document.frm1.id.value=fid;
		opener.document.frm1.idck.value="yes";
		window.close();
	}
	</script>
<%
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>