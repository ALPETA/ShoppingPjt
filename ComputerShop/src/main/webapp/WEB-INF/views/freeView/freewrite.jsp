<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자유게시판 글쓰기</title>
<%@include file="../commons/header/metaHeader.jsp"%>
<script
	type="text/javascript"
	src="js/jquery-1.10.2.min.js"
></script>
<script
	type="text/javascript"
	src="js/bootstrap.min.js"
></script>
</head>
<body>
	<%@include file="../commons/header/header.jsp"%>
	<div>
		<section class="banner_main2"></section>
	</div>
	<div class="container">
		<caption>자유게시판 글쓰기</caption>
		<table class="table table-bordered">
			<tbody>
				<form method="post" action="./addFreeBoard" enctype="multipart/form-data">
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " id="title" name="title"
							class="form-control"/></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="20" placeholder="내용을 입력하세요. "
								id="content" name="content" class="form-control"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<div align="right">
							<button type="submit" class="btn btn-lg1 btn">등록</button>
							<button type="button" class="btn btn-lg1 btn"
								onclick="javascript:location.href='free.do'">취소</button>
							</div>
						</td>
					</tr>
				</form>
			</tbody>
		</table>
	</div>
	<%@include file="../commons/footer/footer.jsp"%>
</body>
</html>