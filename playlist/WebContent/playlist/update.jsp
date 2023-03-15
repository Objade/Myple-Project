<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>


<section>
	
	<div class="headline">Update Music</div>
	
	<table>
		<tr>
			<th>Title</th>
			<th>Artist</th>
			<th>Play Time</th>
			<th>Album Title</th>
            <th>Delete</th>
		</tr>
		
		<% for(Song ob : hd.getList()) { 
			String hour;
			String min;
			String time;
			String second;		
			
			time = "" + ob.getPlayTimeMinute();
			
			if(ob.getPlayTimeMinute() < 10) {
				time = "0" + ob.getPlayTimeMinute();
			}
			
			if(ob.getPlayTimeMinute() >= 60) {
				
				hour = ((ob.getPlayTimeMinute() / 60) < 10) ? 
						"0" + ob.getPlayTimeMinute() / 60 : 
						"" + ob.getPlayTimeMinute() / 60;
				
				min = ((ob.getPlayTimeMinute() % 60) < 10) ?
						"0" + ob.getPlayTimeMinute() % 60 :
						"" + ob.getPlayTimeMinute() % 60;
				
				time = hour + " : " + min;
			}
			
	
			if(ob.getPlayTimeSecond() < 10) {
				second = "0" + ob.getPlayTimeSecond();
			}
			else second = "" + ob.getPlayTimeSecond();
			
		
		%>
		
		<tr>
			<td><%=ob.getSongName() %></td>
			<td><%=ob.getArtist() %></td>
			<td><%=time %> : <%=second %></td>
			<td><%=ob.getAlbumName() %></td>
			<td><a href="<%=cpath %>/playlist/update_add.jsp?songName=<%=ob.getSongName() %>
															&artist=<%=ob.getArtist() %>
															&playTimeMinute=<%=ob.getPlayTimeMinute() %>
															&playTimeSecond=<%=ob.getPlayTimeSecond() %>
															&albumName=<%=ob.getAlbumName() %>
															&idx=<%=ob.getIdx() %>">
				<button>update</button>		
				</a>
			</td>
		</tr>
	
		<% } %>
	
	
	</table>

</section>

</body>
</html>