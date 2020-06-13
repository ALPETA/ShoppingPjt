<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@include file="./reply_style.jsp"%>
<style>
.margin-left {
	margin-left: 910px;
}

.margin-left2 {
	margin-left: 970px;
}

.absolute {
	position: absolute;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class=" panel-default widget col-md-12">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">댓글</h3>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-10 col-md-11">
									<a>작성자 명</a>
									<div class="btn btn-link margin-left2 absolute">삭제</div>
									<div class="btn btn-link margin-left absolute">수정</div>
									<div class="comment-text">댓글 내용</div>
									<div class="mic-info">시간</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>