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
	AdminBoardEntity free = (AdminBoardEntity) request.getAttribute("request");
	String a = "자유 게시판";
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
		<table class="table table-bordered">
		<h1><%=a %></h1>
			<a>게시물 번호 : <%=free.getB_seq()%></a>
			<a class="space-left">조회수 : <%=free.getB_hit()%>>
			</a>
			<tr>
				<th>제목:</th>
				<td><a><%=free.getB_title()%></a></td>
			</tr>
			<tr>
				<th>작성자:</th>
				<td><a><%=free.getU_name()%></a></td>
			</tr>
			<tr>
				<th>내용:</th>
				<td><textarea cols="10" rows="20" name="content"
						class="form-control" readonly><%=free.getB_content()%></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="삭제" class="pull-left" onclick="javascript:location.href='./logBoard/logfreedelete?b_seq=<%=free.getB_seq()%>'" />
				 <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='logfree.do'" /></td>
			</tr>
		</table>
		<div class="space-left2">
			작성일 : <a> <fmt:formatDate value="<%=free.getB_date()%>" pattern="yyyy-MM-dd" />
			</a>
		</div>
		<br /> <br />
		<%@include file="../commons/comments/reply.jsp"%>
		</form>
	</div>
</body>
</html>