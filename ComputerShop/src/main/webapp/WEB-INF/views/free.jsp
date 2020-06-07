<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SB Admin 2 - Tables</title>
<!-- <link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/sb-admin-2.min.js"></script> -->
<%@include file="./commons/header/metaHeader.jsp"%>
</head>
<bodyclass="main-layout">
	<%@include file="./commons/loader.jsp"%>
	<%@include file="./commons/header/header.jsp"%>
	<div class="align-center" >
		<section class="banner_main2">
			<!-- <div class="carousel-inner">
				<br> <br> <br> <br> <br> <br>
				<div class="container"></div>
			</div> -->
		</section>
	</div>
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="table-responsive">

					<!-- 메타데이터 -->
					<%@include file="./freeview/freeMetaData.jsp"%>

					<!-- 검색 창&버튼 -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="제품 검색" aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button type="button" class="btn btn-secondary">검색</button>
							</div>
						</div>
					</form>
					<!-- End of 검색 창&버튼 -->

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
