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
<title>데스크탑 상세</title>
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
	String use = (String) request.getAttribute("use");
	String category = (String) request.getAttribute("category");
	
%>

<script>
	function getData(page) {
		$('html').scrollTop(0);
		var p_seq =
<%=a%>
	;
		$
				.ajax({
					url : "./seq",
					data : {
						p_seq : p_seq
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var productSection = '';
						var productSection5 = '';
						var productSection6 = '';
						var productSection7 = '';
						var productSection8 = '';
						var stock =0;
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								console.log(data[i]['p_name']);
								productSection += '<div><a href=""><img class="card-img-top" style="padding-left: 15px; width:400px; height:400px;" src="'
									+ getContextPath()
									+ data[i]['p_sumnailImgPath'] + '" alt=""></a></div>';
								productSection5 += '<h1 style="font-size: 24px; text-align: center;">'
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
						$("#productSection5").html(productSection5);
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
	function getData(page) {
		$('html').scrollTop(0);
		var p_seq =
<%=a%>
	;
		$
				.ajax({
					url : "./seq",
					data : {
						p_seq : p_seq
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var productSection1 = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								console.log(data[i]['p_name']);

								productSection1 += '<tr><td align="center" width="10%">CPU</td>';
								productSection1 += '<td width="40%" id="addCpuName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/cpu.PNG" style="width:30px; height:30px; alt="country flag" /></div>'
										+ data[i]['ps_cpu'] + '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addCpuPrice">'
										+ numberWithCommas(data[i]['ps_cpuprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center" ><a href="" class="addCpuBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal11"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';
								
								productSection1 += '<tr><td align="center" width="10%">RAM</td>';
								productSection1 += '<td width="40%" id="addRamName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/ram.PNG" style="width:30px; height:30px; alt="country flag"/></div>'
										+ data[i]['ps_ram'] + '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addRamPrice">'
										+ numberWithCommas(data[i]['ps_ramprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center"><a href="" class="addRamBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal12"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';
								
								productSection1 += '<tr><td align="center" width="10%">HDD</td>';
								productSection1 += '<td width="40%" id="addHddName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/hdd.PNG" style="width:30px; height:30px; alt="country flag" /></div>'
										+ data[i]['ps_hdd'] + '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addHddPrice">'
										+ numberWithCommas(data[i]['ps_hddprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center"><a href="" class="addHddBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal13"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';
								
								productSection1 += '<tr><td align="center" width="10%">VGA</td>';
								productSection1 += '<td width="40%" id="addVgaName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/graphic.PNG" style="width:30px; height:30px; alt="country flag" /></div>'
										+ data[i]['ps_graphic'] + '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addVgaPrice">'
										+ numberWithCommas(data[i]['ps_vgaprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center"><a href="" class="addVgaBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal14"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';
								productSection1 += '<tr><td align="center" width="10%">MAIN BOARD</td>';
								productSection1 += '<td width="40%" id="addMainName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/mainboard.PNG" style="width:30px; height:30px; alt="country flag" /></div>'
										+ data[i]['ps_mainboard']
										+ '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addMainPrice">'
										+ numberWithCommas(data[i]['ps_mainprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center"><a href="" class="addMainBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal15"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';
								productSection1 += '<tr><td align="center" width="10%">SSD</td>';
								productSection1 += '<td width="40%" id="addSsdName"><div class="row">';
								productSection1 += '<div style="margin-left: 10px; margin-right: 5px; width: 30px; height: 30px;"><img src="imgs/mainImg/ssd.PNG" style="width:30px; height:30px; alt="country flag" /></div>'
										+ data[i]['ps_ssd'] + '</div></td>';
								/* productSection1 += '<td align="center" width="15%" id="addSsdPrice">'
										+ numberWithCommas(data[i]['ps_ssdprice'])
										+ '원</td>'; */
								//productSection1 += '<td width="45%" align="center"><a href="" class="addSsdBtn btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#myModal16"><span class="icon text-white-50"> <i class="fa fa-plus"></i></span><span class="text">사양 변경</span></a></td></tr>';

							}
						} else {
							productSection1 += '<h1>123</h1>'
						}
						$("#productSection1").html(productSection1);

					}
				});
	}
	window.onload = getData(0);
</script>






<script>
	$(document).ready(
			function() {
				$("#changeBottom").click(function() {
					if ($("#changeProduct").css("display") != "none") {
						$("#changeProduct").hide();
					} else {
						$("#changeProduct").show();
					}
				});
				
				$(".monitorBtn").click(
						function() {
							$("#addMonitorPrice").text(
									($(this).parent().prev().text()));
							$("#addMonitorName").text(
									($(this).parent().prev().prev().text()));
							$(".addMonitorBtn").addClass("btn-success");
						})
				$(".keyboardBtn").click(
						function() {
							$("#addKeyboardPrice").text(
									($(this).parent().prev().text()));
							$("#addKeyboardName").text(
									($(this).parent().prev().prev().text()));
							$(".addKeyboardBtn").addClass("btn-success");
						})
				$(".mouseBtn").click(
						function() {
							$("#addMousePrice").text(
									($(this).parent().prev().text()));
							$("#addMouseName").text(
									($(this).parent().prev().prev().text()));
							$(".addMouseBtn").addClass("btn-success");
						})
				$(".speakerBtn").click(
						function() {
							$("#addSpeakPrice").text(
									($(this).parent().prev().text()));
							$("#addSpeakName").text(
									($(this).parent().prev().prev().text()));
							$(".addSpeakBtn").addClass("btn-success");
						})
				$(".cpuBtn").click(
						function() {
							$("#addCpuPrice").text(
									($(this).parent().prev().text()));
							$("#addCpuName").text(
									($(this).parent().prev().prev().text()));
							$(".addCpuBtn").addClass("btn-success");
						})
				$(".ramBtn").click(
						function() {
							$("#addRamPrice").text(
									($(this).parent().prev().text()));
							$("#addRamName").text(
									($(this).parent().prev().prev().text()));
							$(".addRamBtn").addClass("btn-success");
						})
				$(".hddBtn").click(
						function() {
							$("#addHddPrice").text(
									($(this).parent().prev().text()));
							$("#addHddName").text(
									($(this).parent().prev().prev().text()));
							$(".addHddBtn").addClass("btn-success");
						})
				$(".vgaBtn").click(
						function() {
							$("#addVgaPrice").text(
									($(this).parent().prev().text()));
							$("#addVgaName").text(
									($(this).parent().prev().prev().text()));
							$(".addVgaBtn").addClass("btn-success");
						})
				$(".mainboardBtn").click(
						function() {
							$("#addMainboarPrice").text(
									($(this).parent().prev().text()));
							$("#addMainboarName").text(
									($(this).parent().prev().prev().text()));
							$(".addMainboarBtn").addClass("btn-success");
						})
				$(".ssdBtn").click(
						function() {
							$("#addSsdPrice").text(
									($(this).parent().prev().text()));
							$("#addSsdName").text(
									($(this).parent().prev().prev().text()));
							$(".addSsdBtn").addClass("btn-success");
						})
			});
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


<%-- <script>
function getData(page) {
	$('html').scrollTop(0);
	var p_seq =
<%=a%>
;
	$
			.ajax({
				url : "./seq",
				data : {
					p_seq : p_seq
				},
				method : "GET",
				success : function(res) {
					var data = res['data'];
					var productSection10 = '';
					if (data.length > 0) {
						for (var i = 0; i < data.length; i++) {
							productSection10 += '<tr><td>부품명</td><td>변경가격</td><td>구분</td></tr>';
							productSection10 += '<tr><td>'+data[i]['p_name']+'</td><td>+&nbsp;'+numberWithCommas(data[i]['p_price'])+'원</td><td><button type="button" class="monitorBtn btn btn-secondary" data-dismiss="modal">추가</button></td></tr>';
						}
					} else {
						productSection += '<h1>123</h1>'
					}
					$("#productSection10").html(productSection10);				
				}
			});
}
window.onload = getData(0);
</script> --%>
<body class="main-layout inner_posituong" onload="init();">

	<%@include file="../commons/header/header.jsp"%>



	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2><%=category %> <%=use %></h2>
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
											&nbsp;<a href="product?name=데스크탑,사무용"><%=category %> <%=use %></a></td>
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
								<div id="productSection">
									<!-- <a href=""><img class="card-img-top"
										src="http://placehold.it/400x700" alt=""></a> -->
								</div>
							</div>
							<div class="col-lg-8 col-md-6 mb-4">


								<h1 id="productSection5"></h1>

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
											<td style="font-size: 15px;">사양</td>
											<td>
												<button type="button"
													class="btn btn-primary btn-icon-split btn-sm"
													id="changeBottom">
													<span class="icon text-white-50"> </span> <span
														class="text" style="font-size: 14px;">사양 상세 보기</span>
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
										type="button" value=" + " onclick="add();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 금액 <input
										type="text" name="sum" size="5" readonly
										style="text-align: right;">원
								
									<input type="hidden" name="p_seq"value="<%=a%>">
								<br /><br/>
								<!-- <form id="productSection10"></form> -->
								<input type="hidden" name="stock" value=""/>
								<div style="text-align: center;">

									<!-- <button type="button"
										class="btn btn-primary btn-icon-split btn-sm"
										style="width: 244px; height: 50px;">
										<span class="icon text-white-50"> <i
											class="fa fa-shopping-cart"></i>
										</span> <span class="text">장바구니 담기</span>
									</button>
									&nbsp;&nbsp; -->
									<button type="submit"
										class="btn btn-primary btn-block btn-icon-split btn-sm"
										style="width: 700px; height: 50px;">
										<span class="icon text-white-50"> <i class="fa fa-krw"></i>
										</span> <span class="text">구매하기</span>
									</button>
								</div>
							</form>
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
							<!-- <a href="" class="btn btn-primary btn-icon-split btn-sm"
								style="float: right;" > <span class="icon text-white-50">
									<i class="fa fa-refresh"></i>
							</span> <span class="text">사양 초기화</span>
							</a> -->
						</div>
					</div>
				</div>

				<div class="card-body" >
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<tbody id="productSection1">

							</tbody>
						</table>
					</div>
				</div>



			</div>
		</div>



	<!-- 	<div class="container" id="chrlghk">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<div class="row">
						<div class="col-md-2">
							<h6 class="m-0 font-weight-bold text-primary">추가구매 상품</h6>
						</div>
						<div class="col-md-8"></div>
						<div class="col-md-2">

							<button class="btn btn-primary btn-icon-split btn-sm" id="button">
								<span class="icon text-white-50"> <i
									class="fa fa-refresh"></i>
								</span> <span class="text">추가 구매 초기화</span>
							</button>


						</div>
					</div>
				</div>






				<div class="card-body" id="chrlghk">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable1" width="100%"
							cellspacing="0">
							<tbody>
								<tr>
									<td align="center">모니터</td>
									<td id="addMonitorName">:: 선택하세요 .</td>
									<td align="center" id="addMonitorPrice">가격</td>
									<td align="center"><a href=""
										class="addMonitorBtn btn btn-primary btn-icon-split btn-sm"
										data-toggle="modal" data-target="#myModal"> <span
											class="icon text-white-50"> <i class="fa fa-plus"></i>
										</span> <span class="text">추가 구매</span>
									</a></td>
								<tr>
									<td align="center">키보드</td>
									<td id="addKeyboardName">:: 선택하세요 .</td>
									<td align="center" id="addKeyboardPrice">가격</td>
									<td align="center"><a href=""
										class="addKeyboardBtn btn btn-primary btn-icon-split btn-sm"
										data-toggle="modal" data-target="#myModal1"> <span
											class="icon text-white-50"> <i class="fa fa-plus"></i>
										</span> <span class="text">추가 구매</span>
									</a></td>

								</tr>
								<tr>
									<td align="center">마우스</td>
									<td id="addMouseName">:: 선택하세요 .</td>
									<td align="center" id="addMousePrice">가격</td>
									<td align="center"><a href=""
										class="addMouseBtn btn btn-primary btn-icon-split btn-sm"
										data-toggle="modal" data-target="#myModal2"> <span
											class="icon text-white-50"> <i class="fa fa-plus"></i>
										</span> <span class="text">추가 구매</span>
									</a></td>

								</tr>
								<tr>
									<td align="center">스피커</td>
									<td id="addSpeakName">:: 선택하세요 .</td>
									<td align="center" id="addSpeakPrice">가격</td>
									<td align="center"><div
											class="addSpeakBtn btn btn-primary btn-icon-split btn-sm"
											data-toggle="modal" data-target="#myModal3">
											<span class="icon text-white-50"> <i
												class="fa fa-plus"></i>
											</span> <span class="text">추가 구매</span>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div> -->
	</div>
	<!-- end products -->
	<div class="modal fade" id="myModal11">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">CPU 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>CPU(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="cpuBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>CPU(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="cpuBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>CPU(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="cpuBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	
	
	
	<div class="modal fade" id="myModal12">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">RAM 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>RAM(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="ramBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>RAM(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="ramBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>RAM(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="ramBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal13">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">HDD 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>HDD(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="hddBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>HDD(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="hddBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>HDD(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="hddBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal14">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">VGA 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>VGA(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="vgaBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>VGA(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="vgaBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>VGA(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="vgaBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal15">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">MAIN BOARD 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>MAIN BOARD(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="mainboardBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>MAIN BOARD(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="mainboardBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>MAIN BOARD(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="mainboardBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal16">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">SSD 기본구성 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>SSD(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button" class="ssdBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>SSD(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button" class="ssdBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
							<tr>
								<td>SSD(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button" class="ssdBtn btn btn-secondary"
										data-dismiss="modal">추 가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>


	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">모니터 추가 구매</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
					<table class="table">
						<tbody >
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>모니터(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button"
										class="monitorBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>모니터(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button"
										class="monitorBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>모니터(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button"
										class="monitorBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr> 
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">키보드 추가 구매</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>키보드(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button"
										class="keyboardBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>키보드(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button"
										class="keyboardBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>키보드(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button"
										class="keyboardBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal2">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">마우스 추가 구매</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>마우스(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button"
										class="mouseBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>마우스(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button"
										class="mouseBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>마우스(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button"
										class="mouseBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal3">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">스피커 추가 구매</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<td>부품명</td>
								<td>변경가격</td>
								<td>구분</td>
							</tr>
							<tr>
								<td>스피커(1)</td>
								<td>+ 100,000원</td>
								<td><button type="button"
										class="speakerBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>스피커(2)</td>
								<td>+ 200,000원</td>
								<td><button type="button"
										class="speakerBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>
							<tr>
								<td>스피커(3)</td>
								<td>+ 300,000원</td>
								<td><button type="button"
										class="speakerBtn btn btn-secondary" data-dismiss="modal">추
										가</button></td>
							</tr>

						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
</body>
</html>