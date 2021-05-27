<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일첨부형 게시판</title>
<script type="text/javascript">
    function formValidate(f){
   	 if(f.name.value==""){
   		 alert("작성자를 입력하세요");
   		 f.name.focus();
   		 return false;
   	 }
   	 if(f.title.value==""){
   		 alert("제목을 입력하세요");
   		 f.title.focus();
   		 return false;
   	 }
   	 if(f.content.value==""){
   		 alert("내용을 입력하세요");
   		 f.content.focus();
   		 return false;
   	 }
   	 if(f.pass.value==""){
   		 alert("비밀번호를 입력하세요");
   		 f.pass.focus();
   		 return false;
   	 }
    }
</script>
</head>
<h2>파일첨부형 게시판-글쓰기(Write)</h2>
<form name="writeFrm" method="post" enctype="multipart/form-data"
    action="../mvcboard/write.do" onsubmit="return formValidate(this);">
<table border="1" width="90%"> 
    <tr>
   	 <td>작성자</td>
   	 <td>
   		 <input type="text" name="name" style="width:150px;" />
   	 </td>
    </tr>
    <tr>
   	 <td>제목</td>
   	 <td>
   		 <input type="text" name="title" style="width:90%;" />
   	 </td>
    </tr>
    <tr>
   	 <td>내용</td>
   	 <td>
   		 <textarea name="content" style="width:90%;height:100px;"></textarea>
   	 </td>
    </tr>
    <tr>
   	 <td>첨부파일</td>
   	 <td>
   		 <input type="file" name="ofile" />
   	 </td>
    </tr>
    <tr>
   	 <td>비밀번호</td>
   	 <td>
   		 <input type="password" name="pass" style="width:100px;" />
   	 </td>
    </tr>
    <tr>
   	 <td colspan="2" align="center">
   		 <button type="submit">작성완료</button>
   		 <button type="reset">RESET</button>
   		 <button type="button" onclick="location.href='../mvcboard/list.do';">
   			 리스트바로가기
   		 </button>
   	 </td>
    </tr>
</table>    
</form>
</body>
</html>
