<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.boardone.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>    
 <%@ include file="view/color.jsp" %>
 
 <%!
 // 한 페이지에 보여줄 목록 수를 지정
 int pageSize = 5;
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
 %>
 
 <%
 	   //화면에서 넘어옴
       String pageNum = request.getParameter("pageNum");
       // 무엇을 검색할지
       String searchWhat =request.getParameter("searchWhat");
       // 검색할 내용
       String searchText =request.getParameter("searchText");
       
       // 받아온 파라미터값을 한글로 변환처리 
       if(searchText != null){
    	   searchText = new String(searchText.getBytes("utf-8"), "utf-8");
       }
 
       if(pageNum == null){
    	   pageNum="1";
       }
       
       // 현재 페이지
       int currentPage = Integer.parseInt(pageNum);
       int startRow = (currentPage -1) * pageSize +1;
       int endRow = currentPage * pageSize;
 
 
   int count = 0;
   int number = 0;
   
   List<BoardVO> articleList = null;
   BoardDAO dbPro = BoardDAO.getInstance();
	if(searchText == null) {
		
		count = dbPro.getArticleCount();
		if(count > 0) {
			
			articleList = dbPro.getArticles(startRow, endRow);
		}
		
		
	}else {
		
		
		count = dbPro.getArticleCount(searchWhat, searchText);
		
		
		
		
	}
	
	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>