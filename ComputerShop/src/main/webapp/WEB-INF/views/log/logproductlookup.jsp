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
	var a = "";
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
					url : "./adminProduct",
					data : {
						start : page,
						length : length,
						search : search
					},
					method : "POST",
					success : function(res) {
						var data = res['data'];
						var productSection = '';
						if(data.length > 0){
							for (var i = 0; i < data.length; i++) {
								productSection += '<tr style="cursor:pointer">';
								productSection += '<td><input type="checkbox" name="p_seq" style="width:15px;height:15px;" value="' + data[i]['p_seq']
										+ '"/></td>';
								productSection += '<td> <span class="badge badge-dark">' + data[i]['p_seq']
										+ '</spen></td>';
								productSection += '<td> <span class="badge badge-warning">' + data[i]['p_code']
										+ '</spen></td>';
								productSection += '<td>' + data[i]['p_use']
										+ '</td>';
								productSection += '<td>' + data[i]['p_category']
										+ '</td>';
								 /* productSection += '<td><a href="selection.do?name='+data[i]['p_seq']+','+data[i]['p_name']+','+data[i]['p_use']+','+data[i]['p_category']+','+data[i]['p_price']+','+data[i]['p_manufacture']+','+data[i]['p_state']+','+data[i]['p_stock']+','+data[i]['ps_cpu']+','+data[i]['ps_ram']+','+data[i]['ps_mainboard']+','+data[i]['ps_hdd']+','+data[i]['ps_ssd']+','+data[i]['ps_graphic']+','+data[i]['p_etc']+'">' + data[i]['p_name']  
										+ '</td>';  */
										
								productSection += '<td><a href="selection.do?name='+data[i]['p_seq']+'">' + data[i]['p_name']  
										+ '</td>';
										
								productSection += '<td>'
										+ numberWithCommas(data[i]['p_price'])
										+ ' 원</td>';
								productSection += '<td>' + data[i]['p_manufacture']
										+ '</td>';
								productSection += '<td><img src="'
										+ getContextPath()
										+ data[i]['p_sumnailImgPath']
										+ '" style="width:100px;height:100px;"/></td>';
								productSection += '<td>' + data[i]['p_stock']
										+ ' 개 </td>';
								if (data[i]['p_state'] === '판매 중') {
									productSection += '<td><span class="badge badge-primary">'
											+ data[i]['p_state'] + '</span></td>';
								} else {
									productSection += '<td><span class="badge badge-danger">'
											+ data[i]['p_state'] + '</span></td>';
								}
								if(nowDateCheck(dateFormat(data[i]['p_Date']))){
									productSection += '<td><span class="badge badge-success">최신글</span> ' + dateFormat(data[i]['p_Date']) +'</td>';
								}else{
									productSection += '<td>'
											+ dateFormat(data[i]['p_Date']) + '</td>';
								}
								productSection += '</tr>';
							}
						}else{
							productSection += '<tr>';
							productSection += '<td colspan=11 style="text-align: center;"><span class="badge badge-danger">상품이 존재하지 않습니다.</span></td>';
							productSection += '</tr>';
						}
						$("#total")
								.html(res['recordsTotal'] + " 개의 상품이 존재합니다.");
						$("#productTableSection").html(productSection);
						$(".pagination").html(
								getPageSection(page, length,
										res['recordsTotal']));
					}
				})
	}
	
	function dosomething(val){
		alert("버튼1을 누르셨습니다.");
		alert(val);
		  console.log(val);
		}
	
	function searchChange(e) {
		search = $("#search").val();
		getData(0);
	}
	function sizeChange(e) {
		length = $("#size").val();
		getData(0);
	}
	function deleteAll() {
		var deleteProduct = '';
		var p_seqArr = document.getElementsByName("p_seq");
		for (var i = 0; i < p_seqArr.length; i++) {
			if (p_seqArr[i].checked) {
				deleteProduct += p_seqArr[i].value + ",";
			}
		}
		$.ajax({
			url : "./product/delete",
			method : "POST",
			data : {
				p_seq : deleteProduct
			},
			success : function(res) {
				alert('삭제 완료');
				document.getElementById("allCheck").checked = false;
				getData(0);
			}
		})
	}
	function allCheck() {
		var chk = document.getElementById("allCheck");
		var p_seqArr = document.getElementsByName("p_seq");
		if (chk.checked) {
			for (var i = 0; i < p_seqArr.length; i++) {
				p_seqArr[i].checked = true;
			}
		} else {
			for (var i = 0; i < p_seqArr.length; i++) {
				p_seqArr[i].checked = false;
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
						<th><input type="checkbox" id="allCheck"
							style="width: 15px; height: 15px;" onchange="allCheck()" /></th>
						<th>게시물 번호</th>
						<th>상품 코드</th>
						<th>상품 분류</th>
						<th>상품 세부 분류</th>
						<th>상품 명</th>
						<th>상품 가격</th>
						<th>상품 제조사</th>
						<th>상품 이미지</th>
						<th>상품 수량</th>
						<th>상품 판매 상태</th>
						<th>상품 등록 날짜</th>
					</tr>
				</thead>
				<tbody id="productTableSection">
				</tbody>
			</table>

			<div align="right">
				<a class="btn btn-lg1  btn btn-secondary" href="logadddesktop.do">상품
					등록</a> <a class="btn btn-lg1  btn btn-secondary"
					href="javascript:deleteAll()">상품 삭제</a>
			</div>
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