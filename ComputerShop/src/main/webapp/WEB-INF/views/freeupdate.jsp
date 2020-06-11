<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style>
.space-left {
	margin-left: 980px;
}
.space-left2 {
	margin-left: 1050px;
}
</style>
</head>
<body>
	<div class="container">
		<table class="table table-bordered">
			<thead>
			<h4>자유게시판 글 수정</h4>
			<div>
				<a>게시물 번호 : 1</a><a class="space-left">조회수 : 1</a>
			</div>
			</thead>
			<tbody>
				<form action="freqwrite_ok.jsp" method="post"
					encType="multiplart/form-data">
					<tr>
						<th>제목:</th>
						<td><input type="text" value="하드캐리" name="subject"
							class="form-control" /></td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><a>홍길동</a></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="20" name="content"
								class="form-control">123</textarea></td>
					</tr>
					<tr>
						<th for="exampleInputFile">이미지 업로드:</th>
						<td><input type="file" class="form-control-file form-control"
							id="exampleInputFile" aria-describedby="fileHelp" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="수정"
							onclick="sendData()" class="pull-right" /> <input type="button"
							value="글 목록으로... " class="pull-right"
							onclick="javascript:location.href='list.jsp'" /></td>
					</tr>
				</form>
			</tbody>
		</table>
		<div class="space-left2">
			작성일 :<a>06-07</a>
		</div>
	</div>
</body>
</html>