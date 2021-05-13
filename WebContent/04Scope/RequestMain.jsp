<%@page import="model.MemberDTO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//3가지형태의 객체를 request 영역에저장
request.setAttribute("requestNumber", 999);
request.setAttribute("requestString", "여기는 리퀘스트 영역입니다");
request.setAttribute("requestMember1", new MemberDTO("hong","1234","홍길동",null));
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 기본클래스인 경우 별도의 형변환필요없음 -->
   <h2>리퀘스트 영역에 저장된속성값 읽기</h2>
   <ul>
      <li>Integer타입:
         <%=request.getAttribute("requestNumber") %></li>
      <li>String타입:
         <%=request.getAttribute("requestString") %></li>
      
      <% //개발자가정의한 클래스는 형변환이필요함
      MemberDTO member=(MemberDTO)request.getAttribute("requestMember1");
      %>
      <li>
         MemberDTO타입:
         아이디:<%=member.getId() %>,
         패스워드:<%=member.getPass() %>,
         이름:<%=member.getName() %>,
         가입일:<%=member.getRegidate() %>,
      
      </li>
   
   </ul>
   <h2>리퀘스트 영역에 저장된 속성 삭제후 출력하기</h2>
   <%
      request.removeAttribute("NoKeyVAlue");//키값이틀려도에러발생 x
      request.removeAttribute("requestNumber");
      request.removeAttribute("requestString");
   
   
   %>
   <ul>
      <li>Integer타입:
         <%=request.getAttribute("requestNumber") %></li>
      <li>String타입:
         <%=request.getAttribute("requestString") %></li>

      <li>
         MemberDTO타입:
         아이디:<%=member.getId() %>,
         패스워드:<%=member.getPass() %>,
         이름:<%=member.getName() %>,
         가입일:<%=member.getRegidate() %>,
      
      </li>
   
   
   
   </ul>
   <!-- 최초요청된 페이지와 포워드로 전달된 페이지는 rquest영역을 공유하게된다.
   url주소창에는 최초욫어된 페이지의 경로명이 보이지만 출력되는 페이지는 새롭게전달된
   페이지의 내용을 출력하게된다.그러므로 사용자는 이동을 인지하지못하지만
   내부적으로 페이지전달(포워드)이되는것이다 쿼리스트링 형태로 파라미터도 전달할수잇따. -->
   <h3>forward()를 사용한 페이지전달</h3>
   <%
   /* RequestDispatcher dis=request.getRequestDispatcher("RequestResult.jsp?param=포워드방식");
   dis.forward(request, response);  */
   %>
   <!-- /*
   sendRedirect()는 JS의 location.href와 동일한 기능으로 새로운페이지에
   대한요청을 ㅎ게된다.이경우 request영역은 공유되지않는다.웹브라우저의
   주소창에는 새롭게 요청된 페이지의 경로명이 보여지게된다. */ -->
   <h3>sendRedirect()를사용한 페이지이동</h3>
   <%
   response.sendRedirect("RequestResult.jsp?param="+URLEncoder.encode("리다이렉트방식","UTF-8"));
   %> 

</body>
</html>