<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("id");
    String upass = request.getParameter("ps");
    String uname = request.getParameter("name");
    
    String sql = "INSERT INTO user(id, password, name) VALUES";
    sql += "('" + uid + "', '" + upass + "', '" + uname + "')";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns?serverTimezone=UTC", "root", "1111");
    Statement stmt = conn.createStatement();
    
    int count = stmt.executeUpdate(sql);
    if (count == 1) {
        out.print("회원 가입이 완료되었습니다.");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
    
    stmt.close(); conn.close();
%>
