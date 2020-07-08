<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./logMetadata.jsp"%>
<!-- Page Wrapper -->
<div id="wrapper">

	<!-- Sidebar -->
	<ul class="navbar-nav bg-dark sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="logmain.do">
			<div class="sidebar-brand-text mx-3"> 
				관리자 창
			</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0"/>

		<!-- Nav Item - Dashboard -->
		<li class="nav-item">
		<a class="nav-link" href="logmemberlookup.do">
		<i class="fas fa-fw fa-tachometer-alt"></i>
		<span>회원 조회</span></a>
		</li>


		<!-- Divider -->

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed"
			href="logorderlookup.do"> <i class="fas fa-fw fa-cog"></i> <span>주문
					조회</span>
		</a></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed"
			href="logproductlookup.do"> <i class="fas fa-fw fa-wrench"></i> <span>상품
					조회</span>
		</a></li>

		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link" href="logsaleslookup.do">
				<i class="fas fa-fw fa-chart-area"></i> <span>매출 조회</span>
		</a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href="logfree.do">
				<i class="fas fa-fw fa-table"></i> <span>게시판</span>
		</a></li>
		<!-- 광고 추가, 수정, 제거 -->
		<!-- <li class="nav-item"><a class="nav-link" href="logbanneredit.do">
				<i class="fas fa-fw fa-table"></i> <span>배너 관리</span>
		</a></li> -->
	</ul>
	

