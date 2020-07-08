<!DOCTYPE html>
<%@page
	import="com.hardCarry.shopping.entity.join.AdminProductViewEntity"%>
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
<title>주변기기 상세</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<!-- <link rel="stylesheet" href="css/style.css"> -->
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%@include file="../commons/header/metaHeader.jsp"%>
<script src="js/commonFunc.js"></script>
</head>
<%
	String a = (String) request.getAttribute("product");
	String price = (String) request.getAttribute("price");
%>

<script>
	function getData(page) {
		$('html').scrollTop(0);
		var p_seq =
<%=a%>
	;
		$
				.ajax({
					url : "./seq1",
					data : {
						p_seq : p_seq
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var productSection = '';
						var productSection6 = '';
						var productSection7 = '';
						var productSection8 = '';
						var stock =0;
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								console.log(data[i]['p_name']);
								productSection += '<h1 style="font-size: 24px; text-align: center;">'
										+ data[i]['p_name'] + '</h1>';
								productSection6 += ' <td style="font-size: 15px;"><br>판매가</td>';
								productSection6 += ' <td style="font-size: 29px; line-height: 25px;">';
								productSection6 += '<span class="price_ori"style="font-size: 17px;"><br></span>'
										+ numberWithCommas(data[i]['p_price'])
										+ '원</td>';
								productSection7 += '<td style="font-size: 15px;">제조사, A/S</td>';
								productSection7 += '<td style="font-size: 15px;">'
										+ data[i]['p_manufacture'] + '</td>';
								productSection8 += '<td style="font-size: 15px;">재고 수</td>'
								productSection8 += '<td style="font-size: 15px;">'
										+ data[i]['p_stock'] + '</td>'
								stock += data[i]['p_stock'];
							}
						} else {
							productSection += '<h1>123</h1>'
						}
						$("#productSection").html(productSection);
						$("#productSection6").html(productSection6);
						$("#productSection7").html(productSection7);
						$("#productSection8").html(productSection8);
						$('input[name=stock]').attr('value', stock);
					}
				});
	}
	window.onload = getData(0);
</script>









<script>
	var sell_price;
	var amount;
	function init() {
		sell_price = document.form.sell_price.value;
		amount = document.form.amount.value;
		document.form.sum.value = sell_price;
		change();
	}
	function add() {
		hm = document.form.amount;
		sum = document.form.sum;
		hm.value++;
		sum.value = parseInt(hm.value) * sell_price;
	}
	function del() {
		hm = document.form.amount;
		sum = document.form.sum;
		if (hm.value > 1) {
			hm.value--;
			sum.value = parseInt(hm.value) * sell_price;
		}
	}
	function change() {
		hm = document.form.amount;
		sum = document.form.sum;
		if (hm.value < 0) {
			hm.value = 0;
		}
		sum.value = parseInt(hm.value) * sell_price;
	}
</script>

<!-- <script>
$('#button').on ("click" function() {
	$('#chrlghk').load(window.location.href + '#chrlghk');
});
</script> -->



<body class="main-layout inner_posituong" onload="init();">

	<%@include file="../commons/header/header.jsp"%>



	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>주변기기</h2>
					</div>
				</div>
			</div>


			<!-- Portfolio Item Heading -->
			<table cellspacing="0">
				<tbody>
					<tr>
						<td width="980"></td>
					</tr>
					<tr>
						<td width="980" style="padding-top: 3px" height="27">
							<table cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td style="padding-top: 8px" id="position">&nbsp;&nbsp;<a
											href="index.do">HOME</a>&nbsp; &gt; &nbsp;용도별컴퓨터&nbsp; &gt;
											&nbsp;<a href="part?name=주변기기,모니터">인터넷용 가정용 컴퓨터</a></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="row">

				<div class="col-md-12">
					<div class="our_products">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div>
									<a href=""><img class="card-img-top"
										src="http://placehold.it/400x700" alt=""></a>
								</div>
							</div>
							<div class="col-lg-8 col-md-6 mb-4">


								<h1 id="productSection"></h1>

								<table class="table">

									<tbody>
										<tr id="productSection6">

											<!-- <td style="font-size: 15px;"><br>판매가</td>
											
											
										<td style="font-size: 29px; line-height: 25px;">
										<strong class="sale" style="font-size: 24px; color: red;">6
										<span class="unit" style="font-size: 18px; color: red;">%&nbsp;&nbsp;</span></strong>
										<span class="price_ori" style="font-size: 17px;"><del>888,000</del><br></span>836,000원</td>  -->


										</tr>

										<!-- <tr>

											<td style="font-size: 15px;">인기도</td>
											<td style="font-size: 15px;">324/1,000점 &nbsp;&nbsp;<span
												style="color: red;">↑급상승</span>
												<p>5 (1건)</p></td>



										</tr> -->
										<tr id="productSection7">
											<!-- <td style="font-size: 15px;">제조사, A/S</td>
											
											 <td style="font-size: 15px;">compuzone</td>  -->


										</tr>
										<tr id="productSection8">
											<!-- <td style="font-size: 15px;">적립금</td>
											<td style="font-size: 15px;">1,680원</td>
 -->

										</tr>
										<tr>
											<td style="font-size: 15px;">카드혜택</td>
											<td style="font-size: 15px;">무이자 할부</td>


										</tr>
										<tr>
											<td style="font-size: 15px;">배송정보</td>
											<td style="font-size: 15px;">기본배송 | 당일발송</td>


										</tr>
										
										<!-- <tr>
											<td style="font-size: 15px;">서비스</td>
											<td><div class="ckbox">
													<input type="checkbox" id="checkbox1"> <label
														for="checkbox1" style="font-size: 14px;">출장 설치 서비스
														+25,000원</label>&nbsp;&nbsp; <input type="checkbox" id="checkbox1">
													<label for="checkbox1" style="font-size: 14px;">출장
														A/S +33,000원</label>
												</div></td>


										</tr> -->
										<tr>
											<td style="font-size: 15px;">사양변경</td>
											<td>
												<button type="button"
													class="btn btn-primary btn-icon-split btn-sm"
													id="changeBottom">
													<span class="icon text-white-50"> </span> <span
														class="text" style="font-size: 14px;">사양 변경</span>
												</button>
											</td>


										</tr>

									</tbody>

								</table>

								<hr>

								<br/><br/>
								<form name="form" method="get" action="checkout.do" style="text-align: right;padding-right: 30px;" >


									<input type="button" value=" - " onclick="del();"><input
										style="text-align: center;" type="text" name="amount"
										value="1" size="1" onchange="change();"><input
										type=hidden name="sell_price" value="<%=price%>"><input
										type="button" value=" + " onclick="add();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 총 합계 금액 <input
										type="text" name="sum" size="5" readonly
										style="text-align: right;">원
								</form>
									<input type="hidden" name="p_seq"value="<%=a%>">
								<br /><br/>
								<!-- <form id="productSection10"></form> -->
								<input type="hidden" name="stock" value=""/>
								<div style="text-align: center;">

									
									<button type="submit"
										class="btn btn-primary btn-block btn-icon-split btn-sm"
										style="width: 700px; height: 50px;">
										<span class="icon text-white-50"> <i class="fa fa-krw"></i>
										</span> <span class="text">구매하기</span>
									</button>
								</div>
							
							</div>

						</div>


					</div>

				</div>

			</div>
		</div>



		<br>
		









				
	
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
</body>
</html>