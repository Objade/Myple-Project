<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="playlist.Song" />
<jsp:setProperty property="*" name="user" />

<%

	int idx = Integer.parseInt(request.getParameter("idx"));

	hd.update(idx, user);
	String url = "list.jsp";
	response.sendRedirect(cpath + "/playlist/" + url);
%>







</body>
</html>