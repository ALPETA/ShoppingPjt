<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
<%@include file="./commons/header/metaHeader.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>


<style>
th, td {
	text-align: center;
}
</style>
<%
	UsersEntity userEntity = (UsersEntity) request.getAttribute("users");
long p_seq = (long) request.getAttribute("p_seq");
int price = (int) request.getAttribute("price");
int amount = (int) request.getAttribute("amount");
%>
<script>
	var p_seq =
<%=p_seq%>
	;
	var price =
<%=price%>
	;
	var amount =
<%=amount%>
	;
	function getData(page) {
		$('html').scrollTop(0);
		$
				.ajax({
					url : "./checkout_product",
					data : {
						seq : p_seq
					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var BoardSection = '';
						var total_price = 0;
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								BoardSection += '<tr>';
								BoardSection += '<td class="border-0 align-middle">';
								BoardSection += '<img src="'
										+ getContextPath()
										+ data[i]['p_sumnailImgPath']
										+ '" style="width:100px;height:100px;"/>';
								BoardSection += '</td>';
								BoardSection += '<td scope="row" class="border-0">';
								BoardSection += '<div class="p-2">';
								BoardSection += '<div class="ml-3 d-inline-block align-middle">';
								BoardSection += '<h5 class="mb-0">';
								BoardSection += '<a class="text-dark d-inline-block align-middle">'
										+ data[i]['p_name'] + '</a>';
								BoardSection += '</h5>';
								BoardSection += '<span class="text-muted font-weight-normal font-italic d-block">'
										+ data[i]['p_use']
										+ ':'
										+ data[i]['p_category'] + '</span>';
								BoardSection += '</div></div></td>';
								BoardSection += '<td class="border-0 align-middle" id="o_totalPrice"><strong>'
										+ price + '</strong></td>';
								BoardSection += '<td class="border-0 align-middle" id="o_stock"><strong>'
										+ amount + '</strong></td>';
								BoardSection += '</tr>';
								BoardSection += '<input type="hidden" name="o_pSeq" value="'+data[i]['p_seq']+'"/>'
								BoardSection += '<input type="hidden" name="o_stock" value="'+amount+'"/>'
								total_price += price;
							}
						} else {
							BoardSection += '<tr>';
							BoardSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">구매 상품이 존재하지 않습니다.</span></td>';
							BoardSection += '</tr>';
						}
						$("#product_items").html(BoardSection);
						$("#total").html(total_price);
						$('input[name=totalPrice]').attr('value', total_price);
					}
				})
	}
	window.onload = getData(0);
</script>
</head>
<body>
	<%@include file="./commons/header/header.jsp"%>
	<div>
		<section class="banner_main2"></section>
	</div>
	<form method="post" action="./saveOrders" enctype="multipart/form-data">
		<div class="px-4 px-lg-0">
			<!-- For demo purpose -->
			<div class="container text-white py-5 text-center">
				<p class="lead">
					주문/결제<a href="https://bootstrapious.com/snippets"
						class="text-black font-italic"></a>
				</p>
			</div>
			<input type="hidden" name="r_bSeq" value="<%=p_seq%>" />
			<input type="hidden" name="u_seq" value="<%=userEntity.getU_seq()%>" /> <!-- 결제창 누르면 u_seq값 들고 내가 주문한 내역 페이지로 이동 해야되므로 필요함 -->
			
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
											<th scope="col" class="border-0 bg-light">
												<div class="p-2 px-3">상품 이미지</div>
											<th scope="col" class="border-0 bg-light">
												<div class="p-2 px-3">제품</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2">가격</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2">개수</div>
											</th>
										</tr>
									</thead>
									<tbody id="product_items"></tbody>
								</table>
								<div style="text-align: center;">
									<ul class="pagination justify-content-center">
									</ul>
								</div>
							</div>
							<!-- End -->
							<h5 class="lead">배송지정보</h5>
							<div class="row">
								<ul class="nav nav-tabs col-lg-12">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="tab" href="#home">기본 배송지</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#menu1">신규 배송지</a></li>
								</ul>
								<div class="tab-content">
									<div id="home" class="container tab-pane active">
										<br>
										<p>유저이름</p>
										<p>
											<%=userEntity.getU_name()%>
										</p>
										<input type="hidden" name="sendname"
											value="<%=userEntity.getU_name()%>" />
										<p>전화번호</p>
										<p>
											<%=userEntity.getU_phone()%>
										</p>
										<input type="hidden" name="sendphone"
											value="<%=userEntity.getU_phone()%>" />
										<p>주소</p>
										<p>
											<%=userEntity.getU_address()%>
										</p>
										<input type="hidden" name="sendAddress"
											value="<%=userEntity.getU_phone()%>" /> <br> <input
											type="hidden" name="o_uSeq" value=<%=userEntity.getU_seq()%>>
									</div>
									<div id="menu1" class="container tab-pane fade">
										<p>수령인</p>
										<input type="text" class="form-control"
											placeholder="수령인을 입력해 주세요" name="new_name" value=""><br />
										<p>전화번호</p>
										<input type="text" class="form-control"
											placeholder="전화번호를 입력해 주세요" name="new_phone" value=""><br />
										<p>배송지 주소</p>
										<input type="text" class="form-control"
											placeholder="배송지 주소를 입력해주세요" name="new_address" value=""><br />
										<p>상세주소</p>
										<input type="text" class="form-control"
											placeholder="상세주소를 입력해 주세요" name="new_exaddress" value=""><br />
									</div>
									<div class="container">
										<p class="font-italic mb-4">택배기사님께 보낼 말</p>
										<textarea name="message" cols="30" rows="2"
											placeholder="내용을 입력해 주세요"></textarea>
									</div>
								</div>
							</div>
							<!-- 
						<hr>
						<div class="col-md-6">
							<h5 class="lead">포인트 사용</h5>
							<br />
							<p>적립 포인트 잔액</p>
							<h5 class="lead" id="point">잔액 표시</h5>
							<br />
							<p>사용 포인트</p>
							<input type="text" class="form-control" id="usePoint"
								placeholder="사용할 포인트 금액을 입력해 주세요" name="usePoint">
						</div>
						 -->
							<hr>
							<div class="col-md-6">
								<h5 class="lead">총 결제금액</h5>
								<div class="lead" id="total"></div>
								<input type="hidden" name="totalPrice" value="" /> <br> <input
									type="radio" name="o_payment" value="신용카드" checked="checked">신용카드
							</div>
							<button type="submit"
								class="btn btn-success rounded-pill py-2 btn-block">결제하기</button>
							<a type="button" href="index.do"
								class="btn btn-dark rounded-pill py-2 btn-block">취소하기</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</form>
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>