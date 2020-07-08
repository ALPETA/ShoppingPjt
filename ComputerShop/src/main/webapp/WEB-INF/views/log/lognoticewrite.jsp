<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->

</head>
<script>

$(document).ready(function() {
	var imgByte;
	$("#mainImg").change(
			function() {
				const fileFilter = $(this).val();
				if (fileFilter === '') {
					return;
				}
				const extension = fileFilter.substring(
						fileFilter.indexOf('.'),
						fileFilter.length).toLowerCase();
				if (extension === '.jpg'
						|| extension === '.jpeg'
						|| extension === '.png') {
					readURL(this, 'mainImgSection');
				} else {
					alert("이미지 파일만 업로드 가능합니다.");
					$(this).val(null);
				}
			});
	$("#mainImgSection, #detailImgSection")
	.click(
			function() {
				$("#modalSection")
						.html(
								"<img src='"
										+ imgByte
										+ "' style='width:100%;height:100px'/>");
			});
	function readURL(input, sction) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				imgByte = e.target.result;
				$('#' + sction)
						.attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
});

</script>
<body>
		
	<%@include file="./logcategory.jsp"%>
	<div class="container">
		</br>
		<h1>공지사항 글쓰기</h1>
		<form method="post" action="./logBoard/add" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tr>
					<th>제목:</th>
					<td><input type="text" placeholder="제목을 입력하세요. "
						name="b_title" class="form-control"  id="exampleInputPassword1"/></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><textarea cols="10" rows="20" placeholder="내용을 입력하세요. "
							name="b_content" class="form-control"></textarea></td>
				</tr>
				<tr>
					<th for="exampleInputFile">이미지 업로드:</th>
					<td>
					<div class="form-group col-lg-10">
				<label for="exampleInputFile">상품 메인 이미지 업로드</label> 
				<input type="file" class="form-control-file" id="mainImg"
					aria-describedby="fileHelp" name="files"> <small
					id="fileHelp" class="form-text text-muted">이미지 미리 보기</small>
				<div class="row">
					<img id="mainImgSection" class="col-lg-10" style="cursor: pointer"
						data-toggle="modal" name="f1Img" data-target="#myModal" />
				</div>
			</div>
			</td>
			</table>
						<div class="form-group col-lg-10">
				<button type="submit" class="btn btn-primary btn-block"
					onclick="test.jsp">등 록</button>
				<button type="button" class="btn btn-secondary btn-block">초기화</button>
			</div>
		</form>
	</div>

</body>
</html>