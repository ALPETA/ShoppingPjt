<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 및 주문 내역 페이지</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<script>
	$(document).ready(function() {
	});
</script>
<style>
.top-container {
	margin-top: 20px
}
</style>
</head>

<%
	AdminOrderslookupViewEntity check = (AdminOrderslookupViewEntity) request.getAttribute("request1");
%>

<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>회원 정보 및 주문 내역</h1>
			<p>회원 정보와 회원이 주문한 내역을 확인할 수 있습니다.</p>
		</div>
		<%-- <div class="row">
			<ul class="nav nav-tabs col-lg-12">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">회원 정보</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu1">주문 내역</a></li>

			</ul>
			<div class="tab-content">
				<div id="home" class="container tab-pane active">
					<br>
					<h3>[<%=check.getU_name()%>]님의 회원 정보</h3>
					<%@include file="./addProduct/Member.jsp"%>
				</div>
				<div id="menu1" class="container tab-pane fade">
					<br>
					<h3>[<%=check.getU_name()%>]님의  주문 내역</h3>
					<%@include file="./addProduct/Order.jsp"%>

				</div>
				</div>
			</div> --%>
	</div>
</body>
</html>