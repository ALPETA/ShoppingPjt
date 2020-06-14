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
<meta charset="utf-8" />
<title>Bootstrap FAQ Template | PrepBootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
.faqHeader {
	font-size: 27px;
	margin: 20px;
}

.panel-heading [data-toggle="collapse"]:after {
	font-family: 'Glyphicons Halflings';
	content: "e072";
	float: right;
	color: #F58723;
	font-size: 18px;
	line-height: 22px;
	-webkit-transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	transform: rotate(-90deg);
}

.panel-heading [data-toggle="collapse"].collapsed:after {
	-webkit-transform: rotate(90deg);
	-moz-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	-o-transform: rotate(90deg);
	transform: rotate(90deg);
	color: #454444;
}
</style>

</head>
<body>
	<%@include file="./logcategory.jsp"%>
	<div>
		<section class="banner_main2"></section>
	</div>
	<div class="container">
		<br /> <br /> <br />
		<div id="accordion">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-header">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion" href="#collapseOne">question</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="card-block">
						<Strong>answer</Strong>
					</div>
				</div>
			</div>
			<div class="card ">
				<div class="card-header">
					<h4 class="card-header">
						<a class="accordion-toggle collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseSeven">question</a>
					</h4>
				</div>
				<div id="collapseSeven" class="panel-collapse collapse">
					<div class="card-block">
						<Strong>answer</Strong>
					</div>
				</div>
			</div>
			<div align="right">
			</br>
				<a class="btn btn-lg1  btn btn-secondary" href="lognoticewrite.do">게시물
					작성</a> <a class="btn btn-lg1  btn btn-secondary"
					href="lognoticewrite.do">게시물 삭제</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>