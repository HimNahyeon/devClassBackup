<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate(); //세션을 초기화
out.print("로그 아웃 하셨습니다.");
%>

<a href="./loginform.jsp">[세션 삭제 확인]</a>
</body>
</html>