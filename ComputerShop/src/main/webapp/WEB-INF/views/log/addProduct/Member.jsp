<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	AdminOrderslookupViewEntity users = (AdminOrderslookupViewEntity) request.getAttribute("request1");
%>

<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>회원 정보</h1>
			<p>회원 정보를 볼 수 있습니다.</p>
			<div align="left">
				<a class="btn btn-lg1  btn btn-secondary"
					href="selectionmember.do?name=<%=users.getU_seq()%>">해당 회원</a> <a
					class="btn btn-lg1  btn btn-secondary"
					href="order.do?name=<%=users.getU_seq()%>">해당 회원 주문 내역</a> <a
					class="btn btn-lg1  btn btn-secondary"
					href="checkuseqboard.do?name=<%=users.getU_seq()%>">해당 회원 이용
					게시판</a>
					<a class="btn btn-lg1  btn btn-secondary"
					href="checkuseqboardcontent.do?name=<%=users.getU_seq()%>">해당 회원 이용 댓글</a>
			</div>
		</div>

		<div style="margin-top: 10px" class="container">
			<div class="row">
				<div class="form-group col-lg-10">
					<label for="exampleInputPassword1">회원 이름</label> <input type="text"
						class="form-control" id="exampleInputPassword1" placeholder=""
						name="p_name" value="<%=users.getU_name()%>">
				</div>

				<div class="form-group col-lg-10">
					<label for="exampleInputPassword1">회원 아이디</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder="" name="p_name" value="<%=users.getU_id()%>">
				</div>

				<div class="form-group col-lg-10">
					<label for="exampleInputPassword1">회원 전화번호</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder="" name="p_name" value="<%=users.getU_phone()%>">
				</div>
				<div class="form-group col-lg-10">
					<label for="exampleInputEmail1">회원 이메일</label> <input type="text"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="" name="p_price"
						value="<%=users.getU_email()%>">
				</div>
				<div class="form-group col-lg-10">
					<label for="exampleInputEmail1">회원 주소</label> <input
						name="p_manufacture" type="text" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="" value="<%=users.getU_address()%>">
				</div>

				<div class="form-group col-lg-10">
					<label for="exampleInputEmail1">회원 가입 날짜</label> <input
						name="p_manufacture" type="text" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder=""
						value="<fmt:formatDate value="<%=users.getU_createDate()%>"
					pattern="yyyy-MM-dd" />">
				</div>
			</div>
		</div>
	</div>
	<br />
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-body" id="modalSection"></div>
			</div>
		</div>
	</div>