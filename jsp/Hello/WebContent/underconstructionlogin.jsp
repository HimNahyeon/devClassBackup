<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 날짜 생성 --%>
<%@ page import = "java.util.Date"%>
<%-- 날짜 형태 설정 --%>
<%@ page import = "java.text.SimpleDateFormat"%>

<%
	Date now = new Date();
	
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	//MM은 분을 의미한다.
	
	String date = df.format(now);
	
	if(date.endsWith("25")){   //끝이 12이면  = 날짜가 12일이면
		response.sendRedirect("underCheck.jsp"); // underCheck.jsp 여기로 리디렉션
		return;
	}
	
	String uid = request.getParameter("id");
	String res = "<h3>사용자 아이디 : " + uid + "</h3>";
	res += "<br>로그인 시간 : " + now.toString();
	out.print(res);
			
%>