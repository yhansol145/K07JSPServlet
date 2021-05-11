<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%>

<%--
buffer : 확정 JSP에서 버퍼를 사용할지 여부를 결정한다.
	8kb가 기본값이고, none으로 지정 시 버퍼를 사용하지 않게 된다. 
autoPlus : 버퍼가 채워졌을때 자동으로 flush할지 결정한다.
	false로 지정할 경우 예외를 발생시키고 작업을 중지한다.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page지시어 - buffer, autoFlush(title)</title>
</head>
<body>
	<%
	for(int i=1 ; i<=100 ; i++){
		out.println("abcde12345");
	}
	%>
</body>
</html>