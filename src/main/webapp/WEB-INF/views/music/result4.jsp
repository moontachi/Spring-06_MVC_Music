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
	<h1>result4.jsp</h1>
	title : ${m.title }<br>
	title2 : ${m.getTitle() }<br>
	title3 : ${requestScope.m.title }<br>
	<hr>
	
	singer : ${m.singer }<br>
	singer2 : ${m.getSinger() }<br>
	singer3 : ${requestScope.m.singer }<br>
	<hr>
	
	price : ${m.price }<br>
	price2 : ${m.getPrice() }<br>
	pricer3 : ${requestScope.m.price }<br>
	<hr>

</body>
</html>