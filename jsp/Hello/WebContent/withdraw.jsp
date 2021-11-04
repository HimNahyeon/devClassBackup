<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<%

	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");

/* 	String sql="DELETE FROM user WHERE id=?";

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysns","root","0000");
	PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1,uid);
	int count = stmt.executeUpdate(); */
	
	UserDAO dao = new UserDAO();
	
	if(dao.exists(uid)==false){
		out.print("회원정보를 찾을 수 없습니다.");
		return; //조건충족하면 아래 if문을실행하지않고 멈춤. 
	}
	
	if(dao.delete(uid)){
		out.print("회원 탈퇴 완료");
	}else{
		out.print("오류발생");
	}
/* 	stmt.close(); conn.close(); */


%>