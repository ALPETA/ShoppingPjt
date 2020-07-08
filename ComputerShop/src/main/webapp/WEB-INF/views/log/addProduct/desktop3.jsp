<%@page
	import="com.hardCarry.shopping.entity.join.AdminProductViewEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="./logMetadata.jsp"%>
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
</head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 아약스 JSTL -->
<script>
	$(document)
			.ready(
					function() {
						var imgByte;
						$("#case").change(function() {
							if ($(this).val() === '게임용') {
								$("#gameDisplaySection").fadeIn(300);
								return;
							}
							$("#gameDisplaySection").hide();

						});

						$("#case").click(function() {
							if ($(this).val() === '노트북') {
								$("#changeusedesktop").show();
								$("#changeusenotebook").hide();
								$("checkchange").hide();
							} else if ($(this).val() === '데스크탑') {
								$("#changeusedesktop").hide();
								$("#changeusenotebook").show();
								$("checkchange").hide();
							}
						})

						$("#mainImg").change(
								function() {
									const fileFilter = $(this).val();
									if (fileFilter === '') {
										return;
									}
									const extension = fileFilter.substring(
											fileFilter.indexOf('.'),
											fileFilter.length).toLowerCase();
									if (extension === '.jpg'
											|| extension === '.jpeg'
											|| extension === '.png') {
										readURL(this, 'mainImgSection');
									} else {
										alert("이미지 파일만 업로드 가능합니다.");
										$(this).val(null);
									}
								});

						$("#detailImg").change(
								function() {
									const fileFilter = $(this).val();
									if (fileFilter === '') {
										return;
									}
									const extension = fileFilter.substring(
											fileFilter.indexOf('.'),
											fileFilter.length).toLowerCase();
									if (extension === '.jpg'
											|| extension === '.jpeg'
											|| extension === '.png') {
										readURL(this, 'detailImgSection');
									} else {
										alert("이미지 파일만 업로드 가능합니다.");
										$(this).val(null);
									}
								});

						$("#mainImgSection, #detailImgSection")
								.click(
										function() {
											$("#modalSection")
													.html(
															"<img src='"
																	+ imgByte
																	+ "' style='width:100%;height:800px'/>");
										});

						function readURL(input, sction) {
							if (input.files && input.files[0]) {
								var reader = new FileReader();
								reader.onload = function(e) {
									imgByte = e.target.result;
									$('#' + sction)
											.attr('src', e.target.result);
								}
								reader.readAsDataURL(input.files[0]);
							}
						}
					});
</script>
<%
	AdminProductViewEntity sum = (AdminProductViewEntity) request.getAttribute("request");
%>

<%
	String ctx = request.getContextPath();
	String img = sum.getP_sumnailImgPath();
	String img_path = ctx + img;
%>


<body id="page-top">
	<!-- Page Wrapper -->
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>상품 상세 페이지</h1>
			<div align="left">
				<a class="btn btn-lg1  btn btn-secondary" href="seletion.do?name=<%=sum.getP_seq()%>">상품 상세 페이지</a> 
				<a class="btn btn-lg1  btn btn-secondary" href="userorderproduct.do?name=<%=sum.getP_seq()%>"> 해당 상품 구매 회원</a>
			</div>
		</div>
		<form method="post" action="./product/addupdatedesktop"
			enctype="multipart/form-data">
			<div style="margin-top: 30px" class="container">
				<div class="row">

					<div class="form-group col-lg-10">
						<label for="exampleInputEmail1">상품 게시물 번호</label> <input
							name="p_seq" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="" readonly value="<%=sum.getP_seq()%>" />
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">상품 용도</label> <select
							class="form-control" id="case" name="p_use">
							<option id="checkchange"><%=sum.getP_use()%></option>
							<option id="changeusedesktop">데스크탑</option>
							<option id="changeusenotebook">노트북</option>
						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">상품 용도</label> <select
							class="form-control" id="case" name="p_category">
							<option><%=sum.getP_category()%></option>
							<option>사무용</option>
							<option>게임용</option>
						</select>
					</div>
					<div class="form-group col-lg-10" style="display: none"
						id="gameDisplaySection">
						<label for="exampleSelect1">게임 장르</label> <select
							class="form-control" id="exampleSelect2">
							<option></option>
							<option>LOL</option>
							<option>MapleStory</option>
							<option>Dungeon & Fighter</option>
							<option>OverWatch</option>
							<option>BattleGrounds</option>
							<option>SuddenAttack</option>
							<option>FiFaOnline</option>
							<option>LostArk</option>
							<option>????????</option>
						</select>
					</div>
					<div class="form-group col-lg-10">
						<label for="exampleInputPassword1">상품 명</label> <input type="text"
							class="form-control" id="exampleInputPassword1" placeholder=""
							name="p_name" value="<%=sum.getP_name()%>">
					</div>
					<div class="form-group col-lg-10">
						<label for="exampleInputEmail1">상품 가격</label> <input type="text"
							class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="" name="p_price"
							value="<%=sum.getP_price()%>">
					</div>
					<div class="form-group col-lg-10">
						<label for="exampleInputEmail1">상품 제조사</label> <input
							name="p_manufacture" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="" value="<%=sum.getP_manufacture()%>">
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">CPU</label> <select
							class="form-control" id="case" name="ps_cpu">
							<option><%=sum.getPs_cpu()%></option>
							<option>cpu</option>
							<option>씨피유</option>
						</select>
					</div>



					<div class="form-group col-lg-10">
						<label for="exampleSelect1">RAM</label> <select
							class="form-control" id="case" name="ps_ram">
							<option><%=sum.getPs_ram()%></option>
							<option>4GB</option>
							<option>8GB</option>
							<option>16GB</option>

						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">MAINBOARD</label> <select
							class="form-control" id="case" name="ps_mainboard">
							<option><%=sum.getPs_mainboard()%></option>
							<option>스카이레이크</option>
							<option>커피레이크</option>
						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">GRAPHICS CARD</label> <select
							class="form-control" id="case" name="ps_graphic">
							<option><%=sum.getPs_graphic()%></option>
							<option>지포스 GT</option>
							<option>지포스 GTX</option>
							<option>지포스 RTX</option>
						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">HDD</label> <select
							class="form-control" id="case" name="ps_hdd">
							<option><%=sum.getPs_hdd()%></option>
							<option>125GB</option>
							<option>256GB</option>
							<option>1TB</option>
						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">SSD</label> <select
							class="form-control" id="case" name="ps_ssd">
							<option><%=sum.getPs_ssd()%></option>
							<option>125GB</option>
							<option>256GB</option>
							<option>1TB</option>
						</select>
					</div>



					<div class="form-group col-lg-10">
						<label for="exampleInputPassword1">상품 수량</label><input
							type="number" min="1" class="form-control" max="1000" step="1"
							id="case" name="p_stock" value="<%=sum.getP_stock()%>" />
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleSelect1">상품 판매 상태</label> <select
							class="form-control" id="case" name="p_state">
							<option><%=sum.getP_state()%></option>
							<option>판매 중</option>
							<option>판매 중단</option>
						</select>
					</div>

					<div class="form-group col-lg-10">
						<label for="exampleInputFile">상품 메인 이미지 업로드</label> <input
							type="file" class="form-control-file" id="mainImg"
							aria-describedby="fileHelp" name="files"> <small
							id="fileHelp" class="form-text text-muted">이미지 미리 보기</small> <img
							src="<%=img_path%>" style="width: 800px; height: 300px;" />


						<div class="row">
							<img id="mainImgSection" class="col-lg-10"
								style="cursor: pointer" data-toggle="modal" name="f1Img"
								data-target="#myModal">



						</div>
					</div>

					<div class="form-group col-lg-10">
						<label for="comment">상품 코멘트</label>
						<textarea class="form-control" name="p_etc" id="exampleTextarea"
							rows="5"> <%=sum.getP_etc()%> </textarea>
					</div>







					<div class="form-group col-lg-10">
						<button type="submit" class="btn btn-primary btn-block"
							onclick="test.jsp">수 정</button>
						<button type="button" class="btn btn-secondary btn-block">초기화</button>
					</div>
				</div>
			</div>
		</form>
		<br />
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-body" id="modalSection"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>