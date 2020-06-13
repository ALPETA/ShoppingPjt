<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<!-- site metas -->
<title>cla</title>
<%@include file="./commons/header/metaHeader.jsp"%>
<script>
	/* function showProduct() {
		$.ajax({
			type : "GET", //보내는 타입을 Post방식으로 할지,  GET방식으로 할지 결정
			url : "/ComputerShop/product_mapper.xml/findProduct.do", // /내 프로젝트명/XML파일의namespace/내가불러올XML의Query이름.do
			contentType : "application/x-www-form-urlencoded; charset=utf-8", // 기본값이라고 하니까 건들이지 않았고 
			success : function(res) {
				//성공시에 res값을 받아와 아래를 실행 
				$(".AdminProductViewEntity").attr("href", res[0].p_seq);
				//DB테이블에서 내가 필요한 값은  value값이다. 
				//.attr() 함수는 선택된 요소들 중에서 제일 처음 요소의 속성값을 가지고 오는 함수이기 때문에
				//[0], [1] 이라고 알려주는 것 같다
				alert(href);
			},
			error : function(request, status, error) {
				alert("에러가 발생했습니다. 관리자에게 문의하시기 바랍니다");
			}
		});
	} */
</script>
</head>
<!-- body -->
<body class="main-layout inner_posituong" onload="showProduct()">
	<%@include file="./commons/loader.jsp"%>
	<%@include file="./commons/header/header.jsp"%>
	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="row col-md-12 titlepage">
				<h2>Our Products</h2>
			</div>
			<div class="row">
				<div class="col-md-12">
					<!-- our products -->
					<div class="our_products">
						<div class="row" style="border: 1px solid black; position: relative; top: -40px; margin-left: 20px; margin-right: 20px;">
							<!-- 정렬 기준 -->	
							<div class="col-2" style="background-color: #92FFFF;" align="center">
								<div style="padding: 5px; position: relative; top: 3px;">정렬선택</div>
							</div>

							<div class="col-2"></div>

							<div class="col-2" style="padding: 5px;">
								<button type="button" class="btn btn-outline-info btn-sm btn-block">가격순</button>
							</div>

							<div class="col-2" style="padding: 5px;">
								<button type="button" class="btn btn-outline-info btn-sm btn-block">가격순</button>
							</div>

							<div class="col-2" style="padding: 5px;">
								<button type="button" class="btn btn-info btn-sm btn-block">가격순</button>
							</div>

							<div class="col-2" style="padding: 5px;">
								<button type="button" class="btn btn-outline-info btn-sm btn-block">가격순</button>
							</div>
							<!-- 정렬 기준 끝 -->
						</div>
						<!-- 상품 진열 -->
						<div class="row">
							<div class="col-lg-3 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="card-img-top"
										src="http://placehold.it/400x700" alt=""></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">COMPUTER</a>
										</h4>
										<h5>￦ 1,000,000원</h5>

									</div>

								</div>
							</div>
						</div>
						<!-- 상품 진열 끝 -->
					</div>
					<!-- End of our products -->
				</div>
			</div>
		</div>
		<br>
		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">Next</span>
			</a></li>
		</ul>



	</div>
	<!-- end products -->
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>

