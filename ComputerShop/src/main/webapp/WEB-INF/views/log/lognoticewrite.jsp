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
</head>
<body>
	
	<%@include file="./logcategory.jsp"%>

	<div>
		<section class="banner_main"></section>
	</div>
	<div class="container">
		</br>
		<h1>공지사항 글쓰기</h1>
		<form method="post" encType="multiplart/form-data">
			<table class="table table-bordered">
				<tr>
					<th>제목:</th>
					<td><input type="text" placeholder="제목을 입력하세요. "
						name="subject" class="form-control" /></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><textarea cols="10" rows="20" placeholder="내용을 입력하세요. "
							name="content" class="form-control"></textarea></td>
				</tr>
				<tr>
					<th for="exampleInputFile">이미지 업로드:</th>
					<td><input type="file" class="form-control-file form-control"
						id="exampleInputFile" aria-describedby="fileHelp" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="취소"
						class="pull-right" onclick="javascript:location.href='notice.do'" />
						<input type="button" value="등록" class="pull-right"
						onclick="javascript:location.href='notice.do'" />
						<input type="button" value="수정" class="pull-right"
						onclick="javascript:location.href='#'" />
						</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>