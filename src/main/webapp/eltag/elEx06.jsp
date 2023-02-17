<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
오늘은 <b>${elfunc:dateFormat(today) }</b>
</body>
</html>