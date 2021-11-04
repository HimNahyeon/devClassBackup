<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 속성의 세션 아이디와 네임 -->
세션 속성(id) : <%=session.getAttribute("id") %><br>
세션 속성(name) : <%=session.getAttribute("name") %><br><br>

<!-- 진짜 세션아이디값 -->
<%= session.getId() %>

<p><a href="sessionDelete.jsp">[세션 삭제]</a></p>
</body>
</html>