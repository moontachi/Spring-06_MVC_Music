<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form.jsp</h1>
	<form action="input4" method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title"/>
				</td>
			</tr>
			<tr>
				<td>가수명</td>
				<td>
					<input type="text" name="singer"/>
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>
					<input type="text" name="price"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>