<%@page import="com.hardCarry.shopping.entity.UsersEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./commons/header/metaHeader.jsp"%>

<!-- 데이터 테이블 필요한 것들 -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
<!-- 데이터 테이블 필요한 것들 끝 -->
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>My페이지</title>
<script>
	//pw 확인
	$(document).ready(function() {
		$('#change-submit').prop('disabled', "disabled");
		$("#pw").change(function() {
			if ($(this).val().trim() !== '') {
				pwChk($(this).val());
			} else {
				$("#samChk").html('');
				$('#change-submit').prop('disabled', "disabled");
			} 
		});
	})

	function pwChk(id, pw) {
		$
				.ajax({
					url : "./pwChk",
					method : "GET",
					data : {
						id : $("#id").val(),
						pw : $("#pw").val()
					},
					success : function(res) {
						var text = res ? "<span style='color:red' id='no'>비밀번호가 다릅니다.</span>"
								: "<span style='color:blue' id='yes'>비밀번호가 일치합니다.</span>";
						if (res === false) { // 같을때
							$("#change-submit").removeAttr("disabled");
						} else if (res === true) { // 다를때
							$('#change-submit').prop('disabled', "disabled");
						}
						$("#samChk").html(text);
					}
				});
	}

	$(document).ready(function() {
		var name = $("#name").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var address = $("#address").val();
		var pwd0 = $("#pw").val();
		$("#change-submit").click(function() {
			if (pwd0 = "") {
				alert("비밀번호를 입력해 주세요.")
				return false;
			}
			if (name = "") {
				alert("이름을 입력해 주세요.")
				return false;
			}
			if (phone = "") {
				alert("전화번호를 입력해 주세요.")
				return false;
			}
			if (email = "") {
				alert("이메일를 입력해 주세요.")
				return false;
			}
			if (address = "") {
				alert("주소를 입력해 주세요.")
				return false;
			}
		})
	});
</script>

</head>
<body id="page-top">
	<form method="get" action="./updateUser">
		<%@include file="./commons/header/header.jsp"%>
		<div>
			<section class="banner_main2"></section>
		</div>
		<div class="container">
			<div class="container text-white py-5 text-center">
				<p class="lead">
					MY페이지<a href="https://bootstrapious.com/snippets"
						class="text-black font-italic"></a>
				</p>
			</div>

			<div class="row flex-lg-nowrap">
				<!-- 사이드 메뉴 -->
				<div class="col-12 col-lg-auto mb-3" style="width: 200px;">
					<div class="card p-3">
						<div class="e-navlist e-navlist--active-bg">
							<ul class="nav">
								<li class="nav-item"><a class="nav-link px-2"
									href="userSetting.do?u_seq=<%=user.getU_seq()%>"><i
										class="fa fa-fw fa-cog mr-1"></i><span>개인정보 수정</span></a></li>
								<li class="nav-item"><a class="nav-link px-2 active"
									href="userOrder.do?u_seq=<%=user.getU_seq()%>"><i
										class="fa fa-fw fa-truck mr-1"></i><span>주문목록</span></a></li>
								<li class="nav-item"><a class="nav-link px-2"
									href="userBoardList.do?u_seq=<%=user.getU_seq()%>"><i
										class="fa fa-fw fa-bookmark mr-1"></i><span>내가 쓴 글</span></a></li>

							</ul>
						</div>
					</div>
				</div>
				<!-- 사이드 메뉴 끝 -->
				<div class="col">
					<div class="row">
						<div class="col mb-3">
							<div class="card">
								<div class="card-body">
									<div class="e-profile">
										<div class="row">
											<div
												class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
												<div class="text-center text-sm-left mb-2 mb-sm-0">
													<br>
													<p class="mb-0">
													<p class="mb-0">아이디</p>
													<input name="id" class="form-control" id="id"
														value="<%=user.getU_id()%>" readonly="readonly">
													</p>
													<div class="col-12 col-sm-auto mb-3"></div>
												</div>
												<!-- <div class="text-center text-sm-middle">
													<br>
													<p class="mb-0">보유 포인트</p>
													<p>50000원</p>
												</div> -->
												<div class="text-center text-sm-right">
													<br>
													<div class="text-muted">
														<small></small>
													</div>
												</div>
											</div>
										</div>
										<ul class="nav nav-tabs">
											<li class="nav-item"><a href="userSetting.do?u_seq=<%=user.getU_seq()%>" class="active nav-link">개인정보
													수정</a></li>
											<li class="nav-item"><a href="userChangePassword.do?u_seq=<%=user.getU_seq()%>" class="active nav-link">비밀번호 변경</a></li>
										</ul>
										<div class="tab-content pt-3">
											<div class="tab-pane active">
												<div class="form">
													<div class="row">
														<div class="col">
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>이름</label> <input placeholder="이름을 입력해 주세요"
																			class="form-control" type="text" name="name"
																			id="name" value="<%=user.getU_name()%>">
																	</div>
																</div>
																<div class="col">
																	<div class="form-group">
																		<label>전화번호</label> <input class="form-control"
																			type="text" placeholder="전화번호를 입력해 주세요" name="phone"
																			id="phone" value="<%=user.getU_phone()%>">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>Email</label> <input class="form-control"
																			type="email" id="email" placeholder="이메일을 입력해 주세요"
																			name="email" value="<%=user.getU_email()%>">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>주소</label> <input class="form-control"
																			type="text" id="address" placeholder="주소를 입력해 주세요"
																			name="address" value="<%=user.getU_address()%>">
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-12 col-sm-6 mb-3">
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>기존 비밀번호</label> <input class="form-control"
																			type="password" id="pw" name="pw"
																			placeholder="기존 비밀번호 입력">
																	</div>
																	<span id="samChk"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col d-flex justify-content-end">
															<input class="btn btn-primary" type="submit"
																id="change-submit" value="변경사항 저장 " disabled="" />
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</form>


	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
</body>
</html>