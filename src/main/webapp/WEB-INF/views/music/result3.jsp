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
	<h1>result3.jsp</h1>
	title : ${musicBean.title }<br>
	title2 : ${musicBean.getTitle() }<br>
	title3 : ${requestScope.musicBean.title }<br>
	<hr>
	
	singer : ${musicBean.singer }<br>
	singer2 : ${musicBean.getSinger() }<br>
	singer3 : ${requestScope.musicBean.singer }<br>
	<hr>
	
	price : ${musicBean.price }<br>
	price2 : ${musicBean.getPrice() }<br>
	pricer3 : ${requestScope.musicBean.price }<br>
	<hr>

</body>
</html>