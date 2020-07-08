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
<script>
	var search = "";
	var length = 10;

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
					url : "./adminUser",
					data : {
						start : page,
						length : length,
						search : search
					},
					method : "GET",
					success : function(res) {
						var data = res['data'];
						var usersSection = '';
						
						if(data.length > 0){
							for (var i = 0; i < data.length; i++) {
								usersSection += '<tr style="cursor:pointer">';
								usersSection += '<td><span class="badge badge-dark">' + data[i]['u_seq']
								+ '</span></td>';
								usersSection += '<td><span class="badge badge-warning">' + data[i]['u_name']
								+ '</td>';
								usersSection += '<td><a href="selectionmember.do?name='+data[i]['u_seq']+'">' + data[i]['u_id']  
								+ '</td>'; 
								usersSection += '<td>' + data[i]['u_pw']
								+ '</span></td>';
								usersSection += '<td>' + data[i]['u_phone']
								+ '</td>';
								usersSection += '<td>' + data[i]['u_email']
								+ '</td>';
								usersSection += '<td>' + data[i]['u_address']
								+ '</td>';
								if(nowDateCheck(dateFormat(data[i]['u_createDate']))){
									usersSection += '<td><span class="badge badge-success">최신 가입</span> ' + dateFormat(data[i]['u_createDate']) +'</td>';
								}else{
									usersSection += '<td>'
											+ dateFormat(data[i]['u_createDate']) + '</td>';
								}
								usersSection += '</tr>';
							}
						}else{
							usersSection += '<tr>';
							usersSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">가입된 회원이 없습니다.</span></td>';
							usersSection += '</tr>';
						}

						$("#total")
								.html(res['recordsTotal'] + " 명의 회원이 가입 했습니다.");
						$("#usersTableSection").html(usersSection);
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

	function deleteAllusers() {
		var deleteusers = '';
		var u_seqArr = document.getElementsByName("u_seq");
		for (var i = 0; i < u_seqArr.length; i++) {
			if (u_seqArr[i].checked) {
				deleteusers += u_seqArr[i].value + ",";
			}
		}
	}

	function allCheck() {
		var chk = document.getElementById("allCheck");
		var u_seqArr = document.getElementsByName("u_seq");
		if (chk.checked) {
			for (var i = 0; i < u_seqArr.length; i++) {
				u_seqArr[i].checked = true;
			}
		} else {
			for (var i = 0; i < u_seqArr.length; i++) {
				u_seqArr[i].checked = false;
			}
		}
	}

	window.onload = getData(0);
</script>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<%@include file="./logcategory.jsp"%>


	<!-- 여기까지 왼쪽 카테고리 -->


	<!-- DataTales Example -->
	<div class="card shadow mb-5 col-10" style="margin-top: 50px;">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-secondary">상품 조회</h6>
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
			<span class="badge badge-info" id="total"></span><br /><br />
			<table class="table table-hover">
				<thead style="background-color: black; color:white">
					<tr>
							<th>번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>핸드폰 번호</th>
							<th>이메일</th>
							<th>주소</th>
							<th>가입 날짜</th>
					</tr>
				</thead>
				<tbody id="usersTableSection">
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
</body>
</html>