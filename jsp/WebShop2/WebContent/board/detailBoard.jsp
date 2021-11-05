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
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">게시글 보기</h1>
      </div>
   </div>
   
	  <div class="container">
      <form name="newProduct" class="form-horizontal"  action="addCheck.jsp" method="post" enctype="multipart/form-data">
         <div class="form-group  row">
            <label class="col-sm-2 ">글제목</label>
            <div class="col-sm-4">
               <input name="title" type="text" class="form-control" placeholder="title" >
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2">글내용</label>
            <div class="col-sm-4">
               <textarea name="description" class="form-control" placeholder="content" ></textarea>
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2">사진</label>
            <div class="col-sm-4">
            	
            </div>
         </div>
         <div class="form-group  row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <input type="submit" class="btn btn-primary " value="수정 " > 
               <input type="reset" class="btn btn-primary " value="목록"  >
            </div>
         </div>
      </form>
      </div>
<%@ include file = "/footer.jsp" %>
</body>
</html>