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




</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#changeBottom").click(function() {
			if ($("#changeProduct").css("display") != "none") {
				$("#changeProduct").hide();
			} else {
				$("#changeProduct").show();
			}
		});
	});
</script>
<!-- body -->
<body class="main-layout inner_posituong">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="" />
		</div>
	</div>
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
									<a href="index.html"><img src="images/logo.png" alt="" /></a>
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
									<li class="nav-item "><a class="nav-link"
										href="index.html">Home</a></li>
									<li class="nav-item"><a class="nav-link" href="about.html">About</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										href="computer.html">Computer</a></li>
									<li class="nav-item"><a class="nav-link"
										href="laptop.html">Laptop</a></li>
									<li class="nav-item active"><a class="nav-link"
										href="product.html">Products</a></li>
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
	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Our Products</h2>
					</div>
				</div>
			</div>


			<!-- Portfolio Item Heading -->
			<h1 class="my-4">
				Page Heading <small>Secondary Text</small>
			</h1>

			<div class="row">

				<div class="col-md-12">
					<div class="our_products">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href=""><img class="card-img-top"
										src="http://placehold.it/400x700" alt=""></a>


								</div>
							</div>
							<div class="col-lg-8 col-md-6 mb-4">
								<table class="table">
									<h1 class="my-4">
										Page Heading <small>Secondary Text</small>
									</h1>
									<tbody>
										<tr>
											<td width="15%">qqq</td>
											<td width="85%">Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td>Doe</td>


										</tr>
										<tr>
											<td>Mary</td>
											<td><button type="button"
													class="btn btn-outline-primary" id="changeBottom">사양
													변경</button></td>


										</tr>

									</tbody>
								</table>
								<br>
								<center>
									<button type="button" class="btn btn-dark btn-lg">장바구니추가</button>
									<button type="button" class="btn btn-danger btn-lg">구매하기</button>

								</center>
							</div>

						</div>


					</div>

				</div>

			</div>
		</div>



		<br>
		<div class="container" style="display: none;" id="changeProduct">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<div class="row">
						<div class="col-md-2">
							<h6 class="m-0 font-weight-bold text-primary">기본구성 부품</h6>
						</div>
						<div class="col-md-8"></div>
						<div class="col-md-2">
							<a href="" class="btn btn-primary btn-icon-split btn-sm"
								style="float: right;"> <span class="icon text-white-50">
									<i class="fa fa-refresh"></i>
							</span> <span class="text">사양 초기화</span>
							</a>
						</div>
					</div>




				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<tbody>
								<tr>
									<td align="center" width="10%">부품</td>
									<td width="40%">기본 사양기본 사양기본 사양기본 사양기본 사양기본</td>
									<td align="center" width="15%">가격</td>
									<td width="45%"><a href=""
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="fa fa-plus"></i>
										</span> <span class="text">사양 변경</span>
									</a></td>
								<tr>
									<td align="center">부품</td>
									<td>
										<div class="row">
											<div
												style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px; background-color: blue;">
											</div>
											기본 사양
										</div>
									</td>
									<td align="center">가격</td>

									<td align="center"><a href=""
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="fa fa-plus"></i>
										</span> <span class="text">사양 변경 
					</div>
					</span> </a>
					</td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>

					</tr>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>

					</tr>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>

					</tr>

					</tbody>
					</table>
				</div>
			</div>



		</div>
	</div>



	<div class="container">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<div class="row">
					<div class="col-md-2">
						<h6 class="m-0 font-weight-bold text-primary">추가구매 상품</h6>
					</div>
					<div class="col-md-8"></div>
					<div class="col-md-2">
						<a href="" class="btn btn-primary btn-icon-split btn-sm"> <span
							class="icon text-white-50"> <i class="fa fa-refresh"></i>
						</span> <span class="text">추가 구매 초기화</span>
						</a>
					</div>
				</div>
			</div>

			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">


						<tbody>
							<tr>
								<td align="center">윈도우 (OS)</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>
							<tr>
								<td align="center">LED 모니터</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>

							</tr>
							<tr>
								<td align="center">키보드 + 마우스</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>

							</tr>
							<tr>
								<td td align="center">스피커</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>

							</tr>

						</tbody>
					</table>
				</div>
			</div>


		</div>

	</div>



	</div>










	<!-- end products -->
	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
						<img class="logo1" src="images/logo1.png" alt="" />
						<ul class="social_icon">
							<li><a href=""><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<li><a href=""><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href=""><i class="fa fa-linkedin-square"
									aria-hidden="true"></i></a></li>
							<li><a href=""><i class="fa fa-instagram"
									aria-hidden="true"></i></a></li>
						</ul>
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
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
						<form class="bottom_form">
							<h3>Newsletter</h3>
							<input class="enter" placeholder="Enter your email" type="text"
								name="Enter your email">
							<button class="sub_btn">subscribe</button>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p>
								Â© 2019 All Rights Reserved. Design by<a
									href="https://html.design/"> Free Html Templates</a>
							</p>
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

