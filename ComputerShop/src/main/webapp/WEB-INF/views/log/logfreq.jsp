<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
</head>
<script>
	var search = "";
	var length = 10;
	var b_type = 4;

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
					url : "./logqanda",
					data : {
						b_type : b_type
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var ReplySection = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {

								ReplySection += '<div class="container"><br /> <br /> <br />';
								ReplySection += '<div id="accordion">';
								;
								ReplySection += '<div class="card-header">';
								ReplySection += '<h4 class="card-header">';
								ReplySection += '<h4 class="card-header">';
								ReplySection += '<a class="accordion-toggle" data-toggle="collapse"data-parent="#accordion" href="#'+data[i]['b_seq']+'">'
										+ data[i]['b_title'] + '</a>';
								ReplySection += '</h4></div>';
								ReplySection += '<div id="'+data[i]['b_seq']+'" class="panel-collapse collapse in"><div class="card-block">';
								ReplySection += '<Strong>'
										+ data[i]['b_content'] + '</Strong>';
								ReplySection += '</div></div></div></div></div>'
								ReplySection += '<a class="btn btn-lg1  btn btn-light" href="./logBoard/fandq?b_seq='
										+ data[i]['b_seq']
										+ ','
										+ data[i]['b_uSeq'] + '">글 삭제</a>'
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

<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>F&Q 게시판</h1>
			<p>F&Q 게시판 리스트</p>
			<%@include file="./boardButton/button1.jsp"%>
		</div>

		<div id="replySection"></div>
		<br />
		<div align="right">
			<a class="btn btn-lg1  btn btn-secondary" href="logfreqwrite.do">게시물
				작성</a>
		</div>

	</div>
</body>
</html>