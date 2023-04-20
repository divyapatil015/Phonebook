<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DbConnect" %>
<%@page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Component/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/phone2.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>

	<div class="container-fluid back-img text-center text-danger">
		<h1>Welcome to PhoneBook</h1>

	</div>
	<%@include file="Component/footer.jsp"%>
</body>
</html>