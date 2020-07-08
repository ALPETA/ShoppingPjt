<%@page import="com.hardCarry.shopping.entity.UsersEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- header -->
<%
	UsersEntity user = (UsersEntity) session.getAttribute("user");
%>
<script>
	function loginHandle() {
		if ($("#userId").val().trim() === '') {
			alert('아이디를 입력해주세요.');
			$("#userId").focus();
			return;
		}
		if ($("#userPw").val().trim() === '') {
			alert('비밀번호를 입력해주세요.');
			$("#userPw").focus();
			return;
		}
		$.ajax({
			url : "./login",
			method : "POST",
			data : {
				id : $("#userId").val(),
				pw : $("#userPw").val()
			},
			success : function(res) {
				alert("*로그인 완료");
				location.href = './index.do';
			},
			error : function(res) {
				alert('아이디 혹은 비밀번호가 일치하지 않거나 존재하지 않습니다.');
			}
		});
	}
	
	function logout() {
		alert('로그아웃 완료');
		location.href = "./logout";
	}
	
	$(document).ready(function() {
		$("#loginBtn").click(function() {
			loginHandle();
		})
	});
	
	//----------------------------------------
	function searchIdHandle() {
		if ($("#searchid_userName").val().trim() === '') {
			alert('이름를 입력해주세요.');
			$("#searchid_userName").focus();
			return;
		}
		if ($("#searchid_userEmail").val().trim() === '') {
			alert('이메일를 입력해주세요.');
			$("#searchid_userEmail").focus();
			return;
		}
		$.ajax({
			url : "./searchIdHandle",
			method : "POST",
			data : {
				name : $("#searchid_userName").val(),
				email : $("#searchid_userEmail").val()
			},
			success : function(res) {
				var data = res['data'];
				console.log(res);
				if(data.length > 0){
					for (var i = 0; i < data.length; i++) {
						alert(data[i]['u_name']+"님의 ID는 "+data[i]['u_id']+"입니다.");
						location.href = './index.do';
					}
				}
			},
			error : function(res) {
				alert('이름 혹은 이메일이 일치하지 않거나 존재하지 않습니다.');
			}
		});
	}
	
	$(document).ready(function() {
		$("#search_id").click(function() {
			searchIdHandle();
		})
	});
	//----------------------------------------
	function getNewPwHandle() {
		if ($("#getNewpw_userId").val().trim() === '') {
			alert('아이디를 입력해주세요.');
			$("#getNewpw_userId").focus();
			return;
		}
		if ($("#getNewpw_userEmail").val().trim() === '') {
			alert('이메일를 입력해주세요.');
			$("#getNewpw_userEmail").focus();
			return;
		}
		$.ajax({
			url : "./getNewPwHandle",
			method : "POST",
			data : {
				id : $("#getNewpw_userId").val(),
				email : $("#getNewpw_userEmail").val()
			},
			success : function(res) {
				var data = res['data'];
				console.log(res);
				if(data.length > 0){
					for (var i = 0; i < data.length; i++) {
						alert(data[i]['u_name']+"님의 Pw는 "+data[i]['u_pw']+"입니다.");
						location.href = './index.do';
					}
				}
			},
			error : function(res) {
				alert('아이디 혹은 이메일이 일치하지 않거나 존재하지 않습니다.');
			}
		});
	}
	
	$(document).ready(function() {
		$("#getNewPw").click(function() {
			getNewPwHandle();
		})
	});
</script>
<header>
	<!-- header inner -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
					<div class="full">
						<div class="center-desk">
							<div class="logo">
								<a href="index.do"><img src="images/logo_transparent.png" border="0" height="100" width="200" alt="index.do" /></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
			
					<nav class="navigation navbar navbar-expand-md navbar-dark ">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarsExample04"
							aria-controls="navbarsExample04" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarsExample04">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">데스크탑</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="product?name=데스크탑,사무용">사무용 데스크탑</a> <a  
												class="dropdown-item" href="product?name=데스크탑,게임용">게임용 데스크탑</a> 
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">노트북</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="product?name=노트북,사무용">사무용 노트북</a> <a
												class="dropdown-item" href="product?name=노트북,게임용">게임용 노트북</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">부품</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="part?name=부품,CPU">CPU</a> <a
												class="dropdown-item" href="part?name=부품,Ram">RAM</a> <a
												class="dropdown-item" href="part?name=부품,HDD">HDD</a> <a
												class="dropdown-item" href="part?name=부품,GraphicCard">VGA</a>  <a
												class="dropdown-item" href="part?name=부품,MainBoard">MAIN BOARD</a>
												
												
												<a
												class="dropdown-item" href="part?name=부품,SSD">SSD</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">주변기기</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="part?name=주변기기,monitor">모니터</a> <a
												class="dropdown-item" href="part?name=주변기기,keyboard">키보드</a> <a
												class="dropdown-item" href="part?name=주변기기,mouse">마우스</a> <a
												class="dropdown-item" href="part?name=주변기기,speaker">스피커</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">게시판</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="free.do">자유게시판</a> <a
												class="dropdown-item" href="qa.do">Q&A게시판</a> <a
												class="dropdown-item" href="notice.do">공지사항</a>
										</div>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="freq.do">고객센터</a></li>
								<!-- <li class="nav-item d_none"><a class="nav-link"
									data-toggle="modal" data-target="#search"> <i
										class="fa fa-search" aria-hidden="true"></i></a></li> -->
								<%
									if (user == null) {
								%>
								<li class="nav-item d_none"><a class="nav-link"
									data-toggle="modal" data-target="#login">Login</a></li>
								<%
									} else {
								%>
								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">마이페이지</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="userSetting.do?u_seq=<%=user.getU_seq()%>">정보수정</a> <a
												class="dropdown-item" href="userOrder.do?u_seq=<%=user.getU_seq()%>">주문내역</a> <a
												class="dropdown-item" href="userBoardList.do?u_seq=<%=user.getU_seq()%>">내가 쓴 글</a>
										</div>
									</div></li>
								<li class="nav-item d_none"><a class="nav-link"
									href="javascript:logout()">logout</a></li>
								<%
									}
								%>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="modal fade " id="search" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">검색창</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" id="inputKeyword" />
				</div>
				<div class="modal-footer">
					<input type="submit" value="검색" class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>  -->
	<div class="modal fade " id="login" tabindex="-1" role="dialog"
		aria-labelledby="login">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">

				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#logIn">로그인</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#findId">아이디 찾기</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#findPw">비밀번호 찾기</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<br>
						<div class="tab-pane fade active show" id="logIn">
							<div class="form-group">
								<label for="userId">아이디:</label> <input type="text"
									class="form-control" id="userId" name="userId">
							</div>
							<div class="form-group">
								<label for="userPw">비밀번호:</label> <input type="password"
									class="form-control" id="userPw" name="userPw">
							</div>
							<button type="submit" class="btn btn-secondar" id="loginBtn">로그인</button>
							<a href="signUp.do" class="btn btn-primary">회원가입</a>
						</div>
						<div class="tab-pane fade" id="findId">
							<div class="form-group">
								<label for="searchid_userName">이름:</label> <input type="text"
									class="form-control" id="searchid_userName" name="searchid_userName">
							</div>
							<div class="form-group">
								<label for="searchid_userEmail">이메일:</label> <input type="text"
									class="form-control" id="searchid_userEmail" name="searchid_userEmail">
							</div>
							<button type="submit" class="btn btn-primary" id="search_id">찾기</button>
						</div>
						<div class="tab-pane fade" id="findPw">
							<div class="form-group">
								<label for="getNewpw_userId">아이디:</label> <input type="text"
									class="form-control" id="getNewpw_userId" name=getNewpw_userId>
							</div>
							<div class="form-group">
								<label for="getNewpw_userEmail">이메일:</label> <input type="text"
									class="form-control" id="getNewpw_userEmail" name="getNewpw_userEmail">
							</div>
							<button type="submit" class="btn btn-primary" id="getNewPw">새 비밀번호 받기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>