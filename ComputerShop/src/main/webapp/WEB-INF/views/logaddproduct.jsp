<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>



<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-dark sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="logcategory.do">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">관리자 창 <sup>뿌뿌</sup></div>
      </a>

      
      

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="logmemberlookup.do">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>회원 조회</span></a>
      </li>

      <!-- Divider -->

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="logproductlookup.do">
          <i class="fas fa-fw fa-cog"></i>
          <span>주문 조회</span>
        </a>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="logproductlookup.do">
          <i class="fas fa-fw fa-wrench"></i>
          <span>상품 조회</span>
        </a>
      </li>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link collapsed" href="logaddproduct.do">
          <i class="fas fa-fw fa-folder"></i>
          <span>상품 등록</span>
        </a>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="logsaleslookup.do">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>매출 조회</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="lognotice.do">
          <i class="fas fa-fw fa-table"></i>
          <span>공지사항 작성</span></a>
      </li>
      </ul>


<!-- 여기까지 왼쪽 카테고리 -->

      
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-secondary">상품 등록</h6> 
            </div>
            <br>
            
			<!-- button -->
 				
              	
				<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="제품 검색" aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                  <button type="button" class="btn btn-secondary">검색</button>
              </div>
            </div>
          </form>
				

			         
            
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>제품 코드</th>
                      <th>제품 명</th>
                      <th>제품 주문 횟수</th>
                      <th>제품 재고</th>
                      <th>제품 제조사</th>
                      <th>제품 이미지 </th>
                    </tr>
                  </thead>
                    <tr>
                      <th>#1df3f</th>
                      <th>CPU</th>
                      <th>5</th>
                      <th>150</th>
                      <th>HarrdCarry</th>
                      <th>이미지</th>
                    </tr>
                    <tr>
                      <th>#1df3f</th>
                      <th>CPU</th>
                      <th>5</th>
                      <th>150</th>
                      <th>HarrdCarry</th>
                      <th>이미지</th>
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
					<a class="btn btn-lg1  btn btn-secondary" href="logadddesktop.do">상품 등록</a>
					<a class="btn btn-lg1  btn btn-secondary" href="#">상품 수정</a>
					<a class="btn btn-lg1  btn btn-secondary" href="#">상품 삭제</a>
 				</div>
				
			</div>
          </div>
        </div>
        </body>
        </html>