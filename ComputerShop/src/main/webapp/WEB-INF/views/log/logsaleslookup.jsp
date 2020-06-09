<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

<%@include file="./logMetadata.jsp"%>

</head>



<body id="page-top">


		<!-- 여기까지 왼쪽 카테고리 -->
		<%@include file="./logcategory.jsp"%>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-secondary">매출 조회</h6>
			</div>
			<br>

			<div class="form-group form-inline">
				<!-- form-inline  -->

				<select style="width: 80px; font-size: 15px;" class="form-control"
					id="exampleSelect1">
					<option>선택</option>
					<option>연별 선택</option>
					<option>월별 선택</option>
					<option>ID별 선택</option>
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
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>연/월별 매출액 출력 부분</th>
							</tr>
						</thead>
							<tr>
								<th>100,000</th>
							</tr>
							<tr>
								<th>200,000</th>
							</tr>
							<tr>
								<th>300,000</th>
							</tr>
							<tr>
								<th> 총 금액 : 600,000 </th>
							</tr>
					</table>
				</div>

				<div>
					<ul class="pagination">
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
			</div>
		</div>

	</div>
</body>
</html>