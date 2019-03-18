<%--
  Created by IntelliJ IDEA.
  User: hiram
  Date: 2019/3/17
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height: 100%;">
<head>
    <title>404</title>
</head>
<body style="height: 100%;">
<div class="container">
    <a href="#" onclick="history.back()">返回</a>
    <div style="width: 300px; margin: 40px auto auto;"><h2>资源不存在或没有权限</h2></div>
</div>
</body>
</html>
