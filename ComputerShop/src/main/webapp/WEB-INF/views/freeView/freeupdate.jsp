<%@page
	import="com.hardCarry.shopping.entity.join.BoardReplyUsersEntity"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.hardCarry.shopping.entity.join.FreeBoardUserEntity"%>
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
.space-left {
	margin-left: 960px;
}

.space-left2 {
	margin-left: 1010px;
}
</style>
</head>
<body>
	<%
		BoardReplyUsersEntity FreeView = (BoardReplyUsersEntity) request.getAttribute("request");
	%>
	<%@include file="../commons/header/header.jsp"%>
	<div>
		<section class="banner_main2" />
	</div>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<div>
					<h4>자유게시판 글 수정</h4>
					<div class="row">
						<div class="col-md-6">
							<a name="seq">게시물 번호 : <%=FreeView.getB_seq()%></a>
						</div>
						<div class="col-md-6" align="right">
							<a>조회수:<%=FreeView.getB_hit()%></a>
						</div>
					</div>
			</thead>
			<tbody>
				<form method="post"
					action="./updateFreeBoard?name=<%=FreeView.getB_seq()%>"
					encType="multiplart/form-data">
					<tr>
						<th>제목:</th>
						<td><input class="form-control" id="title" name="title"
							style="resize: none;" value="<%=FreeView.getB_title()%>"></input></td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><a><%=FreeView.getU_id()%></a></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="20" id="content" name="content"
								class="form-control" style="resize: none;"><%=FreeView.getB_content()%></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<div align="right">
								<button type="submit" class="btn btn-lg1 btn btn-light">등록</button>
								<a class="btn btn-lg1 btn btn-light" href="free.do"">취소</a>
							</div>
						</td>
					</tr>
				</form>
			</tbody>
		</table>

		<div class="col-md-12" align="right">
			<a>작성일 : <fmt:formatDate value="<%=FreeView.getB_date()%>"
					pattern="yyyy-MM-dd" /></a>
		</div>
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
</body>
</html>