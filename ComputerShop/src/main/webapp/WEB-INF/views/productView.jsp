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

	<%@include file="./commons/header/header.jsp"%>
	<!-- loader  -->
	<!--
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="" />
		</div>
	</div>
	 -->
	<!-- end loader -->
	<!-- header -->
	<header>
		<%@include file="./commons/header/metaHeader.jsp"%>
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
									<td width="40%">기본 사양</td>
									<td align="center" width="15%">가격</td>
									<td width="45%" align="center"><a href=""
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
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>

					</tr>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fa fa-plus"></i>
							</span> <span class="text">사양 변경</span>
						</a></td>

					</tr>
					<tr>
						<td align="center">부품</td>
						<td>기본 사양</td>
						<td align="center">가격</td>
						<td align="center"><a href="" class="btn btn-primary btn-icon-split btn-sm">
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
								<td align="center"><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>
							<tr>
								<td align="center">LED 모니터</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td align="center"><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>

							</tr>
							<tr>
								<td align="center">키보드 + 마우스</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td align="center"><a href=""
									class="btn btn-primary btn-icon-split btn-sm"> <span
										class="icon text-white-50"> <i class="fa fa-plus"></i>
									</span> <span class="text">추가 구매</span>
								</a></td>

							</tr>
							<tr>
								<td td align="center">스피커</td>
								<td>:: 선택하세요 .</td>
								<td align="center">가격</td>
								<td align="center"><a href=""
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
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>

