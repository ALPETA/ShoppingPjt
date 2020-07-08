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
<title>부품</title>
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
	%>
	
<script>
	function getData(page) {
		$('html').scrollTop(0);
		var length = 8;
		var p_use = "<%=b[0]%>"; 
		var p_category = "<%=b[1]%>"; 
		$.ajax({
					
					url : "./Part",
					data : {
						start : page,
						length : length,
						p_use : p_use,
						p_category : p_category
					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var totalCount = res['recordsTotal'];
						var productSection = '';
						for (var i = 0; i < data.length; i++) {						
							productSection += '<div class="row">';
							productSection += '<div class="col-md-2">';
							productSection += '<a href="parttView.do?seq='
								+ data[i]['p_seq']+'&price='+data[i]['p_price']
							+ '"><img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/150x150" style="padding-left: 15px;"></a>';
							productSection += '</div>';
							productSection += '<div class="col-md-10" style="padding-right: 45px;">';
							productSection += '<h3>'+data[i]['p_name']+'</h3>'			
							productSection += '<p>'+data[i]['p_etc']+'</p>';	
							productSection += '<span>'+numberWithCommas(data[i]['p_price'])+'원</span>';
							productSection += '<a class="btn btn-primary pull-right" href="partView.do?seq='+data[i]['p_seq']+'"><i class="fa fa-krw"></i>구매하기</a>';
							productSection += '</div></div><hr>';						
						}
						$("#productSection").html(productSection);
						$(".pagination").html(getPageSection(page,length,totalCount));
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
						<h2>부품</h2>
					</div>
				</div>
			</div>
			<!-- Portfolio Item Heading -->
			<h1 class="my-4">
				Page Heading <small>Secondary Text</small>
			</h1>
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