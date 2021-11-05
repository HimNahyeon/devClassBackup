<%@page import="dao.ProductDAO"%>
<%@page import="dao.ProductObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "../header.jsp" />
	
	<%
		ArrayList<ProductObj> products = (new ProductDAO()).getList();
	%>
		<div class="jumbotron">
			<div class = "container" >
				<h2 class = "display-3">상품 목록</h2>
			</div>
		</div>
		<div class = "container">
			<div class="row" align="center">
				<%
					for (ProductObj product : products) {
				%>
			<div class="col-md-4">
				<img src="../resource/image/<%= product.getPfilename() %>" style="width:100%">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getPprice() %>원	
				<p><a href="" class="btn btn-secondary" role="button">상세정보 &raquo;</a>		
			</div>
			<%} %>
		</div>
		<hr>
	</div>
	
	<jsp:include page = "../footer.jsp" />
</body>
</html>