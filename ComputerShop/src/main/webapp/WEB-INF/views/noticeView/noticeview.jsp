<%@page import="com.hardCarry.shopping.entity.join.AdminBoardEntity"%>
<%@page
	import="com.hardCarry.shopping.entity.join.BoardReplyUsersEntity"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<%@include file="../commons/header/metaHeader.jsp"%>
<script
	type="text/javascript"
	src="js/jquery-1.10.2.min.js"
></script>
<script
	type="text/javascript"
	src="js/bootstrap.min.js"
></script>
<style>
.black {
	color: black;
}
</style>
<%
	BoardReplyUsersEntity FreeView = (BoardReplyUsersEntity) request.getAttribute("request");
%>
<%
	String ctx = request.getContextPath();
	String img = FreeView.getB_imgPath();
	String img_path = ctx + img;
%>

</head>
<body>
	<%@include file="../commons/header/header.jsp"%>
	<div class="align-center">
		<section class="banner_main2" />
	</div>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<div>
					<h4 class="black">공지사항 글 보기</h4>
					<div class="row">
						<div class="col-md-6">
							<a>게시물 번호 : <%=FreeView.getB_seq()%></a>
						</div>
						<div class="col-md-6" align="right">
							<a>조회수:<%=FreeView.getB_hit()%></a>
						</div>
					</div>
			</thead>
			<tbody>
				<form method="post" encType="multiplart/form-data">
					<tr>
						<th>제목:</th>
						<td><a><%=FreeView.getB_title()%></a></td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><a><%=FreeView.getU_id()%></a></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="20" name="content"
								class="form-control" readonly><%=FreeView.getB_content()%></textarea></td>
					</tr>
					<tr>
						<th> 사진 </th>
						<td><img src="<%=img_path%>"
					style="width: 995px; height: 300px;" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="글 목록으로... "
							class="pull-right" onclick="javascript:location.href='notice.do'" />
						</td>
					</tr>
				</form>
			</tbody>
		</table>
		<div align="right">
			<a>작성일 : <fmt:formatDate value="<%=FreeView.getB_date()%>"
						pattern="yyyy-MM-dd" /></a>
		</div>
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
	<!-- Javascript files-->
	<%@include file="../commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="../commons/js/sidebar.jsp"%>
</body>
</html>