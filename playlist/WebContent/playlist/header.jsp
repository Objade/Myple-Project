<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="playlist.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	String cpath = request.getContextPath();
	
	Handler hd = (Handler)application.getAttribute("handler");
	
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);
	}

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myple</title>

<style>

	body{
           background-color: #BCC5CE;
       }

      div.songName {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          font-style: italic;
          font-family: 'Times New Roman', Times, serif;
          font-size: 30px;
          margin: 10px;
      }
      
      div.img {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;

          width: 100%;

      }

      div.cover {
          cursor: pointer;
      }

      nav {
          display: flex;
          width: 500px;
          margin: 30px auto;
      }

      nav > ul {
          display: flex;
          width: 100%;
          justify-content: space-around;
          list-style: none;
          padding: 0;
      }

      nav > ul {
          font-family: 'Times New Roman', Times, serif;
          font-size: 20px;
          cursor: pointer;
      }

	a {
		color: black;
		text-decoration: none;
	}

	table {
		    border-collapse: collapse;
            width: 100%;
    }
    
    td, th {
        border-top: 1px solid #7d8389;
        padding: 10px;
        
        font-family: 'Times New Roman', Times, serif;
        
        text-align: center;
    }
    
    td {
    	background-color: white;
    }
    
    div.headline {
    	margin: 0 10px;
    	font-family: 'Times New Roman', Times, serif;
    	font-size: 40px;
    	font-weight: bold;
    	padding: 0 0 20px 0;
    }

	input[type="number"] {
        width: 50px;
    }

    div.submit {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 10px;
    }

    input[type="submit"] {
        width: 50%;
        font-family: 'Times New Roman', Times, serif;
        background-color: #7d8389;
        border: 0;
        padding: 10px;
        color: #f6f6f6;
        font-size: 15px;
    }

    input[type="submit"] {
        cursor: pointer;
    }

	 button {
        font-family: 'Times New Roman', Times, serif;
        background-color: #7d8389;
        border: 0;
        padding: 8px;
        color: #f6f6f6;
    }

    button:hover {
        cursor: pointer;
    }
    
    
</style>


</head>
<body>





<header>
	<div class="wrap">
        
        <nav>
            <ul>
            	<li><a href="<%=cpath%>/index.jsp">Home</a></li>
                <li><a href="<%=cpath%>/playlist/list.jsp">List</a></li>
                <li><a href="<%=cpath%>/playlist/add.jsp">Add</a></li>
                <li><a href="<%=cpath%>/playlist/delete.jsp">Delete</a></li>
                <li><a href="<%=cpath%>/playlist/update.jsp">Update</a></li>
            </ul>
        </nav>
    </div>
	

</header>
	
	