<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>

<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String ucon = request.getParameter("content");
	
	FeedDAO dao = new FeedDAO();
	if(dao.insert(uid,ucon)){
		out.print("업로드 완료");
	}else{
		out.print("오류 발생");
	}

%>