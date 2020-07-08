<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>cla</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


<style>
body {
	font-family: 'Open Sans', sans-serif;
	color: #353535;
}
.content h1 {
	text-align: center;
}
.content .content-footer p {
	color: #6d6d6d;
    font-size: 12px;
    text-align: center;
}
.content .content-footer p a {
	color: inherit;
	font-weight: bold;
}

/*	--------------------------------------------------
	:: Table Filter
	-------------------------------------------------- */
.panel {
	border: 1px solid #ddd;
	background-color: #fcfcfc;
}
.panel .btn-group {
	margin: 15px 0 30px;
}
.panel .btn-group .btn {
	transition: background-color .3s ease;
}
.table-filter {
	background-color: #fff;
	border-bottom: 1px solid #eee;
}
.table-filter tbody tr:hover {
	cursor: pointer;
	background-color: #eee;
}
.table-filter tbody tr td {
	padding: 10px;
	vertical-align: middle;
	border-top-color: #eee;
}
.table-filter tbody tr.selected td {
	background-color: #eee;
}
.table-filter tr td:first-child {
	width: 38px;
}
.table-filter tr td:nth-child(2) {
	width: 35px;
}
.ckbox {
	position: relative;
}
.ckbox input[type="checkbox"] {
	opacity: 0;
}
.ckbox label {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.ckbox label:before {
	content: '';
	top: 1px;
	left: 0;
	width: 18px;
	height: 18px;
	display: block;
	position: absolute;
	border-radius: 2px;
	border: 1px solid #bbb;
	background-color: #fff;
}
.ckbox input[type="checkbox"]:checked + label:before {
	border-color: #2BBCDE;
	background-color: #2BBCDE;
}
.ckbox input[type="checkbox"]:checked + label:after {
	top: 3px;
	left: 3.5px;
	content: '\e013';
	color: #fff;
	font-size: 11px;
	font-family: 'Glyphicons Halflings';
	position: absolute;
}
.table-filter .star {
	color: #ccc;
	text-align: center;
	display: block;
}
.table-filter .star.star-checked {
	color: #F0AD4E;
}
.table-filter .star:hover {
	color: #ccc;
}
.table-filter .star.star-checked:hover {
	color: #F0AD4E;
}
.table-filter .media-photo {
	width: 35px;
}
.table-filter .media-body {
    display: block;
    /* Had to use this style to force the div to expand (wasn't necessary with my bootstrap version 3.3.6) */
}
.table-filter .media-meta {
	font-size: 11px;
	color: #999;
}
.table-filter .media .title {
	color: #2BBCDE;
	font-size: 14px;
	font-weight: bold;
	line-height: normal;
	margin: 0;
}
.table-filter .media .title span {
	font-size: .8em;
	margin-right: 20px;
}
.table-filter .media .title span.pagado {
	color: #5cb85c;
}
.table-filter .media .title span.pendiente {
	color: #f0ad4e;
}
.table-filter .media .title span.cancelado {
	color: #d9534f;
}
.table-filter .media .summary {
	font-size: 14px;
}
</style>
</head>
<!-- body -->
<body class="main-layout inner_posituong computer_page">
	<!-- loader  -->
	
	<!-- end loader -->
	<!-- header -->
	<header>


	<!-- header inner -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
					<div class="full">
						<div class="center-desk">
							<div class="logo">
								<a href="index.do"><img src="images/logo.png" alt="#" /></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
					<nav class="navigation navbar navbar-expand-md navbar-dark ">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarsExample04"
							aria-controls="navbarsExample04" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarsExample04">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item"><a class="nav-link" href="index.do">Home</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="about.html">About</a>
								</li>
								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">데스크탑</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="product?name=데스크탑,사무용">사무용 데스크탑</a> <a  
												class="dropdown-item" href="product?name=데스크탑,게임용">게임용 데스크탑</a> 
												 
										</div>
									</div></li>
										
									

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">노트북</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="notebook?name=노트북,사무용">사무용 노트북</a> <a
												class="dropdown-item" href="notebook?name=노트북,게임용">게임용 노트북</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">부품</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="spek?name=부품,CPU">CPU</a> <a
												class="dropdown-item" href="spek?name=부품,RAM">RAM</a> <a
												class="dropdown-item" href="spek?name=부품,HDD">HDD</a> <a
												class="dropdown-item" href="spek?name=부품,VGA">VGA</a> <a
												class="dropdown-item" href="spek?name=부품,COOLER">COOLER</a> <a
												class="dropdown-item" href="spek?name=부품,MAIN BOARD">MAIN BOARD</a>
												<a
												class="dropdown-item" href="spek?name=부품,ODD">ODD</a> <a
												class="dropdown-item" href="spek?name=부품,POWER">POWER</a>
												<a
												class="dropdown-item" href="spek?name=부품,SSD">SSD</a>
										</div>
									</div></li>
									
									<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">주변기기</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="part?name=주변기기,모니터">모니터</a> <a
												class="dropdown-item" href="#">게이밍세트</a> <a
												class="dropdown-item" href="#">키보드 / 마우스</a> <a
												class="dropdown-item" href="part?name=주변기기,스피커">스피커</a> <a
												class="dropdown-item" href="#">프린터 / 복합기</a> <a
												class="dropdown-item" href="#">소프트웨어</a>
												<a
												class="dropdown-item" href="#">저장장치</a> <a
												class="dropdown-item" href="#">네트윅 / 케이블</a>
												<a
												class="dropdown-item" href="#">소모품 / 기타</a>
										</div>
									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact Us</a></li>
								<li class="nav-item d_none"><a class="nav-link" href="#"><i
										class="fa fa-search" aria-hidden="true"></i></a></li>
								<li class="nav-item d_none"><a class="nav-link" href="#">Login</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>
	<!-- end header inner -->
	<!-- end header -->
	<!-- laptop1 -->
	<div class="row">
		<section class="content">
			<h1 style="font-size: 50px">스피커</h1>
			<br /> <br />
 			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body"> 

						<div class="table-container">
							<table class="table table-filter">
								<tbody id="partTableSection">
									 <tr data-status="pagado">


										 <td>
											<div class="media">
												<a href="#" class="pull-left"> <img
													src="http://placehold.it/100x100" alt="country flag"
													style="float: left; margin: 3px 10px 0 3px; text-align: center;" />
												</a>
												<div class="media-body">
													<span class="media-meta pull-right"> <a href="#"
														class="btn btn-default btn-sm shake-slow shake-constant shake-constant--hover">구매하기</a>
													</span>
													<h4 class="title">

														22형 그린디스플레이 [무결점] <span class="pull-right pagado">89,000
															원</span>
													</h4>
													<br>

													<p class="summary">무결점 / LED LCD / 1920*1080 / TN계열 /
														500~1000만:1 이하 / 5ms / 16:9 와이드 / D-SUB / DVI / 베사홀 / 무결점</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pendiente">


										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img
													src="http://placehold.it/100x100" alt="country flag"
													style="float: left; margin: 3px 10px 0 3px; text-align: center;" />
												</a>
												<div class="media-body">
													<span class="media-meta pull-right"> <a href="#"
														class="btn btn-default btn-sm shake-slow shake-constant shake-constant--hover">구매하기</a></span>
													<h4 class="title">
														24형 MTEC [무결점] <span class="pull-right pendiente">120,000
															원</span>
													</h4>
													<br>

													<p class="summary">60.96cm(24형) / 와이드(16:9) / 평면 / TN /
														일반시야각 / 1920 x 1080(FHD) / 0.274mm / 2ms(GTG) / 250cd /
														5,000,000:1 / 75Hz / HDMI / D-SUB / 플리커 프리 / 블루라이트 차단 /
														게임모드 지원 / FreeSync / 무결점 정책 / 틸트 / 100 x 100mm / HDR</p>

												</div>
											</div>
										</td>
									</tr>
									<tr data-status="cancelado">


										<td>
											<div class="media">
												<a href="#" class="pull-left"><img
													src="http://placehold.it/100x100" alt="country flag"
													style="float: left; margin: 3px 10px 0 3px; text-align: center;" />
												</a>
												<div class="media-body">
													<span class="media-meta pull-right"><a href="#"
														class="btn btn-default btn-sm shake-slow shake-constant shake-constant--hover">구매하기</a></span>
													<h4 class="title">

														24형 삼성 ★특가★ [무결점] <span class="pull-right cancelado">152,000
															원</span>
													</h4>
													<br>
													<p class="summary">24형(59.8cm) / 와이드(16:9) / LED / 1920
														x 1080 / 1,000:1(typ) / 5ms / 300cd / D-SUB / HDMI / 틸트 /
														매직 업 스케일 / HDMI to DVI케이블</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pagado">


										<td>
											<div class="media">
												<a href="#" class="pull-left"><img
													src="http://placehold.it/100x100" alt="country flag"
													style="float: left; margin: 3px 10px 0 3px; text-align: center;" />
												</a>
												<div class="media-body">
													<span class="media-meta pull-right"><a href="#"
														class="btn btn-default btn-sm shake-slow shake-constant shake-constant--hover">구매하기</a></span>
													<h4 class="title">

														24형 그린디스플레이 [게이밍] [무결점] <span class="pull-right pagado">157,000
															원</span>
													</h4>
													<br>
													<p class="summary">61cm(24인치) / 와이드(16:9) / 평면 / IPS /
														광시야각 / 1920 x 1080(FHD) / 1ms(OD) / 220cd / 1,000:1 /
														144Hz / sRGB: 100% / HDMI / DP포트 / 플리커 프리 / 블루라이트 차단 /
														게임모드 지원 / 조준선 표시 / FreeSync / G-Sync compatible / 스피커 /
														HDCP 지원 / 무결점 정책 / 틸트 / 75 x 75mm / HDR / 3.3kg</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pendiente">


										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img
													src="http://placehold.it/100x100" alt="country flag"
													style="float: left; margin: 3px 10px 0 3px; text-align: center;" />
												</a>
												<div class="media-body">
													<span class="media-meta pull-right"><a href="#"
														class="btn btn-default btn-sm shake-slow shake-constant shake-constant--hover">구매하기</a></span>
													<h4 class="title">

														27형 그린디스플레이 [무결점] <span class="pull-right pendiente">163,000
															원</span>
													</h4>
													<br>
													<p class="summary">27형(68.58cm) LED LCD(와이드) / 광시야각패널 /
														1920*1080 / 50,000:1(동적) / 5ms / 300cd / D-Sub / HDMI /
														무결점</p>
												</div>
											</div>
										</td>
									</tr>  
								</tbody>
							</table>
						</div>
					</div>
				</div>
			 <div style="text-align: center;">
			<ul class="pagination justify-content-center">
			</ul>
		</div> 
			</div>
		</section>
	</div>
	<!-- end laptop1 -->
	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
						<img class="logo1" src="images/logo1.png" alt="#" />
						
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
						<h3>About Us</h3>
						<ul class="about_us">
							<li>dolor sit amet, consectetur<br> magna aliqua. Ut
								enim ad <br>minim veniam, <br> quisdotempor incididunt
								r
							</li>
						</ul>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
						<h3>Contact Us</h3>
						<ul class="conta">
							<li>dolor sit amet,<br> consectetur <br>magna
								aliqua.<br> quisdotempor <br>incididunt ut e
							</li>
						</ul>
					</div>
					
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p>
								© 2019 All Rights Reserved. Design by<a
									href="https://html.design/"> Free Html Templates</a>
							</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- Javascript files-->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>

