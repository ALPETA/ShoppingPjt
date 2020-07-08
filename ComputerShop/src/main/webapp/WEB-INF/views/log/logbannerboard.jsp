<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Datatable - srtdash</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Start datatable css -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/typography.css">
<link rel="stylesheet" href="css/freeTable/styles.css">
<!-- 파일 내용 변경하기 -->

<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/bootstrap.min.js"></script>
<script src="js/metisMenu.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>

<style>
.margin-left {
	position : absolute;
	margin-left: 1635px;
}
.margin-left2 {
	position : absolute;
	margin-left: 1530px;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js%22%3E"></script>
<script type="text/javascript">
	$(
			function() {
				$("#checkAll").click(
						function() {
							$("input[name=check]").prop("checked",
									$("#checkAll").prop("checked"));
						})

				$("input[name=check]").click(function() {
					if (!$(this).prop("checked")) {
						$("#checkAll").prop("checked", false);
					} else {
						var check = $("input[name=check]");
						var count = 0;
						for (var i = 0; i < check.length; i++) {
							if (check[i].checked) {
								count++;
							}
						}
						if (count === check.length) {
							$("#checkAll").prop("checked", true);
						}
					}
				})
			})
</script>
</head>
<body>
	<div class="col-10 mt-4">
		<div class="card">
			<div class="card-body">
				<h4 class="header-title">배너 관리</h4>
				<section style="font-weight:bold;">배너를 클릭하시면 수정하실 수 있습니다.</section>
				<div class="data-tables datatable-dark">
					<table id="dataTable3" class="text-center">
						<thead class="text-capitalize">
							<tr>
								<td scope="col"><input
                                            type="checkbox" id="checkAll" name="checkAll"></td>
								<th>번호</th>
								<th>타이틀</th>
								<th>설명</th>
								<th>이미지</th>
							</tr>
						</thead>
						<tbody>
							<tr onclick="javascript:location.href='logbannerupdate.do'">
								<td><input type="checkbox"
                                            id="check" name="check"></td>
								<td>Airi Satou</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>33</td>
							</tr>
							<tr onclick="javascript:location.href='logbannerupdate.do'">
								<td><input type="checkbox"
                                            id="check" name="check"></td>
								<td>Angelica Ramos</td>
								<td>Chief Executive Officer (CEO)</td>
								<td>London</td>
								<td>47</td>
							</tr>
							<tr onclick="javascript:location.href='logbannerupdate.do'">
								<td><input type="checkbox"
                                            id="check" name="check"></td>
								<td>Ashton Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
							</tr>
						</tbody>
					</table>
				</div>
				<button type="button" class="btn btn-dark margin-left">삭제</button>
				<button type="button" class="btn btn-dark margin-left2"
						onclick="javascript:location.href='logaddbanner.do'">배너 추가</button>
			</div>
		</div>
	</div>
	<!-- Start datatable js -->
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<!-- others plugins -->
	<script src="js/scripts.js"></script>
</body>
</html>