<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<section>
	<div class="headline">Add Music</div>
	<form action="add_action.jsp">
	
    <table>
		
		<tr>
            <th>Title</th>
			<td><input type="text" name="songName" placeholder="곡 제목" required></td>
		</tr>

        <tr>
            <th>Artist</th>
			<td><input type="text" name="artist" placeholder="아티스트" required></td>
		</tr>

        <tr>
            <th>Play time</th>
			<td>
                <input type="number" name="playTimeMinute" placeholder="분" min="0" required> : 
                <input type="number" name="playTimeSecond" placeholder="초" min="0" max="59" required>
            </td>
		</tr>

        <tr>
            <th>Album Title</th>
			<td><input type="text" name="albumName" placeholder="앨범 이름" required></td>	
		</tr>
		
	</table>

    <div class="submit">
        <input type="submit" value="submit">
    </div>
	
	</form>

</section>



</body>
</html>