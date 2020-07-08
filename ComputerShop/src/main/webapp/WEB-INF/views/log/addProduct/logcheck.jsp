<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./logMetadata.jsp"%>
<!-- 파일 내용 변경하기 -->

<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>

<%
	AdminOrderslookupViewEntity users1 = (AdminOrderslookupViewEntity) request.getAttribute("request1");
%>

<script>
	var u_seq =
<%=users1.getU_seq()%>
	;
	var search = "";
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
					url : './admincheck',
					data : {
						length : length,
						start : page,
						u_seq : u_seq,
						search : search

					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var BoardSection = '';

						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								if(data[i]['b_type'] == "1") {
									data[i]['b_type'] = "자유 게시판"
								}else if(data[i]['b_type'] == "3") {
									data[i]['b_type'] = "공지 사항 게시판"
								}else if(data[i]['b_type'] == "2") {
									data[i]['b_type'] = "Q&A 사항 게시판"
								}else if(data[i]['b_type'] == "4") {
									data[i]['b_type'] = "F&Q 사항 게시판"
								} 
								BoardSection += '<tr style="cursor:pointer">';
								BoardSection += '<td><span class="badge badge-dark">' + data[i]['b_seq']
										+ '</td>';
								BoardSection += '<td><span class="badge badge-warning">' + data[i]['b_type']
										+ '</span></td>';
								BoardSection += '<td><a href="logAllcheckview?name='+data[i]['b_seq']+'">' + data[i]['b_title']
										+ '</a></td>';
								BoardSection += '<td>' + data[i]['u_id']
										+ '</td>';
								BoardSection += '<td><span class="badge badge-warning">'
										+ numberWithCommas(data[i]['b_hit'])
										+ '</span></td>';
								if(nowDateCheck(dateFormat(data[i]['b_date']))){
									BoardSection += '<td><span class="badge badge-success">최신글</span> ' + dateFormat(data[i]['b_date']) +'</td>';
								}else{
									BoardSection += '<td>'
											+ dateFormat(data[i]['b_date']) + '</td>';
								} 
								BoardSection += '</tr>';
							}
						}else{
							BoardSection += '<tr>';
							BoardSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">게시글이 존재하지 않습니다.</span></td>';
							BoardSection += '</tr>';
						}

						$("#total")
								.html(res['recordsTotal'] + " 개의 게시물이 존재합니다.");
						$("#BoardSection").html(BoardSection);
						$(".pagination").html(
								getPageSection(page, length,
										res['recordsTotal']));
					}
				})
	}

	function searchChange(e) {
		search = $("#search").val();
		getData(0);
	}

	function sizeChange(e) {
		length = $("#size").val();
		getData(0);
	}

	window.onload = getData(0);
</script>
</head>
<body id="page-top">
	<%@include file="./logcategory.jsp"%>








	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>해당 회원 게시판 이용 내역</h1>
			<p>해당 회원 게시판 이용 내역 볼 수 있습니다.</p>

			<div align="left">
				<a class="btn btn-lg1  btn btn-secondary"
					href="selectionmember.do?name=<%=users1.getU_seq()%>">해당 회원</a> <a
					class="btn btn-lg1  btn btn-secondary"
					href="order.do?name=<%=users1.getU_seq()%>">해당 회원 주문 내역</a> <a
					class="btn btn-lg1  btn btn-secondary"
					href="checkuseqboard.do?name=<%=users1.getU_seq()%>">해당 회원 이용 게시판</a>
					<a class="btn btn-lg1  btn btn-secondary"
					href="checkuseqboardcontent.do?name=<%=users1.getU_seq()%>">해당 회원 이용 댓글</a>
			</div>
		</div>





		<br>
		<div class="card-body">
			<div class="row">
				<div class="input-group mb-3 col-md-4">
					<div class="input-group-prepend" style="height: 38px;">
						<span class="input-group-text">검색</span>
					</div>
					<input type="text" class="form-control" id="search"
						onkeyup="searchChange()">
				</div>
				<div class="col-md-4"></div>
				<div class="input-group mb-3 col-md-4" style="float: right;">
					<select class="form-control" id="size" onchange="sizeChange()">
						<option>10</option>
						<option>20</option>
						<option>30</option>
					</select>
				</div>
			</div>
			<span class="badge badge-info" id="total"></span><br /> <br />
			<table class="table table-hover">
				<thead style="background-color: black; color: white">
					<tr>
						<th>게시물 번호 </th>
						<th>게시물 종류 </th>
						<th>게시물 제목 </th>
						<th>게시물 작성자 </th>
						<th>게시물 조회수 </th>
						<th>게시물 날짜 </th>
					</tr>
				</thead>
				<tbody id="BoardSection">
				</tbody>
			</table>

			<div style="text-align: center;">
				<ul class="pagination justify-content-center">
				</ul>
			</div>
		</div>
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-body" id="modalSection"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- others plugins -->
	<script src="js/scripts.js"></script>
</body>
</html>