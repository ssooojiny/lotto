<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js">
</script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>게시글 수정 페이지</h1>
 <form id="frm">
 <input type="hidden" name="page" value="${criteria.page }">
 <input type="hidden" name="perPage" value="${criteria.numsPerPage }">
 <label>글 번호 :</label><br>
 <textarea rows="1" cols="10"  name="bno">${boardVO.bno }</textarea><br>
 <label>글 제목 :</label><br>
 <textarea rows="1" cols="40"  name="title">${boardVO.title }</textarea><br>
 <label>내용:</label><br>
 <textarea rows="1" cols="40"  name="content">${boardVO.content }</textarea><br>
 <label>작성자  :</label><br>
 <input type="text" value="${boardVO.userid }"  readonly="readonly"><br>
 <label>작성 시간 :</label><br>
 <fmt:formatDate value="${boardVO.regdate }"
  pattern="yyyy-MM-dd HH:mm:ss" var="regdate"/>
  <input type="text" value="${regdate }" readonly="readonly" /><br>
 </form>
 <br>
 <br style="margin: 0; padding: 0;">
 <c:if test="${sessionScope.login_id != null }">
 <c:if test="${sessionScope.login_id == boardVO.userid }">
   <button type="button" id="btn_update" style="margin: 0; padding: 0; border-width: inherit;"><img alt="" src="/lotto/resources/images/btn_modify.gif" style="margin: 0; padding: 0;"></button>
 <button type="button" id="btn_delete"  style="margin: 0; padding: 0; border-width: inherit;"><img alt="" src="/lotto/resources/images/btn_delete.gif" style="margin: 0; padding: 0;"></button>
 </c:if>
 </c:if>
 <script type="text/javascript">
 $(document).ready(function() {
   var frm = $('#frm');
   $('#btn_update').click(function(){
      frm.attr('action', 'update');
      frm.attr('method', 'post');
      frm.submit();
   });
   
   $('#btn_delete').click(function(){
      frm.attr('action', 'delete');
      frm.attr('method', 'post');
      frm.submit();
   });
});
 </script>
</body>
</html>