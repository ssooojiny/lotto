<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  .imges{
        position: relative;
        background-image: url("/lotto/resources/images/smile.jpg");                                                               
        height: 100vh;
        background-size: cover;
    }
</style>
<meta charset="UTF-8">
<title>Board</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/12.0.0/classic/ckeditor.js"></script>
</head>
<body>
<div class="imges" style="text-align: center; ">
<h1 style="color: black;">글 작성 페이지</h1>
<form action="register" method="post">
<div style="width: 1250px; color: black;">
<p>제목 : <input type="text" name="qna_title" placeholder="제목 입력" required="required"></p>
</div>
<div style="width: 1230px; color: black;">
<p>작성자 : <input type="text" name="qna_userid" placeholder="작성자 입력" required="required"  value="${login_id }"></p>
</div>
<div>
<textarea rows="20" cols="120" name="qna_content" placeholder="내용 입력" required="required" ></textarea>
</div><br>
<input type="submit" class="btn btn-info" value="등록" style="width: 120px;" >
<button class="btn btn-info" onclick="location='qna'" style="width: 120px;">뒤로가기</button>
</form>
</div>
</body>
</html>