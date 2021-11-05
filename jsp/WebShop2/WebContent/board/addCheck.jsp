<%@page import="dao.BoardDAO"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*"%>
<%@ page import = "org.apache.commons.fileupload.disk.*"%>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String title = null, description = null, filename = null;
	byte [] ufile = null;
	
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	// 추출 값들을 객체 형태로 저장 준비
	
	List items = sfu.parseRequest(request);
	//입력된 값들을 추출하여 객체로 저장
	
	Iterator iter = items.iterator();
	//순차적으로 접근하기위한 객체 생성
	
	while(iter.hasNext()){//요소가 있으면 계속 없으면 종료
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){ // isFormField - 이름과 값으로 즉 맵형태 (딕셔너리) 쌍으로 구성 확인
			String value = item.getString("utf-8");
			//필드값들
			if (name.equals("title")) title = value;
			else if (name.equals("description")) description = value;
		}else{ //사진정보는 별도로 추출
			if(name.equals("filename")){
				filename = item.getName(); //사진 파일의 이름을 추출
				ufile = item.get();//진짜 사진만 추출
				
				//사진을 파일로 특정 위치에 저장
				File file = new File("c:/photos/" + filename);
				item.write(file);
			}
		}
	}
	
	//디비에 저장하기
	BoardDAO dao = new BoardDAO();

	if(dao.insert(title, description, filename)){
		response.sendRedirect("listBoard.jsp");		
	}else{
		response.sendRedirect("listBoard.jsp");		
	}
	
	
%>