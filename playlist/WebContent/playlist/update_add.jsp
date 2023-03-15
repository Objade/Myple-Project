<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>

<%
	String songName = request.getParameter("songName");
	String artist = request.getParameter("artist");
	int playTimeMinute = Integer.parseInt(request.getParameter("playTimeMinute"));
	int playTimeSecond = Integer.parseInt(request.getParameter("playTimeSecond"));
	String albumName = request.getParameter("albumName");
	int idx = Integer.parseInt(request.getParameter("idx"));

%>


<section>
	<form action="update_action.jsp">
	<input type="hidden" name="idx" value="<%=idx %>">
	
    <table>
		
		<tr>
            <th>Title</th>
			<td><input type="text" name="songName" placeholder="곡 제목" value="<%=songName %>" required></td>
		</tr>

        <tr>
            <th>Artist</th>
			<td><input type="text" name="artist" placeholder="아티스트" value="<%=artist %>" required></td>
		</tr>

        <tr>
            <th>Play time</th>
			<td>
                <input type="number" name="playTimeMinute" placeholder="분" min="0" value="<%=playTimeMinute %>" required> : 
                <input type="number" name="playTimeSecond" placeholder="초" min="0" max="59" value="<%=playTimeSecond %>" required>
            </td>
		</tr>

        <tr>
            <th>Album Title</th>
			<td><input type="text" name="albumName" placeholder="앨범 이름" value="<%=albumName %>" required></td>	
		</tr>
		
	</table>

    <div class="submit">
        <input type="submit" value="submit">
    </div>
	
	</form>

</section>

</body>
</html>