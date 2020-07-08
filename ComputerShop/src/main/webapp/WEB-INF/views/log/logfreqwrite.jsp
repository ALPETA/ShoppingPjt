<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
</head>
<body>
      
   <%@include file="./logcategory.jsp"%>
   <div class="container">
      <br/>
      <h1>F&Q 글 쓰기</h1>
      <form method="post" action="./logBoard/addfandq" enctype="multipart/form-data">
         <table class="table table-bordered">
            <tr>
               <th>제목:</th>
               <td><input type="text" placeholder="제목을 입력하세요. "
                  name="b_title" class="form-control"  id="exampleInputPassword1"/></td>
            </tr>
            <tr>
               <th>내용:</th>
               <td><textarea cols="10" rows="20" placeholder="내용을 입력하세요. "
                     name="b_content" class="form-control"></textarea></td>
            </tr>
            
         </table>
                  <div class="form-group col-lg-10">
            <button type="submit" class="btn btn-primary btn-block"
               onclick="test.jsp">등 록</button>
            <button type="button" class="btn btn-secondary btn-block">돌아가기</button>
         </div>
      </form>
   </div>

</body>
</html>