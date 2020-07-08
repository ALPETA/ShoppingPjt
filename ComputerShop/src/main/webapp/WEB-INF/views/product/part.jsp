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
<title>주변기기</title>
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
	var search = "";
	var length = 8;
	var p_use = "<%=b[0]%>";
	var p_category = "<%=b[1]%>";
	function dateFormat(value) {
		var _date = new Date(value);
		return _date.getFullYear() + '-' + addZero(_date.getMonth() + 1) + '-'
				+ addZero(_date.getDate());
	}
	
	function nowDateCheck(value){
		var now = new Date();
		value = new Date(value);
		if(now.getFullYear() === value.getFullYear() && now.getDate() - 2 <= value.getDate() && now.getMonth() === value.getMonth()){
			return true;
		}else{
			return false;
		}
	}
	function addZero(value) {
		return value < 10 ? "0" + value : value;
	}
	function getData(page) {
		$('html').scrollTop(0);
		$
				.ajax({
					url : './Part',
					data : {
						length : length,
						start : page,
						search : search,
						p_use : p_use,
						p_category : p_category

					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var ordersSection = '';

						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								ordersSection += '<div class="row">';
								ordersSection += '<div class="col-md-2">';
								ordersSection += '<a href="partView.do?seq='
									+ data[i]['p_seq']+'&price='+data[i]['p_price']+'&use='+data[i]['p_use']+'&category='+data[i]['p_category']
								+ '"><img class="img-fluid rounded mb-3 mb-md-0" src="'
								+ getContextPath()
								+ data[i]['p_sumnailImgPath'] + '" style="padding-left: 15px; width:150px; height:150px;"></a>';
								ordersSection += '</div>';
								ordersSection += '<div class="col-md-10" style="padding-right: 45px;">';
								ordersSection += '<a href="partView.do?seq='
									+ data[i]['p_seq']+'&price='+data[i]['p_price']+'&use='+data[i]['p_use']+'&category='+data[i]['p_category']
								+ '"><h3>'+data[i]['p_name']+'</h3></a>'			
								ordersSection += '<p>'+data[i]['p_etc']+'</p>';	
								ordersSection += '<span>'+numberWithCommas(data[i]['p_price'])+'원</span>';
								ordersSection += '<a class="btn btn-primary pull-right" href="partView.do?seq='+data[i]['p_seq']+'&price='+data[i]['p_price']+'&use='+data[i]['p_use']+'&category='+data[i]['p_category']+'"><i class="fa fa-krw"></i>구매하기</a>';
								ordersSection += '</div></div><hr>';	
						}
						}
						$("#productSection").html(ordersSection);
						$(".pagination").html(
								getPageSection(page, length, res['recordsTotal']));
					}
				});
	}

	function searchChange(e) {
		search = $("#search").val();
		getData(0);
	}

	function sizeChange(e) {
		length = $("#size").val();
		getData(0);
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
						<h2><%=use %> (<%=category %>)</h2>
					</div>
				</div>
			</div>
			<!-- Portfolio Item Heading -->
			<div class="input-group mb-3 col-md-4">
					<div class="input-group-prepend" style="height: 38px;">
						<span class="input-group-text">검색</span>
					</div>
					<input type="text" class="form-control" id="search"
						onkeyup="searchChange()">
				</div>
			<div class="row" >
							<div class="col-md-12">
					<div class="our_products" id="productSection">

						<!-- <div class="row" >
						
					
         <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project One</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div> 
        
      </div> -->
     
						
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