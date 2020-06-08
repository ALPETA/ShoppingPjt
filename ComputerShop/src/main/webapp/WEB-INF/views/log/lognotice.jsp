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
				<h6 class="m-0 font-weight-bold text-secondary">공지사항 관리</h6>
			</div>
			<br>




			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small"
						placeholder="제목 검색" aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<div class="container">
							<a class="btn btn-space1 btn btn-secondary" href="#">검색</a>
						</div>
					</div>
				</div>
			</form>




			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td><a href="#"> I9 9900 </a></td>
							<td>admin</td>
							<td>2020-05-31</td>
							<td>235,524</td>
						</tr>

						<tr>
							<td>1</td>
							<td><a href="#"> I9 9900 </a></td>
							<td>admin</td>
							<td>2020-05-31</td>
							<td>235,524</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="#"> I9 9900 </a></td>
							<td>admin</td>
							<td>2020-05-31</td>
							<td>235,5241111111111111111111111111111111</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="#"> I9 9900 </a></td>
							<td>admin</td>
							<td>2020-05-31</td>
							<td>235,524</td>
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
					<a class="btn btn-space1 btn btn-secondary" href="#">글 쓰기</a>
				</div>


			</div>



		</div>

	</div>

</body>
</html>