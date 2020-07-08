<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<%@include file="../commons/header/metaHeader.jsp"%>
<!-- Javascript files-->
<%@include file="../commons/js/javascript.jsp"%>
<style>
.margin-left {
	margin-left: 1700px;
}
</style>
</head>
<body class="main-layout">
	<%@include file="../commons/header/header.jsp"%>
	<div class="align-center">
		<section class="banner_main2"></section>
	</div>
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="table-responsive">
					<div class="table-responsive">
						<!-- 메타데이터 -->
						<%@include file="noticeMetaData.jsp"%>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->
	<%@include file="../commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- sidebar -->
	<%@include file="../commons/js/sidebar.jsp"%>
</body>
</html>
