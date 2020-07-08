<%@page import="com.hardCarry.shopping.entity.join.AdminBoardEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 시간 jstl -->
<!DOCTYPE>
<html>
<head>
</head>
<%
	AdminBoardEntity notice = (AdminBoardEntity) request.getAttribute("request");
	String a = "공지 사항 게시판";
%>
<%
	String ctx = request.getContextPath();
	String img = notice.getB_imgPath();
	String img_path = ctx + img;
%>

<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>


<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container">
		<table class="table table-bordered" style="width:90%;">
			<h1>공지 사항 게시판</h1>
			<a>게시물 번호 : <%=notice.getB_seq()%></a>
			<a class="space-left">조회수 : <%=notice.getB_hit()%>>
			</a>
			<tr>
				<th>제목:</th>
				<td><a><%=notice.getB_title()%></a></td>
			</tr>
			<tr>
				<th>작성자:</th>
				<td><a><%=notice.getU_name()%></a></td>
			</tr>
			<tr>
				<th>내용:</th>
				<td><textarea style="resize: none; width:92%;height:100;border:1;"  name="content"
						class="form-control" readonly><%=notice.getB_content()%></textarea></td>
			</tr>
			<tr>
				<th>이미지:</th>
				<td><img src="<%=img_path%>"
					style="width: 800px; height: 300px;" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="삭제"
					class="pull-left"
					onclick="javascript:location.href='./logBoard/lognoticedelete?b_seq=<%=notice.getB_seq()%>'" />
					<input type="button" value="글 목록으로... " class="pull-right"
					onclick="javascript:location.href='lognotice.do'" /></td>
			</tr>
		</table>
		<div class="space-left2">
			작성일 : <a> <fmt:formatDate value="<%=notice.getB_date()%>"
					pattern="yyyy-MM-dd" />
			</a>

		</div>
		<br /> <br /> <br /> <br />
	</div>
</body>
</html>