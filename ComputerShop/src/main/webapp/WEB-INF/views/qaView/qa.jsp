<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@include file="../commons/header/metaHeader.jsp"%>
<%@include file="../commons/js/javascript.jsp"%>
<style>
.margin-left {
	margin-left: 1700px;
}
</style>
</head>
<bodyclass="main-layout">

	<%@include file="../commons/header/header.jsp"%>
	<div class="align-center" >
		<section class="banner_main2">
		</section>
	</div>
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="table-responsive">
					<div class="table-responsive">
						<!-- 메타데이터 -->
						<%@include file="qaMetaData.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- sidebar -->
	<%@include file="../commons/js/sidebar.jsp"%>
</body>
</html>
