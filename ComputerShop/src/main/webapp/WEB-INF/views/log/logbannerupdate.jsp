<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.space-left {
	margin-left: 1010px;
}
</style>
</head>
<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<h4>배너 수정</h4>
				<div>
					<a>배너 번호 : 1</a>
				</div>
			</thead>
			<tbody>
				<form method="post" encType="multiplart/form-data">
					<tr>
						<th>타이틀:</th>
						<td><input type="text" value="하드캐리" name="title"
							class="form-control" /></td>
					</tr>
				<tr>
					<th>설명:</th>
					<td><textarea cols="10" rows="20" name="content"
							class="form-control">123</textarea></td>
				</tr>
				<tr>
					<th for="exampleInputFile">이미지 업로드:</th>
					<td><input type="file" class="form-control-file form-control"
						id="exampleInputFile" aria-describedby="fileHelp" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="취소"
						class="pull-right" onclick="javascript:location.href='qa.do'" />
						<input type="button" value="등록" class="pull-right"
						onclick="javascript:location.href='qa.do'" /></td>
				</tr>
				</form>
			</tbody>
		</table>
	</div>
</body>
</html>