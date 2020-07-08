<%@page import="com.hardCarry.shopping.entity.join.AdminProductViewEntity"%>
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


<%
	AdminProductViewEntity sum = (AdminProductViewEntity) request.getAttribute("request");
	System.out.println(sum);
%>

<%
	String ctx = request.getContextPath();
	String img = sum.getP_sumnailImgPath();
	String img_path = ctx + img;
%>



<script>
	var search = "";
	var length = 10;
	var p_seq = "<%=sum.getP_seq()%>";

	function myFunction() {
		document.getElementById("myBtn").disabled = true;
	}

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
					url : "./logproduction",
					data : {
						start : page,
						length : length,
						search : search,
						p_seq : p_seq
					},
					method : "GET",
					success : function(res) {

						var data = res['data'];
						var oupSection = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								oupSection += '<tr style="cursor:pointer">';
								oupSection += '<td><span class="badge badge-dark">' + data[i]['u_seq']
								+ '</span></td>';
								oupSection += '<td><span class="badge badge-warning">' + data[i]['u_name']
								+ '</td>';
								oupSection += '<td><a href="selectionmember.do?name='+data[i]['u_seq']+'">' + data[i]['u_id']  
								+ '</td>'; 
								oupSection += '<td>' + data[i]['u_pw']
								+ '</span></td>';
								oupSection += '<td>' + data[i]['u_phone']
								+ '</td>';
								oupSection += '<td>' + data[i]['u_email']
								+ '</td>';
								oupSection += '<td>' + data[i]['u_address']
								+ '</td>';
								if(nowDateCheck(dateFormat(data[i]['u_createDate']))){
									oupSection += '<td><span class="badge badge-success">최신 가입</span> ' + dateFormat(data[i]['u_createDate']) +'</td>';
								}else{
									oupSection += '<td>'
											+ dateFormat(data[i]['u_createDate']) + '</td>';
								}
								oupSection += '</tr>';
							}
						}else{
							oupSection += '<tr>';
							oupSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">가입된 회원이 없습니다.</span></td>';
							oupSection += '</tr>';
						}

						$("#total")
								.html(res['recordsTotal'] + " 명의 회원이 가입 했습니다.");
						$("#Section").html(oupSection);
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
			<h1>해당 상품 구매 회원 리스트</h1>
			<div align="left">
				<a class="btn btn-lg1  btn btn-secondary" href="selection.do?name=<%=sum.getP_seq()%>">상품 상세 페이지</a> 
				<a class="btn btn-lg1  btn btn-secondary" href="userorderproduct.do?name=<%=sum.getP_seq()%>"> 해당 상품 구매 회원</a>
			</div>
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
						<th style="width: 20%">번호</th>
						<th style="width: 20%">이름</th>
						<th style="width: 10%">아이디</th>
						<th style="width: 10%">비밀번호</th>
						<th style="width: 10%">핸드폰 번호</th>
						<th style="width: 10%">이메일</th>
						<th style="width: 10%">주소</th>
						<th style="width: 10%">가입날짜</th>
					</tr>
				</thead>
				<tbody id="Section">
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