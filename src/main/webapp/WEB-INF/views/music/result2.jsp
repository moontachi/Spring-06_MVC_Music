<%@page import="com.spring.ex.MusicBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>result2.jsp</h1>
	title : <%=request.getParameter("title") %><br>
	singer : ${param.singer }<br>
	price : ${param.price }<br>
<hr>

music.title1 : ${requestScope.music.getTitle() }<br>
music.title2 : ${requestScope.music.title }<br>
music.title3 : ${music.getTitle() }<br>
music.title4 : ${music.title }<br>

<hr>

per.id5 : <%=request.getAttribute("music") %><br>
per.id6 : <%=((MusicBean)request.getAttribute("music")).getTitle() %><br><br>



<hr>


music.singer1 : ${requestScope.music.getSinger() }<br>
music.singer2 : ${requestScope.music.singer }<br>
music.singer3 : ${music.getSinger() }<br>
music.singer4 : ${music.singer }<br>
music.singer5 : <%=((MusicBean)request.getAttribute("music")).getSinger() %><br>

<hr>

per.price1 : ${requestScope.music.getPrice() }<br>
per.price2 : ${requestScope.music.price }<br>
per.price3 : ${music.getPrice() }<br>
per.price4 : ${music.price }<br>
per.price5 : <%=((MusicBean)request.getAttribute("music")).getPrice() %><br>


</body>
</html>