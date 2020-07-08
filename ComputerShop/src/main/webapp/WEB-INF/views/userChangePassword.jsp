<%@page import="com.hardCarry.shopping.entity.UsersEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ?? -->

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

	//새 비밀번호 확인
	$(function() {
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("#alert-same").hide();
		$("input").keyup(function() {
			var pwd1 = $("#newpassword").val();
			var pwd2 = $("#chknewpassword").val();
			var pwd0 = $("#pw").val();
			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					if(pwd1 == pwd0){
						$("#alert-success").hide();
						$("#alert-danger").hide();
						$("#alert-same").show();
						$("#change-submit").attr("disabled", "disabled");
					}else{
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#alert-same").hide();
						$("#change-submit").removeAttr("disabled");
					}
				} else if (pwd1 != pwd2) {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#alert-same").hide();
					$("#change-submit").attr("disabled", "disabled");
				} 
			} else {
				$("#alert-success").hide();
				$("#alert-danger").hide();
				$("#alert-same").hide();
			}
		});
	});

	$(document).ready(
			function() {
				var pwd0 = $("#pw").val();
				var pwd1 = $("#newpassword").val();
				var pwd2 = $("#chknewpassword").val();
				$("#change-submit").click(
						function() {
							if (pwd0 = "") {
								alert("비밀번호를 입력해 주세요.")
								return false;
							}
							if (pwd2 = "") {
								alert("변경할 비밀번호를 확인해 주세요.")
								return false;
							}
							if ($("#alert-danger").is(":visible")) {
								alert("변경할 비밀번호가 일치하지 않습니다..")
								return false;
							} else if ($("#alert-danger").is(":hidden")
									&& $("#alert-success").is(":hidden")) {
								alert("변경할 비밀번호를 입력해 주세요.")
								return false;
							}
						})
			});
</script>

</head>
<body id="page-top">
	<form method="get" action="./updateUserPW">
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
											<li class="nav-item"><a
												href="userSetting.do?u_seq=<%=user.getU_seq()%>"
												class="active nav-link">개인정보 수정</a></li>
											<li class="nav-item"><a
												href="userChangePassword.do?u_seq=<%=user.getU_seq()%>"
												class="active nav-link">비밀번호 변경</a></li>
										</ul>
										<div class="tab-content pt-3">
											<div class="tab-pane active">
												<div class="form">
													<div class="row">
														<div class="col-12 col-sm-6 mb-3">
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>현재 비밀번호</label> <input class="form-control"
																			type="password" id="pw" name="pw"
																			placeholder="현재 비밀번호 입력">
																	</div>
																	<span id="samChk"></span>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>변경할 비밀번호</label> <input class="form-control"
																			type="password" id="newpassword" name="newpassword"
																			placeholder="새 비밀번호 입력">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>변경할 비밀번호 확인</label> <input class="form-control"
																			type="password" id="chknewpassword"
																			name="chknewpassword" placeholder="새 비밀번호 확인">
																	</div>
																</div>
															</div>
															<div class="alert alert-success" id="alert-success">비밀번호가
																일치합니다.</div>
															<div class="alert alert-danger" id="alert-danger">비밀번호가
																일치하지 않습니다.</div>
															<div class="alert alert-danger" id="alert-same">변경하실 비밀번호와 현재 비밀번호가 같습니다.</div>
														</div>
													</div>
													<input type="hidden" name="name" value="<%=user.getU_name()%>"/>
													<input type="hidden" name="phone" value="<%=user.getU_phone()%>"/>
													<input type="hidden" name="email" value="<%=user.getU_email()%>"/>
													<input type="hidden" name="address" value="<%=user.getU_address()%>"/>
													<div class="row">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-primary" type="submit"
																id="change-submit">변경사항 저장</button>
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
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>