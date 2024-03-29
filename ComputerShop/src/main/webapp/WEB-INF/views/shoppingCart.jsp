<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./commons/header/metaHeader.jsp"%>
<meta charset="UTF-8">
<title>장바구니</title>
<script type="text/javascript">
	$(function() {
		$("#checkAll").click(function() {
			$("input[name=check]").prop("checked",$("#checkAll").prop("checked"));
		})
		
		$("input[name=check]").click(function() {
			if(!$(this).prop("checked")){
				$("#checkAll").prop("checked",false);
			}else{
				var check = $("input[name=check]");
				var count = 0;
				for(var i =0;i<check.length;i++){
					if(check[i].checked){
						count++;
					}
				}
				if(count === check.length){
					$("#checkAll").prop("checked",true);
				}
			}
		})
	})
</script>
</head>
<body class="main-layout">
	<%@include file="./commons/header/header.jsp"%>
	<div>
		<section class="banner_main2" />
	</div>
	<!-- end header inner -->
	<div class="px-4 px-lg-0">
		<!-- For demo purpose -->
		<div class="container text-white py-5 text-center">
			<p class="lead">
				장바구니 <a href="https://bootstrapious.com/snippets"
					class="text-black font-italic"></a>
			</p>
		</div>
		<!-- End -->

		<div class="pb-5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

						<!-- Shopping cart table -->
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" class="border-0 bg-light align-middle"><input
											type="checkbox" id="checkAll" name="checkAll"></th>
										<th scope="col" class="border-0 bg-light">
											<div class="p-2 px-3">제품</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2">가격</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2">갯수</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2">목록에서 빼기</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="border-0 align-middle"><input type="checkbox"
											id="check" name="check"></td>
										<td scope="row" class="border-0">
											<div class="p-2">
												<img
													src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg"
													alt="" width="70" class="img-fluid rounded shadow-sm">
												<div class="ml-3 d-inline-block align-middle">
													<h5 class="mb-0">
														<a href="#" class="text-dark d-inline-block align-middle">괜찮은
															물건</a>
													</h5>
													<span
														class="text-muted font-weight-normal font-italic d-block">Category:
														Watches</span>
												</div>
											</div>
										</td>
										<td class="border-0 align-middle"><strong>7900원</strong></td>
										<td class="border-0 align-middle"><input id="count" type="number" min="0" value="0"/></td>
										<td class="border-0 align-middle"><a href="#"
											class="text-dark"><i class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td class="border-0 align-middle"><input type="checkbox"
											id="check" name="check"></td>
										<td scope="row">
											<div class="p-2">
												<img
													src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-3_cexmhn.jpg"
													alt="" width="70" class="img-fluid rounded shadow-sm">
												<div class="ml-3 d-inline-block align-middle">
													<h5 class="mb-0">
														<a href="#" class="text-dark d-inline-block">좋은 물건</a>
													</h5>
													<span class="text-muted font-weight-normal font-italic">Category:
														Electronics</span>
												</div>
											</div>
										</td>
										<td class="align-middle"><strong>7900원</strong></td>
										<td class="align-middle"><input id="count" type="number" min="0" value="0"/></td>
										<td class="align-middle"><a href="#" class="text-dark"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td class="border-0 align-middle"><input type="checkbox"
											id="check" name="check"></td>
										<td scope="row">
											<div class="p-2">
												<img
													src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-2_qxjis2.jpg"
													alt="" width="70" class="img-fluid rounded shadow-sm">
												<div class="ml-3 d-inline-block align-middle">
													<h5 class="mb-0">
														<a href="#" class="text-dark d-inline-block">엄청난 물건</a>
													</h5>
													<span class="text-muted font-weight-normal font-italic">Category:
														Fashion</span>
												</div>
											</div>
										</td>
										<td class="align-middle"><strong>7900원</strong></td>
										<td class="align-middle"><input id="count" type="number" min="0" value="0"/></td>
										<td class="align-middle"><a href="#" class="text-dark"><i
												class="fa fa-trash"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- End -->
					</div>
				</div>

				<div class="row py-5 p-4 bg-white rounded shadow-sm">
					<div class="col-lg-12">
						<div
							class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">상품가격</div>
						<div class="p-4">
							<ul class="list-unstyled mb-4">
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">총 상품가격 </strong><strong>39000원</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">배송비</strong><strong>2000원</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">내셔야 할 금액</strong> <strong
									class="font-weight-bold">41000원</strong></li>
							</ul>
							<a type="submit" href="checkout.do"
								class="btn btn-dark rounded-pill py-2 btn-block">구매하기</a>
						</div>
					</div>
				</div>
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