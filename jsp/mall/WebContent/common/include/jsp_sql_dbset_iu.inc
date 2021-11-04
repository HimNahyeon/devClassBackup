<% String cust_pw = request.getParameter("cust_pw"); 
String cust_name = request.getParameter("cust_name");

String tel_no_gubun = request.getParameter("tel_no_gubun");
String tel_no_guk = request.getParameter("tel_no_guk");
String tel_no_seq = request.getParameter("tel_no_seq");

String cust_tel_no = tel_no_gubun + "-" + tel_no_guk + "-" + tel_no_seq;

String cust_addr = request.getParameter("cust_addr");
String cust_gender = request.getParameter("cust_gender");

%>