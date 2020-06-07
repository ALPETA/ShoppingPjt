<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./commons/header/metaHeader.jsp"%>
<meta charset="UTF-8">
<title>회원 가입</title>
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