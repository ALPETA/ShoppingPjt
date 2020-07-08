<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./commons/header/metaHeader.jsp"%>
<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
		$
				.ajax({
					url : "./lookUpMyBoard",
					data : {
						start : page,
						length : length,
						search : search
					},
					method : "GET",
					success : function(res) {
						console.log(res);
						var data = res['data'];
						var BoardSection = '';
						if(data.length > 0){
							for (var i = 0; i < data.length; i++) {
								BoardSection += '<tr style="cursor:pointer">';
								BoardSection += '<td>' + data[i]['b_seq']
										+ '</td>';
								if(data[i]['b_type']==="1"){
								BoardSection += '<td><a href="freeview.do?name='+data[i]['b_seq']+'">' + data[i]['b_title']
										+ '</a></td>';
								} else{
									BoardSection += '<td><a href="qaview.do?name='+data[i]['b_seq']+'&id='+data[i]['u_seq']+'">' + data[i]['b_title']
									+ '</a></td>';
								} 
								BoardSection += '<td>' + data[i]['u_id']
										+ '</td>';
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
						$("#TableSection").html(BoardSection);
						$(".pagination").html(
								getPageSection(page, length,
										res['recordsTotal']));
					}
				})
	}

	function searchChange(e) {
		search = $("#search2").val();
		getData(0);
	}

	function sizeChange(e) {
		length = $("#size").val();
		getData(0);
	}
	window.onload = getData(0);
</script>

<title>작성한 글</title>
</head>
<body>
	<%@include file="./commons/header/header.jsp"%>
	<section class="banner_main2"></section>
	<div class="container">
		<div class="container text-white py-5 text-center">
			<p class="lead">
				MY페이지<a href="https://bootstrapious.com/snippets"
					class="text-black font-italic"></a>
			</p>
		</div>
		<div class="row flex-lg-nowrap">
			<div class="col-12 col-lg-auto mb-3" style="width: 200px;">
				<div class="card p-3">
					<div class="e-navlist e-navlist--active-bg">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link px-2"
								href="userSetting.do"><i class="fa fa-fw fa-cog mr-1"></i><span>개인정보
										수정</span></a></li>
							<li class="nav-item"><a class="nav-link px-2 active"
								href="userOrder.do"><i class="fa fa-fw fa-truck mr-1"></i><span>주문목록</span></a></li>
							<li class="nav-item"><a class="nav-link px-2"
								href="userBoardList.do"><i class="fa fa-fw fa-bookmark mr-1"></i><span>내가
										쓴 글</span></a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="container">
				<!-- DataTales Example -->
				<div class="card shadow mb-6 col-10">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-secondary">내가 쓴 글</h6>
					</div>
					<br>
					<div class="card-body">
						<div class="row">
							<div class="input-group mb-3 col-md-4">
								<div class="input-group-prepend" style="height: 38px;">
									<span class="input-group-text">검색</span>
								</div>
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
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
								</tr>
							</thead>
							<tbody id="TableSection">
							</tbody>
						</table>
						<br/>
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
			</div>
		</div>
	</div>
	<br/>
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>