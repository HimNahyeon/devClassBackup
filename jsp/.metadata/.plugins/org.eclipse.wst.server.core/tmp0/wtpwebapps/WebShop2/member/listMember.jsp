<%@page import="dao.MemberDAO"%>
<%@page import="dao.MemberObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "../header.jsp" />
	
	<%
		ArrayList<MemberObj> members = (new MemberDAO()).getList();
	%>
		<div class="jumbotron">
			<div class = "container" >
				<h2 class = "display-3">회원 정보</h2>
			</div>
		</div>
		<div class = "container">
			<div class="row" align="center">
				<%
					for (MemberObj member : members) {
				%>
			
				<%=member.getCid() %>
				<%=member.getCname() %>
				<%=member.getCemail() %>
				<%=member.getCphone() %>
				<a href="" class="btn btn-secondary" role="button">상세정보 &raquo;</a>		
	
			<%} %>
		</div>
	</div>
	
	<jsp:include page = "../footer.jsp" />
</body>
</html>