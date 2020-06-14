<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<%@include file="./logMetadata.jsp"%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Start datatable css -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/typography.css">
<link rel="stylesheet" href="css/freeTable/styles.css">
<!-- 파일 내용 변경하기 -->

<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/bootstrap.min.js"></script>
<script src="js/metisMenu.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css" />
<script type="text/javascript"
	src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>
<script>
	var nowPage = 0;
	var table;
	$(document).ready(function() {
		$('#userTable').dataTable({
			"ajax" : {
				"url" : "adminUser",
				"type" : "GET",
				"data" : function(e) {
				}
			},
			serverSide : true,
			searching : true,
			columns : [ {
				data : "u_seq"
			}, {
				data : "u_name"
			}, {
				data : "u_id"
			}, {
				data : "u_pw"
			}, {
				data : "u_phone"
			}, {
				data : "u_email"
			}, {
				data : "u_address"
			}, {
				data : "u_createDate"
			}, ]
		});
	})
</script>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<%@include file="./logcategory.jsp"%>


	<!-- 여기까지 왼쪽 카테고리 -->


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-secondary">공지사항 관리</h6>
		</div>
		<br>

		<div class="card-body">
			<div class="data-tables datatable-dark">
				<table id="dataTable3"
					class="display data-tables datatable-dark text-center">
					<thead class="text-capitalize">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tr onclick="javascript:location.href='noticeview.do'">
						<td>0</td>
						<td>text-center</td>
						<td>Tokyo</td>
						<td>2008/11/28</td>
						<td>150</td>
					</tr>
					<tr onclick="javascript:location.href='noticeview.do'">
						<td>0</td>
						<td>text-center</td>
						<td>Tokyo</td>
						<td>2008/11/28</td>
						<td>150</td>
					</tr>
					<tr onclick="javascript:location.href='noticeview.do'">
						<td>0</td>
						<td>text-center</td>
						<td>Tokyo</td>
						<td>2008/11/28</td>
						<td>150</td>
					</tr>
				</table>
			</div>
			<div align="right">
				<a class="btn btn-lg1  btn btn-secondary" href="lognoticewrite.do">게시물 작성</a>
				<a class="btn btn-lg1  btn btn-secondary" href="#">게시물 삭제</a>
			</div>
		</div>
	</div>

	<!-- Start datatable js -->
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<!-- others plugins -->
	<script src="js/scripts.js"></script>
	<%@include file="../commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="../commons/js/sidebar.jsp"%>
</body>
</html>