<%@page
	import="com.hardCarry.shopping.entity.join.BoardReplyUsersEntity"%>
<%@page import="com.hardCarry.shopping.entity.join.ReplyUsersEntity"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.hardCarry.shopping.entity.join.FreeBoardUserEntity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자유게시판</title>
<%@include file="../commons/header/metaHeader.jsp"%>
<script
	type="text/javascript"
	src="js/jquery-1.10.2.min.js"
></script>
<script
	type="text/javascript"
	src="js/bootstrap.min.js"
></script>
<%@include file="../commons/comments/comments_style.jsp"%>
<%@include file="../commons/comments/reply_style.jsp"%>
<style>
.absolute {
	position: absolute;
}

@media ( min-width : 1200px) {
	.margin-left {
		margin-left: 910px;
	}
	.margin-left2 {
		margin-left: 970px;
	}
}

@media ( min-width : 992px) and (max-width: 1199px) {
	.margin-left {
		margin-left: 750px;
	}
	.margin-left2 {
		margin-left: 800px;
	}
}

@media ( min-width : 768px ) and (max-width: 991px) {
	.margin-left {
		margin-left: 500px;
	}
	.margin-left2 {
		margin-left: 550px;
	}
}

@media ( min-width : 576px ) and (max-width: 767px) {
	.margin-left {
		margin-left: 330px;
	}
	.margin-left2 {
		margin-left: 380px;
	}
}

@media ( max-width : 575px) {
	.margin-left {
		margin-left: 310px;
	}
	.margin-left2 {
		margin-left: 360px;
	}
}
</style>
<%
	BoardReplyUsersEntity FreeView = (BoardReplyUsersEntity) request.getAttribute("request");
%>
<script>
	var seq =
<%=FreeView.getB_seq()%>
	;
	var length = 10;

	function dateFormat(value) {
		var _date = new Date(value);
		return _date.getFullYear() + '-' + addZero(_date.getMonth() + 1) + '-'
				+ addZero(_date.getDate());
	}

	function nowDateCheck(value) {
		var now = new Date();
		value = new Date(value);
		if (now.getFullYear() === value.getFullYear()
				&& now.getDate() - 2 <= value.getDate()
				&& now.getMonth() === value.getMonth()) {
			return true;
		} else {
			return false;
		}
	}

	function addZero(value) {
		return value < 10 ? "0" + value : value;
	}

	function getData(page) {
		$('html').scrollTop(0);
		$
				.ajax({
					url : "./ReplyList",
					data : {
						start : page,
						length : length,
						seq : seq
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var ReplySection = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								ReplySection += '<ul class="list-group">';
								ReplySection += '<li class="list-group-item">';
								ReplySection += '<div class="row">';
								ReplySection += '<div class="col-xs-10 col-md-11">';
								ReplySection += '<a>' + data[i]['u_id']
										+ '</a>';
								ReplySection += '<div class="comment-text">'
										+ data[i]['r_content'] + '</div>';
								if (nowDateCheck(dateFormat(data[i]['r_createDate']))) {
									ReplySection += '<div class="mic-info"><span class="badge badge-success">최신글</span> '
											+ dateFormat(data[i]['r_createDate'])
											+ '</div>';
								} else {
									ReplySection += '<div class="mic-info">'
											+ dateFormat(data[i]['r_createDate'])
											+ '</div>';
								}
								ReplySection += '</div></div></li></ul>';
							}
						} else {
							ReplySection += '<div style="text-align:center;"><span class="badge badge-danger">댓글이 존재하지 않습니다.</span></div>';
						}

						$("#replySection").html(ReplySection);
					}
				})
	}

	window.onload = getData(0);
</script>
</head>
<body>
	<%@include file="../commons/header/header.jsp"%>
	<div>
		<section class="banner_main2"></section>
	</div>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<div>
					<h4>Q&A 댓글 수정</h4>
					<div class="row">
						<div class="col-md-6">
							<a>게시물 번호 : <%=FreeView.getB_seq()%></a>
						</div>
						<div class="col-md-6" align="right">
							<a>조회수:<%=FreeView.getB_hit()%></a>
						</div>
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
				</form>
			</tbody>
		</table>
		<div class="row">
			<div class="col-md-6">
				<a>작성일 : <fmt:formatDate value="<%=FreeView.getB_date()%>"
						pattern="yyyy-MM-dd" /></a>
			</div>
			<div class="col-md-6" align="right">
				<a class="btn btn-lg1 btn btn-light " href="free.do">글 목록으로...</a>
			</div>
		</div>
		<div class="space-left2"></div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="widget-area no-padding blank margin-right">
					<div class="status-upload">
						<form action="./updateQaReply" method="post" enctype="multipart/form-data">
							<textarea name="content" placeholder="댓글을 적어 주세요."><%=FreeView.getR_content()%></textarea>
							<input type="hidden" name="board" value="<%=FreeView.getB_seq()%>"/>
							<button type="submit" name="seq" value="<%=FreeView.getR_seq()%>"
								class="btn btn-success green">
								<i class="fa fa-share" ></i> 수정
							</button>
						</form>
					</div>
					<!-- Status Upload  -->
				</div>
				<!-- Widget Area -->
			</div>
		</div>
	</div>
	<br />
	<br />
	<div class="container">
		<div class="row">
			<div class=" panel-default widget col-md-12">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">댓글</h3>
				</div>
				<div class="panel-body" id="replySection"></div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<%@include file="../commons/footer/footer.jsp"%>

</body>
</html>