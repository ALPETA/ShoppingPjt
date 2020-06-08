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
				<h6 class="m-0 font-weight-bold text-secondary">주문 조회</h6>
			</div>
			<br>

			<div class="form-group form-inline">
				<!-- form-inline  -->

				<select style="width: 80px; font-size: 15px;" class="form-control"
					id="exampleSelect1">
					<option>선택</option>
					<option>전체</option>
					<option>데스크탑</option>
					<option>노트북</option>
					<option>부품</option>
					<option>주변기기</option>
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
								<th>ID</th>
								<th>주문 번호</th>
								<th>상품 코드</th>
								<th>상품명</th>
								<th>개수</th>
								<th>가격</th>
								<th>날짜</th>

							</tr>
						</thead>
							<tr>
								<th>dfedr</th>
								<th>123</th>
								<th>#D45G3D</th>
								<th>그래픽 카드(GTX2080)</th>
								<th>1</th>
								<th>530,000</th>
								<th>2020-06-06</th>
							</tr>
							<tr>
								<th>fdfa</th>
								<th>123</th>
								<th>#D45G3D</th>
								<th>그래픽 카드(GTX2080)</th>
								<th>1</th>
								<th>530,000</th>
								<th>2020-06-06</th>
							</tr>
							<tr>
								<th>vdff3fe</th>
								<th>123</th>
								<th>#D45G3D</th>
								<th>그래픽 카드(GTX2080)</th>
								<th>1</th>
								<th>530,000</th>
								<th>2020-06-06</th>
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
				
			</div>
		</div>

	</div>
</body>
</html>