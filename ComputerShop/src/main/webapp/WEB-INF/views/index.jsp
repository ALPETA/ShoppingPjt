<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	<div class="customer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Customer Review</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div id="myCarousel" class="carousel slide customer_Carousel "
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="container">
									<div class="carousel-caption ">
										<div class="row">
											<div class="col-md-9 offset-md-3">
												<div class="test_box">
													<i><img src="images/cos.png" alt="#" /></i>
													<h4>Sandy Miller</h4>
													<p>ipsum dolor sit amet, consectetur adipiscing elit,
														sed do eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo consequat.
														Duis aute irure dolor in reprehenderit in voluptate velit
														esse cillum dolore eu fugiat nulla pariatur. Excepteur
														sint occaecat cupidatat non proident, sunt in culpa qui
														officia deserunt mollit anim id</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row">
											<div class="col-md-9 offset-md-3">
												<div class="test_box">
													<i><img src="images/cos.png" alt="#" /></i>
													<h4>Sandy Miller</h4>
													<p>ipsum dolor sit amet, consectetur adipiscing elit,
														sed do eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo consequat.
														Duis aute irure dolor in reprehenderit in voluptate velit
														esse cillum dolore eu fugiat nulla pariatur. Excepteur
														sint occaecat cupidatat non proident, sunt in culpa qui
														officia deserunt mollit anim id</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row">
											<div class="col-md-9 offset-md-3">
												<div class="test_box">
													<i><img src="images/cos.png" alt="#" /></i>
													<h4>Sandy Miller</h4>
													<p>ipsum dolor sit amet, consectetur adipiscing elit,
														sed do eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo consequat.
														Duis aute irure dolor in reprehenderit in voluptate velit
														esse cillum dolore eu fugiat nulla pariatur. Excepteur
														sint occaecat cupidatat non proident, sunt in culpa qui
														officia deserunt mollit anim id</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <span class="carousel-control-next-icon"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end customer -->

	<!--  contact -->
	<div class="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Contact Now</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 offset-md-1">
					<form id="request" class="main_form">
						<div class="row">
							<div class="col-md-12 ">
								<input class="contactus" placeholder="Name" type="type"
									name="Name">
							</div>
							<div class="col-md-12">
								<input class="contactus" placeholder="Email" type="type"
									name="Email">
							</div>
							<div class="col-md-12">
								<input class="contactus" placeholder="Phone Number" type="type"
									name="Phone Number">
							</div>
							<div class="col-md-12">
								<textarea class="textarea" placeholder="Message" type="type"
									Message="Name">Message </textarea>
							</div>
							<div class="col-md-12">
								<button class="send_btn">Send</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end contact -->
	<!--  footer -->
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>

