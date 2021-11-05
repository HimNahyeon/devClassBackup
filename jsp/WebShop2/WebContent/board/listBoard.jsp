<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
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
<%@ include file = "/header.jsp" %>
 <div class="alert alert-secondary" role="alert">
         <h1 class="display-3">게시판</h1>
   </div>
   <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">글번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
  <%
  	ArrayList<BoardObj> boards = (new BoardDAO()).getList();
  	int i = boards.size();
  	for(BoardObj board : boards){
  		
  %>
       <tr>
      <th scope="row"><%=i %></th>
      <td><a href="/board/detailBoard.jsp"><%=board.getTitle() %></a></td>
      <td><%=board.getMember() %></td>
      <td><%=board.getDate() %></td>
    </tr>
<%} %>       
  </tbody>
</table>

<%@ include file = "/footer.jsp" %>
</body>
</html>