<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.Enumeration" %>

<%
	Enumeration<String> en = request.getHeaderNames();
	while (en.hasMoreElements()){
		String name = (String) en.nextElement();
		String value = request.getHeader(name);
		out.print(name + ": " + value + "<br>");
	}
	/*
		request.getHeaderNames()   
		-> 이걸 이용하면 HTTP요청 메시지의 헤더에 포함된 모든속성들의 이름을 가져온다.
		
		java.util.Enumeration
		-> 리스트 자료구조와 유사하게 사용한다. 
		 
		en.hasMoreElements()
		-> 요소가 남아있는 경우 true 
		
		en.nextElement()
		-> 미처리된 요소를 하나씩 반환한다.
	*/
%>

