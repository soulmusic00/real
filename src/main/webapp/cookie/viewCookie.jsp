<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length >0) {
		for(int i = 0; i < cookies.length; i++) {
%>
	<%=cookies[i].getName() %> =
	<%= URLDecoder.decode(cookies[i].getValue(),"utf-8") %>
<% 			
			
		}
	}else {
	

%>


<%
	}
%>
</body>
</html>