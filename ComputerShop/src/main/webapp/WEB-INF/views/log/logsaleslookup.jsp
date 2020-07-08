<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="UTF-8">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./logMetadata.jsp"%>
<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
<style>
tr, td{
	text-align:center;
}
</style>
<script>
	var length = 20;
	var search1 = "";
	var search2 = "";
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
					url : "./saleslookup1",
					data : {
						start : page,
						length : length,
						search1 : search1,
						search2 : search2
					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var BoardSection = '';
						var totalPrice = '';
						if (data.length > 0) {
							for (var i = 0; i < data.length; i++) {
								BoardSection += '<tr style="cursor:pointer">';
								BoardSection += '<td>' + data[i]['u_id']
										+ '</td>';
								BoardSection += '<td>' + data[i]['p_name']
										+ '</td>';
								BoardSection += '<td>'
										+ numberWithCommas(data[i]['p_price'])
										+ ' 원</td>';
								BoardSection += '<td>'
										+ dateFormat(data[i]['o_date'])
										+ '</td>';
								BoardSection += '</tr>';
							}
							totalPrice += '<td colspan="4" style="text-align:right">총 금액 : '+numberWithCommas(res['sumTotalPrice'])+'원</td>';
						} else {
							BoardSection += '<tr>';
							BoardSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">판매 상품이 존재하지 않습니다.</span></td>';
							BoardSection += '</tr>';
							totalPrice += '<td colspan="4" style="text-align:right">총 금액 : 0원</td>';
						}

						$("#total").html(
								res['recordsTotal'] + " 개의 판매 상품이 존재합니다.");
						$("#productTableSection").html(BoardSection);
						$(".pagination").html(
								getPageSection(page, length,
										res['recordsTotal']));
						
						$("#totalPrice").html("<td colspan='4' style='text-align:right'>총 금액 : "+numberWithCommas(res['sumTotalPrice'])+"원</td>");
					}
				})
	}
	function searchChange(e) {
		search1 = $("#search1").val();
		search2 = $("#search2").val();
		getData(0);
	}
	function sizeChange(e) {
		length = $("#size").val();
		getData(0);
	}
	window.onload = getData(0);
</script>
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
					<input type="text" class="form-control" id="search1"
						onkeyup="searchChange()">
					<h5>~</h5>
					<input type="text" class="form-control" id="search2"
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
						<th>사용자 ID</th>
						<th>판매 상품</th>
						<th>금액</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody id="productTableSection">
					<!-- 아약스 올라갈 tbody -->
				</tbody>
				<tbody id="totalPrice">
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