
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->




<style>
.space-left {
	margin-left: 970px;
}

.space-left2 {
	margin-left: 1050px;
}
</style>
</head>
<body>
	<%@include file="./logcategory.jsp"%>
	<div class="align-center">
		<section class="banner_main2"></section>
	</div>
	<div class="container">
		<form action="freqwrite_ok.jsp" method="post"
			encType="multiplart/form-data">
			<table class="table table-bordered">
				</br>
				<h4>공지사항 글 보기</h4>
				<a>게시물 번호 : 1</a>
				</br>
				<a class="space-left">조회수 : 1</a>
				<tr>
					<th>제목:</th>
					<td><a>하드캐리</a></td>
				</tr>
				<tr>
					<th>작성자:</th>
					<td><a>홍길동</a></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><textarea cols="10" rows="20" name="content"
							class="form-control" readonly>123</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="수정"
						class="pull-left" /> <input type="button" value="삭제"
						class="pull-left" /> <input type="button" value="글 목록으로... "
						class="pull-right" onclick="javascript:location.href='list.jsp'" />
					</td>
				</tr>
			</table>
			<div class="space-left4">
				작성일 :<a>06-07</a>
			</div>
		</form>
	</div>
</body>
</html>