<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="playlist.Song" />
<jsp:setProperty property="*" name="user" />


<% 
	hd.insert(user);
	String url = "list.jsp";
	response.sendRedirect(cpath + "/playlist/" + url);

%>




</body>
</html>