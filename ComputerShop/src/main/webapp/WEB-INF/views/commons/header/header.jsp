<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->
<header>
	<!-- header inner -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
					<div class="full">
						<div class="center-desk">
							<div class="logo">
								<a href="index.do"><img src="images/logo.png" alt="index.do" /></a>
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
								<li class="nav-item"><a class="nav-link" href="index.do">메인페이지</a></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">데스크탑</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">사무용PC</a> <a
												class="dropdown-item" href="#">그래픽PC</a> <a
												class="dropdown-item" href="#">방송용PC</a> <a
												class="dropdown-item" href="#">게임용PC</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">노트북</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">사무용 노트북</a> <a
												class="dropdown-item" href="#">게임용 노트북</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">부품</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">CPU</a> <a
												class="dropdown-item" href="#">RAM</a> <a
												class="dropdown-item" href="#">메인보드</a> <a
												class="dropdown-item" href="#">SSD</a> <a
												class="dropdown-item" href="#">HDD</a> <a
												class="dropdown-item" href="#">그래픽카드</a> <a
												class="dropdown-item" href="#">파워</a>
										</div>
									</div></li>

								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">주변기기</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">모니터</a> <a
												class="dropdown-item" href="#">키보드</a> <a
												class="dropdown-item" href="#">마우스</a> <a
												class="dropdown-item" href="#">스피커</a>
										</div>
									</div></li>
									
								<li class="nav-item"><div class="dropdown">
										<button type="button"
											class="btn btn-link dropdown-toggle nav-link"
											data-toggle="dropdown">게시판</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">자유게시판</a> <a
												class="dropdown-item" href="#">Q&A게시판</a> <a
												class="dropdown-item" href="#">공지사항</a>
										</div>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>

								<li class="nav-item d_none"><a class="nav-link"
									data-toggle="modal" data-target="#search"> <i
										class="fa fa-search" aria-hidden="true"></i></a></li>

								<li class="nav-item d_none"><a class="nav-link"
									data-toggle="modal" data-target="#login">Login</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade " id="search" tabindex="-1" role="dialog"
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
	</div>
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
							<button type="submit" class="btn btn-secondar">로그인</button>
							<a href="signUp.do" class="btn btn-primary">회원가입</a>
						</div>
						<div class="tab-pane fade" id="findId">
							<div class="form-group">
								<label for="userName">이름:</label> <input type="text"
									class="form-control" id="userName" name="userName">
							</div>
							<div class="form-group">
								<label for="userEmail">이메일:</label> <input type="text"
									class="form-control" id="userEmail" name="userEmail">
							</div>
							<button type="submit" class="btn btn-primary">찾기</button>
						</div>
						<div class="tab-pane fade" id="findPw">
							<div class="form-group">
								<label for="userId">아이디:</label> <input type="text"
									class="form-control" id="userId" name=userId>
							</div>
							<div class="form-group">
								<label for="userEmail">이메일:</label> <input type="text"
									class="form-control" id="userEmail" name="userEmail">
							</div>
							<button type="submit" class="btn btn-primary">새 비밀번호 받기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>