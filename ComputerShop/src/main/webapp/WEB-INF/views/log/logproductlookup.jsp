<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<%@include file="./logMetadata.jsp"%>

</head>


<script>
	$(document).ready(function() {
	
	})
	
	function deleteAll(){
		let arr = document.getElementsByName("seq");
		let result = [];
		for(let i = 0;i<arr.length;i++){
			if(arr[i].checked){
				result.push(arr[i].value);
			}
		}
		alert(result);
	}
</script>
<body id="page-top">



	<!-- Page Wrapper -->
	<%@include file="./logcategory.jsp"%>


	<!-- 여기까지 왼쪽 카테고리 -->


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-secondary">상품 조회</h6>
		</div>
		<br>

		<div class="form-group form-inline">
			<!-- form-inline  -->

			<select style="width: 80px; font-size: 15px;" class="form-control"
				id="exampleSelect1">
				<option>선택</option>
				<option>전체</option>
				<option>상품 코드</option>
			</select>

			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small"
						placeholder="입력" aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button type="button" class="btn btn-secondary">검색</button>
					</div>
				</div>
			</form>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered table-hover" id="dataTable"
					width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>상품 코드</th>
							<th>상품 명</th>
							<th>주문 횟수</th>
							<th>상품 재고</th>
							<th>상품 제조사</th>
						</tr>
					</thead>
					<tr style="cursor: pointer;">
						<th><input type="checkbox" value="1" name="seq" /></th>
						<th><input type="checkbox" value="2" name="seq" /></th>
						<th><input type="checkbox" value="3" name="seq" /></th>
						<th><input type="checkbox" value="4" name="seq" /></th>
						<th onclick="alert('asjahsa')">#eds23</th>
						<th>CPU (i9 4550)</th>
						<th>150</th>
						<th>30</th>
						<th>HardCarry</th>
					</tr>
					<tr>
						<th>#sfd23f</th>
						<th>CPU (i9 4550)</th>
						<th>150</th>
						<th>30</th>
						<th>HardCarry</th>
					</tr>
					<tr>
						<th>#ff3fd</th>
						<th>CPU (i9 4550)</th>
						<th>150</th>
						<th>30</th>
						<th>HardCarry</th>
					</tr>
				</table>
			</div>

			<div>
				<ul class="pagination pagination-lg">
					<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
					</li>
					<li class="page-item active"><a class="page-link" href="#">1</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">6</a></li>
					<li class="page-item"><a class="page-link" href="#">7</a></li>
					<li class="page-item"><a class="page-link" href="#">8</a></li>
					<li class="page-item"><a class="page-link" href="#">9</a></li>
					<li class="page-item"><a class="page-link" href="#">10</a></li>
					<li class="page-item"><a class="page-link" href="#">&raquo;</a>
					</li>
				</ul>
			</div>
			<div align="right">
				<a class="btn btn-lg1  btn btn-secondary" href="logadddesktop.do">상품
					등록</a> <a class="btn btn-lg1  btn btn-secondary" href="#">상품 수정</a> <a
					class="btn btn-lg1  btn btn-secondary" href="javascript:deleteAll()">상품 삭제</a>
			</div>
		</div>
	</div>
</body>
</html>