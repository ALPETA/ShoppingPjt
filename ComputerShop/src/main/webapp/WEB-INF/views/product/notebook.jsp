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
<title>노트북</title>
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
<script src="js/pageSection.js"></script>

<script src="js/commonFunc.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<%
	String a = (String)request.getAttribute("a");
	String b[] = a.split(",");
	String use = (String) request.getAttribute("use");
	String category = (String) request.getAttribute("category");
	%>
	
<script>
	function getData(page) {
		$('html').scrollTop(0);
		var length = 8;
		var p_use = "<%=b[0]%>"; 
		var p_category = "<%=b[1]%>"; 
		$
				.ajax({
					
					url : "./Notebook",
					data : {
						start : page,
						length : length,
						p_use : p_use,
						p_category : p_category
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var totalCount = res['recordsTotal'];
						var productSection = '';
						for (var i = 0; i < data.length; i++) {
							productSection += '<a href="productView.do?seq='
								+ data[i]['p_seq']+'&price='+data[i]['p_price']'&use='+data[i]['p_use']+'&category='+data[i]['p_category']
								+ '"><div class="col-lg-3 col-md-6 mb-4 productCard" style="float:left;">';
							productSection += '<div class="card h-100">';
							productSection += '<img class="card-img-top" style="width:300px;height:400px;" src="'
									+ getContextPath()
									+ data[i]['p_sumnailImgPath'] + '">';
							productSection += '<div class="card-body"><h4 class="card-title">';
							productSection += '<a href="notebookView.do?seq='
									+ data[i]['p_seq'] + '">'
									+ data[i]['p_name'] + '</a>';
							productSection += '<h4>원도우&nbsp&nbsp미포함</h4>';
							productSection += '<h4>CPU&nbsp&nbsp;'
									+ data[i]['ps_cpu'] + '</h4>';
							productSection += '<h4>RAM&nbsp&nbsp;'
									+ data[i]['ps_ram'] + '</h4>';
							productSection += '<h4>HDD&nbsp&nbsp;'
									+ data[i]['ps_hdd'] + '</h4>';
							productSection += '<h4>GVA&nbsp&nbsp;'
									+ data[i]['ps_graphic'] + '</h4>';
							productSection += '<h5>￦ '
									+ numberWithCommas(data[i]['p_price'])
									+ '원</h5></div></div>';
							productSection += '</div></a>';
						}
						$("#productSection").html(productSection);
						$(".pagination").html(
								getPageSection(page, length, totalCount));
					}
				});
	}
	window.onload = getData(0);
</script>
</head>
<!-- body -->
<body class="main-layout inner_posituong computer_page">
	<!-- loader  -->
	<!-- end loader -->
	<!-- header -->
	<%@include file="../commons/header/header.jsp"%>
	<!-- end header inner -->
	<!-- end header -->
	<!-- laptop  section -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2><%=use %><%=category%></h2>
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

						<!-- <div class="row"
							style="border: 1px solid black; position: relative; top: -90px; margin-left: 0px; margin-right: 0px;">
							<div class="col-2" style="background-color: #92FFFF;"
								align="center">
								<div style="padding: 5px; position: relative; top: 3px;">인터넷
									/ 사무용 컴퓨터</div>
							</div>
							<div class="col-2"></div>
							<div class="col-2" style="padding: 5px;">
								<button type="button"
									class="btn btn-outline-info btn-sm btn-block">가격높은순</button>
							</div>
							<div class="col-2" style="padding: 5px;">
								<button type="button"
									class="btn btn-outline-info btn-sm btn-block">가격낮은순</button>
							</div>
							<div class="col-2" style="padding: 5px;">
								<button type="button" class="btn btn-info btn-sm btn-block">가격순</button>
							</div>
							<div class="col-2" style="padding: 5px;">
								<button type="button"
									class="btn btn-outline-info btn-sm btn-block">가격순</button>
							</div>
						</div> -->
						<div id="productSection"></div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<!-- Pagination -->
		<div style="text-align: center;">
			<ul class="pagination justify-content-center">
			</ul>
		</div>
	</div>
	<!-- end laptop  section -->
	<!--  footer -->
	<%@include file="../commons/footer/footer.jsp"%>
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