<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
include 지시어 : 공통으로 사용할 JSP파일을 생성한 후
	현재문서에 포함시킬때 사용한다. 각각의 JSP파일 상단에는
	반드시 page 지시어가 삽입되어야 한다.
	단, 하나의 JSP파일에서 page지시어가 중복선언되면 안된다.
--%>
<%@ include file = "IncludePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS코드는 양이 많으므로 외부파일로 선언하여 현재문서에 링크시킨다. -->
<link rel="stylesheet"href="./css/div_layout.css" />

</head>
<body>
	<div class="AllWrap">
		<div class="header">
			<!-- GNB영역 -->
			<%@ include file="../common/Top.jsp" %>
		</div>
		<div class="body">
			<div class="left_menu">
			<!-- LNB영역(Local Navigation Bar) -->
			<%@ include file="../common/Left.jsp" %>
			</div>
			<div class="contents">
				<!-- Contents 영역 -->
				
				<h2>오늘의 날짜 : <%=todayStr %></h2>
				<br /><br />
				
문재인 대통령이 10일 이재용 삼성전자 부회장 사면론과 관련해 "충분히 많은 의견을 들어 판단해 나가겠다"며 종전보다 다소 완화된 입장을 밝혔다. 재계는 공식적인 언급을 자제한 채 청와대와 정치권의 기류에 촉각을 기울이면서 사면 실현 가능성을 타진하는 분위기다.
<br /><br />
문 대통령은 이날 청와대 춘추관에서 진행한 취임 4주년 특별연설과 기자회견에서 "이 부회장에 대한 사면 의견을 많이 듣고 있다"며 "경제계뿐 아니라 종교계에서도 그런 사면을 탄원하는 의견들을 많이 보내고 있다"고 말했다. 이어 "지금 반도체 경쟁이 세계적으로 격화되고 있어서 우리도 반도체 산업에 대한 경쟁력을 더욱 더 높여나갈 필요가 있는 것도 분명한 사실"이라고 언급했다.
<br /><br />
문 대통령의 이 같은 언급은 그동안 청와대가 "사면을 검토한 적도 없고 검토할 계획도 없다"고 밝혔던 데 비해 좀더 여지를 둔 발언으로 풀이된다.

문재인 대통령이 10일 이재용 삼성전자 부회장 사면론과 관련해 "충분히 많은 의견을 들어 판단해 나가겠다"며 종전보다 다소 완화된 입장을 밝혔다. 재계는 공식적인 언급을 자제한 채 청와대와 정치권의 기류에 촉각을 기울이면서 사면 실현 가능성을 타진하는 분위기다.
<br /><br />
문 대통령은 이날 청와대 춘추관에서 진행한 취임 4주년 특별연설과 기자회견에서 "이 부회장에 대한 사면 의견을 많이 듣고 있다"며 "경제계뿐 아니라 종교계에서도 그런 사면을 탄원하는 의견들을 많이 보내고 있다"고 말했다. 이어 "지금 반도체 경쟁이 세계적으로 격화되고 있어서 우리도 반도체 산업에 대한 경쟁력을 더욱 더 높여나갈 필요가 있는 것도 분명한 사실"이라고 언급했다.
<br /><br />
문 대통령의 이 같은 언급은 그동안 청와대가 "사면을 검토한 적도 없고 검토할 계획도 없다"고 밝혔던 데 비해 좀더 여지를 둔 발언으로 풀이된다.

문재인 대통령이 10일 이재용 삼성전자 부회장 사면론과 관련해 "충분히 많은 의견을 들어 판단해 나가겠다"며 종전보다 다소 완화된 입장을 밝혔다. 재계는 공식적인 언급을 자제한 채 청와대와 정치권의 기류에 촉각을 기울이면서 사면 실현 가능성을 타진하는 분위기다.
<br /><br />
문 대통령은 이날 청와대 춘추관에서 진행한 취임 4주년 특별연설과 기자회견에서 "이 부회장에 대한 사면 의견을 많이 듣고 있다"며 "경제계뿐 아니라 종교계에서도 그런 사면을 탄원하는 의견들을 많이 보내고 있다"고 말했다. 이어 "지금 반도체 경쟁이 세계적으로 격화되고 있어서 우리도 반도체 산업에 대한 경쟁력을 더욱 더 높여나갈 필요가 있는 것도 분명한 사실"이라고 언급했다.
<br /><br />
문 대통령의 이 같은 언급은 그동안 청와대가 "사면을 검토한 적도 없고 검토할 계획도 없다"고 밝혔던 데 비해 좀더 여지를 둔 발언으로 풀이된다.
				
				<br /><br />
			</div>
		</div>
		<div class="copyright">
		<!-- Copyright -->
			<%@ include file="../common/Copyright.jsp" %>
		</div>
	</div>
</body>
</html>