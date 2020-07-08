<%@page import="com.hardCarry.shopping.entity.join.AdminBoardEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> -->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@include file="./reply_style.jsp"%>
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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./comments_style.jsp"%>

<%
	AdminBoardEntity free1 = (AdminBoardEntity) request.getAttribute("request");
	System.out.println("commens" + free1);
	System.out.println("asdfsadfafsdaffsdafsafsafsafsa" + free1.getB_seq());
%>

<script>
	var b_seq =
<%=free1.getB_seq()%>
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
					url : "./logfreeReplyList",
					data : {
						start : page,
						length : length,
						b_seq : b_seq
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var ReplySection = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								ReplySection += '<ul class="list-group col-md-12 col-xs-12">';
								ReplySection += '<li class="list-group-item">';
								ReplySection += '<div class="row">';
								ReplySection += '<div class="col-xs-10 col-md-11">';
								ReplySection += '<a>' + data[i]['u_id']
										+ '</a>';
								ReplySection += '<div class="comment-text">'
										+ data[i]['r_content'] + '</div>';

								if (nowDateCheck(dateFormat(data[i]['r_createDate']))) {
									ReplySection += '<div class="mic-info"><span class="badge badge-success">최신 댓글</span> '
											+ dateFormat(data[i]['r_createDate'])
											+ '</div>';
											ReplySection += '<a class="btn btn-lg1  btn btn-light" href="./logBoard/freecontents?r_seq='+data[i]['r_seq']+','+data[i]['r_uSeq']+','+data[i]['r_bSeq']+'">삭제</a>'
								} else {
									ReplySection += '<div class="mic-info"><span class="badge badge-secondary">이전 댓글</span>'
											+ dateFormat(data[i]['r_createDate'])
											+ '</div>';
									ReplySection += '<a class="btn btn-lg1  btn btn-light" href="./logBoard/freecontents?r_seq='+data[i]['r_seq']+','+data[i]['r_uSeq']+','+data[i]['r_bSeq']+'">삭제</a>'
											
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
							<div class="row" id="replySection"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>