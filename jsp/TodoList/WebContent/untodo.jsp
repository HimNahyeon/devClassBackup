<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");

	TodoDAO dao = new TodoDAO();
	
	if(dao.undel(no)){
		response.sendRedirect("delList.jsp");
	}else{
		out.print("오류 발생");
	}
%>