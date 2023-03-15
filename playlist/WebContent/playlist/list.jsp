<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="playlist.Handler"%>
    
<%@ include file="header.jsp" %>

<section>
	<div class="headline">Play List</div>
	
	<table>
		<tr>
			<th>Title</th>
			<th>Artist</th>
			<th>Play time</th>
			<th>Album Title</th>
		</tr>
		
		<% hd.setDummy(); %>
		
		<% for(Song o : hd.getList()) { 
			String hour;
			String min;
			String time;
			String second;		
			
			time = "" + o.getPlayTimeMinute();
			
			if(o.getPlayTimeMinute() < 10) {
				time = "0" + o.getPlayTimeMinute();
			}
			
			if(o.getPlayTimeMinute() >= 60) {
				
				hour = ((o.getPlayTimeMinute() / 60) < 10) ? 
						"0" + o.getPlayTimeMinute() / 60 : 
						"" + o.getPlayTimeMinute() / 60;
				
				min = ((o.getPlayTimeMinute() % 60) < 10) ?
						"0" + o.getPlayTimeMinute() % 60 :
						"" + o.getPlayTimeMinute() % 60;
				
				time = hour + " : " + min;
			}
			
	
			if(o.getPlayTimeSecond() < 10) {
				second = "0" + o.getPlayTimeSecond();
			}
			else second = "" + o.getPlayTimeSecond();
		
		%>
		<tr>
			<td><%=o.getSongName() %></td>
			<td><%=o.getArtist() %></td>
			<td><%=time %> : <%=second %></td>
			<td><%=o.getAlbumName() %></td>
		
		</tr>
		
		<% } %>
		
	</table>

</section>


</body>
</html>