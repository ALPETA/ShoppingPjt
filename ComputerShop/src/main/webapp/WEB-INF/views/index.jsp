<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<%@include file="./commons/header/metaHeader.jsp"%>
</head>
<!-- body -->
<body class="main-layout">
	<!-- loader  -->
	<%@include file="./commons/loader.jsp"%>
	<%@include file="./commons/header/header.jsp"%>
	<!-- end header inner -->
	<!-- end header -->
	<!-- banner -->
	<%@include file="./indexView/bannerSection.jsp"%>
	<%@include file="./indexView/threeBox.jsp"%>
	<%@include file="./indexView/productList.jsp"%>
	<!-- laptop  section -->
	<div class="laptop">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="titlepage">
						<p>Every Computer and laptop</p>
						<h2>Up to 40% off !</h2>
						<a class="read_more" href="#">Shop Now</a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="laptop_box">
						<figure>
							<img src="images/pc.png" alt="#" />
						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end laptop  section -->
	<!-- customer -->

	
	<!--  footer -->
	<%@include file="./commons/footer/footer.jsp"%>

	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>

