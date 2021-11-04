<%@ page contentType = "text/html" pageEncoding="utf-8" %>
<!-- pageEncoding="utf-8" 한글처리.. 이걸로 안되면! 아래꺼 -->
<!-- request.setCharacterEncoding("utf-8");  get 방식 한글처리--> 

<%
	String uid = request.getParameter("id");
	String res = "<h3>사용자 ID: " + uid + "</h3>";
	out.print(res);
%>
