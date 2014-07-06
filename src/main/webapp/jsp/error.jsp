<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="cache-control" content="no-cache">
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
  	<script type="text/javascript" src="/static/js/jquery.min.js"></script>
  	<script type="text/javascript" src="/static/js/demo.js"></script>  
  </head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand">Hello,SinaAppEngine is welcome you!</a>
        </div>
    </div>
Sorry...
<font color="ff0000">
	<c:forEach items= "${errors}" var="error">
		<br><br>
		<c:out value="${error}"/>
	</c:forEach>
</font>
<br><br>
<a href="<%=request.getContextPath()%>/">Go back to the home page.</a>
    </div>
</body>
</html>