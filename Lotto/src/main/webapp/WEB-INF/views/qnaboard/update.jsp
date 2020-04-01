<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
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
 <label>글 번호</label>
 <input type="text" name="qna_bno" value="${QnaboardVO.qna_bno }" readonly="readonly"><br>
 <label>글 제목</label><br>
 <input type="text" value="${QnaboardVO.qna_title }" name="qna_title"><br>
 <label>본문</label><br>
 <textarea rows="20" cols="120"  name="qna_content">${QnaboardVO.qna_content }</textarea><br>
 <label>작성자 아이디</label><br>
 <input type="text" value="${QnaboardVO.qna_userid }"  readonly="readonly" name="qna_userid"><br>
 <label>작성 시간</label><br>
 <fmt:formatDate value="${QnaboardVO.qna_regdate }"
  pattern="yyyy-MM-dd HH:mm:ss" var="regdate"/>
  <input type="text" value="${regdate }" readonly="readonly" /><br>
 </form>
 <br>
 <br>
 <c:if test="${sessionScope.login_id != null }">
 <c:if test="${sessionScope.login_id == QnaboardVO.qna_userid }">
   <button type="button" id="btn_update" class="btn btn-success">수정 완료</button>
 <button type="button" id="btn_delete" class="btn btn-danger">삭제</button>
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