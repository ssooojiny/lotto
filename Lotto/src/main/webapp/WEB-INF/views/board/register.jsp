<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
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
<style>
 .imges{
        position: relative;
        background-image: url("/lotto/resources/images/level_3.jpg");                                                               
        height: 100vh;
        background-size: cover;
    }
</style>
</head>
<body>
<div class="imges" style="text-align: center; color: white;">
<h1>글 작성 페이지</h1>
<form action="register" method="post">
<br>
<p>제목 : <input type="text" name="title" placeholder="제목 입력" required="required"></p><br>
<p>작성자 : <input type="text" name="userid" placeholder="작성자 입력" required="required"  value="${login_id }"></p><br>
<textarea rows="20" cols="120" name="content" placeholder="내용 입력" required="required" ></textarea><br><br>
<input type="submit" class="btn btn-dark" value="등록" >
<button class="btn btn-dark" onclick="location='boardlist'">뒤로가기</button>
</form>
</div>
</body>
</html>