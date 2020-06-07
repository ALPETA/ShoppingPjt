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
      <li class="nav-item active">
        <a class="nav-link" href="logmemberlookup.do">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>회원 조회</span></a>
      </li>

      <!-- Divider -->

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="logorderlookup.do">
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
      <li class="nav-item">
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
				<h6 class="m-0 font-weight-bold text-secondary">회원 조회</h6>
			</div>
			<br>
			
			<div class="form-group form-inline"> <!-- form-inline  -->
				
				<select style="width:80px;font-size:15px;" class="form-control" id="exampleSelect1">
					<option>선택</option>
					<option>ID</option>
					<option>이름</option>
				</select>
				
				<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
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
								<th>이름</th>
								<th>전화번호</th>
								<th>주소</th>
								<th>이메일</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ad3fsdf</th>
								<th>김철수</th>
								<th>010-1234-5678</th>
								<th>서울 특별시 ~~구 ~~</th>
								<th>asdf@naver.com</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>모</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>

							</tr>

							<tr>
								<td>힘</td>
								<td>Data Coordinator</td>
								<td>Singapore</td>
								<td>64</td>
								<td>2012/04/09</td>

							</tr>
							<tr>
								<td>들</td>
								<td>Software Engineer</td>
								<td>New York</td>
								<td>63</td>
								<td>2010/01/04</td>

							</tr>
							<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
														<tr>
								<td>당</td>
								<td>Software Engineer</td>
								<td>San Francisco</td>
								<td>56</td>
								<td>2012/06/01</td>

							</tr>
							

						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
        </body>
        </html>