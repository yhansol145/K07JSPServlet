<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전송방식(Post, Get) 테스트</h2>
	
	
	<!-- 
	Get방식에는 다음 3가지 형태의 전송방식이 있다.
	1. <a href='' 를 사용하는 방법
	2. JS의 location.href=''를 사용하는 방법
	3. <form method='get' 을 사용하는 방법
	-->
	<h3>Get방식 전송</h3>
	<a href="RequestInfo.jsp?paramNum=123%paramEng=Hello&paramHan=안녕">
		Get방식</a>
	
	<h3>Post방식 전송</h3>
	<form action="RequestInfo.jsp" method="post">
		문자열입력 : <input type="text" name="paramHam" />
		<input type="submit" value="Post방식" />	
	</form>
</body>
</html>