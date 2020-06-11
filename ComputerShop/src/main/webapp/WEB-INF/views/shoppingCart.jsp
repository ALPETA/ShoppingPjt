<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./commons/header/metaHeader.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="main-layout">
	<!-- loader  -->
	<%@include file="./commons/loader.jsp"%>
	<%@include file="./commons/header/header.jsp"%>
	<div>
		<section class="banner_main2"/>		
	</div>
	<!-- end header inner -->
	<section class="banner_main2"></section>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<div
					style="float: left; width: 80px; height: 80px; background-color: red; margin-right: 20px"></div>
				<h4 class="card-title" style="color: black">Card title</h4>
				<p class="card-text">Some example text. Some example text.</p>
			</div>
		</div>
	</div>
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>