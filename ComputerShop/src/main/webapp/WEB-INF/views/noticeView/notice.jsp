<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<%@include file="../commons/header/metaHeader.jsp"%>
<style>
.margin-left {
	margin-left: 1920px;
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
					<button type="button" class="btn btn-dark margin-left"
						onclick="javascript:location.href='noticewrite.do'">글 작성</button>
				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->
	<%@include file="../commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="../commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="../commons/js/sidebar.jsp"%>
</body>
</html>
