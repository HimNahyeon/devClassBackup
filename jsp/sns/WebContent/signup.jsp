<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String upass = request.getParameter("pw");
	String uname = request.getParameter("name");
	
	UserDAO dao= new UserDAO();
	if (dao.checkId(uid)){
		out.print("이미 가입된 아이디입니다.");
		return;
	}
	if(dao.insert(uid,upass,uname)){
		session.setAttribute("id", uid);
		response.sendRedirect("main.jsp");
		
	}else{
		out.print("회원 가입 실패");
		response.sendRedirect("signup.html");
	}


%>