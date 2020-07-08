<%@page
	import="com.hardCarry.shopping.entity.join.AdminProductViewEntity"%>
<%@page import="lombok.extern.slf4j.Slf4j"%>
<%@page import="java.io.Console"%>
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
	<form method="post" action="./product/addupdatedesktop"
		enctype="multipart/form-data">
		<div style="margin-top: 30px" class="container">
			<div class="row">

				<div class="form-group col-lg-10">
					<label for="exampleInputEmail1">상품 게시물 번호</label> <input
						name="p_seq" type="text" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="" value="<%=sum.getP_seq()%>" readonly>
				</div>

				<div class="form-group col-lg-10">
					<label for="exampleSelect1">상품 용도</label> <select
						class="form-control" id="case" name="p_use">
						<option><%=sum.getP_use()%></option>
					</select>
				</div>

				<div class="form-group col-lg-10">
					<label for="exampleSelect1">상품 용도</label> <select
						class="form-control" id="case" name="p_category">
						<option><%=sum.getP_category()%></option>
						<option>monitor</option>
						<option>keyboard</option>
						<option>speaker</option>
						<option>mouse</option>
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
					<label for="exampleInputPassword1">상품 수량</label><input
						type="number" min="1" class="form-control" max="1000" step="1"
						value="1" id="case" name="p_stock" value="<%=sum.getP_stock()%>"/>
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
						aria-describedby="fileHelp" name="files" >
						
						 <small id="fileHelp" class="form-text text-muted">이미지 미리 보기</small>
						 
						 <img src="<%=img_path%>"
					style="width: 800px; height: 300px;" />
					
					<div class="row">
						<img id="mainImgSection" class="col-lg-10" style="cursor: pointer"
							data-toggle="modal" name="f1Img" data-target="#myModal" />
					</div>
				</div>

				<div class="form-group col-lg-10">
					<label for="comment">상품 코멘트</label>
					<textarea class="form-control" name="p_etc" id="exampleTextarea"
						rows="5"> <%=sum.getP_etc() %>  </textarea>
				</div>
				<div class="form-group col-lg-10">
					<button type="submit" class="btn btn-primary btn-block"
						onclick="test.jsp">수 정</button>
					<!-- <button type="button" class="btn btn-secondary btn-block">초기화</button> -->
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
</body>
</html>