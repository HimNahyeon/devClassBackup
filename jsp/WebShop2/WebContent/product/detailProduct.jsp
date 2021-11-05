<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page impor= "dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-ma-5">
				<img src="/photos/<%=product.getPfilename()%>" style="width:100%"/>
			</div>
			<div class="col-md-6">
				<h3>상품이름</h3>
				<p>상품설명</p>
				<p><b>상품코드 : </b></p>
				<p><b>상품가격 :<%=product.getPprice() %> </b></p>
				<p><form action="addCart.jsp?id=<%=product.getPid()%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">상품주문&raquo;</a>
					<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
					<a href="products.jsp" class="btn btn-secondary">상품목록&raquo;</a>
				</form></p>
			</div>
		</div>
	</div>	
	
<%@ include file = "/footer.jsp" %>
</body>
</html>