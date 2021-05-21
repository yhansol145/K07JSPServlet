<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//쿠키매니져 클래스를 통해 쿠키를 생성한다. 유효시간은 10초로 고정한다.
CookieManager.makeCookie(response, "ELCookie", "EL좋아요", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	EL의 내장객체 cookie를 통해 쿠키를 읽어온다.
	-->
	<h3>쿠키값 얻기</h3>
	<li>ELCookie값 : ${cookie.ELCookie.value }</li>
	
	<!-- 
	속성명에 -(하이픈)이 삽입된 경우 .을 통해서는 읽을 수 없다.
	반드시 배열형태로 읽어야 한다.
	-->
	<h3>HTTP헤더 읽기</h3>
	<ul>
		<li>host : ${header.host }</li>
		<li>user-agent : ${header['user-agent'] }</li>
		<!-- 
		헤더명에 하이픈이 있는 속성을 .으로 사용하면 결과값이 0으로 출력된다.
		-->
		<li>user-agent : ${header.user-agent }</li>
		<li>cookie : ${header.cookie }</li>
	</ul>
	
	<h3>컨텍스트 초기화 파라미터 읽기</h3>
	<li>JDBCDriver : ${initParam.JDBCDriver }</li>
	
	<h3>컨텍스트 루트 경로 읽기</h3>
	<li>${pageContext.request.contextPath }</li>
</body>
</html>