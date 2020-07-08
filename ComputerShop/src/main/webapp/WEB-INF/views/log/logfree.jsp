<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	</script>

<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>




<script>
	var search = "";
	var length = 10;
	var b_type = 1;
	
	function myFunction() {
		   document.getElementById("myBtn").disabled = true;
		}
	
	function dateFormat(value) {
		var _date = new Date(value);
		return _date.getFullYear() + '-' + addZero(_date.getMonth() + 1) + '-'
				+ addZero(_date.getDate());
	}
	
	function nowDateCheck(value){
		var now = new Date();
		value = new Date(value);
		if(now.getFullYear() === value.getFullYear() && now.getDate() - 2 <= value.getDate() && now.getMonth() === value.getMonth()){
			return true;
		}else{
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
					url : "./logFreeBoard",
					data : {
						start : page,
						length : length,
						search : search,
						b_type : b_type
					},
					method : "GET",
					success : function(res) {
						
						var data = res['data'];
						var BoardSection = '';
						if(data.length > 0){
							for (var i = 0; i < data.length; i++) {
								if(data[i]['b_type'] == "1") {
									data[i]['b_type'] = "자유 게시판"
								}
								BoardSection += '<tr style="cursor:pointer">';
								BoardSection += '<td><span class="badge badge-dark">' + data[i]['b_seq']
										+ '</td>';
								BoardSection += '<td><span class="badge badge-warning">' + data[i]['b_type']
										+ '</span></td>';
								BoardSection += '<td><a href="logfreeviewdetail.do?name='+data[i]['b_seq']+'">' + data[i]['b_title']
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
								.html(res['recordsTotal'] + " 개의 게시글이 존재합니다.");
						$("#FreeBoardTableSection").html(BoardSection);
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



<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>자유 게시판 </h1>
			<p>자유 게시판 리스트</p>
			<%@include file="./boardButton/button1.jsp"%> <!-- 버튼 include -->
		</div>
		<div class="card shadow mb-5 col-12" style="margin-top: 50px;">
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
			<table class="table table-hover" id="FreeTable">
				<thead style="background-color: black; color: white">
					<tr>
						<th style="width:15%">번호</th>
						<th style="width:20%">게시판 종류</th>
						<th style="width:20%">제목</th>
						<th style="width:15%">작성자</th>
						<th style="width:15%">조회수</th>
						<th style="width:15%">날짜</th>
					</tr>
				</thead>
				<tbody id="FreeBoardTableSection">
				</tbody>
			</table>

			<div style="text-align: center;">
				<ul class="pagination justify-content-center">
				</ul>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-body" id="modalSection"></div>
			</div>
		</div>
	</div>

	<!-- others plugins -->
	<script src="js/scripts.js"></script>
		
<%-- 		<div class="row">
			<ul class="nav nav-tabs col-lg-12">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">자유 게시판</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu1">공지 사항 게시판</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu2">Q & A</a></li>

			</ul>
			<div class="tab-content col-lg-12">
				<div id="home" class="container tab-pane active col-lg-12">
					<br>
					<h3>자유 게시판</h3>
					<%@include file="./logfree.jsp"%>
				</div>
				<div id="menu1" class="container tab-pane fade col-lg-12">
					<br>
					<h3>공지 사항 게시판</h3>
					<%@include file="./lognotice.jsp"%>
				</div>
				<div id="menu2" class="container tab-pane fade col-lg-12">
					<br>
					<h3>Q & A 게시판</h3>
					<%@include file="./logfreq.jsp"%>
				</div>

			</div> --%>
		</div>
</body>
</html>