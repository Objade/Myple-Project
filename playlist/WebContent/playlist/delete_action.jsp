<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>


<%
	String songName = request.getParameter("songName");

	hd.delete(songName);
	
	response.sendRedirect(cpath + "/playlist/");

%>


</body>
</html>