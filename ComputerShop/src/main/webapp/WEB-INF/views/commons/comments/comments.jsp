<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<%@include file="./comments_style.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="widget-area no-padding blank margin-right">
					<div class="status-upload">
						<form>
							<textarea placeholder="댓글을 적어 주세요."></textarea>
							<button type="submit" class="btn btn-success green">
								<i class="fa fa-share"></i> 전송
							</button>
						</form>
					</div>
					<!-- Status Upload  -->
				</div>
				<!-- Widget Area -->
			</div>
		</div>
	</div>
</body>
</html>