<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminLogin</title>
</head>
<body>
AdminLogin
<form action="/admin/login" method="post">
<input type="text" name="userName"/>
<input type="password" name="password"/>
<input type="submit" value="Login"/>
</form>
</body>
</html>