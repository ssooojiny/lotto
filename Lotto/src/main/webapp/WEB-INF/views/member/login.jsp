<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../dropbar.jsp"%>
<style type="text/css">

.wrap{
overflow-y:scroll;
overflow-x:scroll;
white-space:nowrap;

}

.content_wrap .div {
 display: block;
}

.login_body .container {
  overflow: hidden;
  margin: 80px auto 0;
  width: 1000px;
  height: 500px;
  position: relative;
  }
  
.signin-cont {
position: absolute;
top:200px;
left:13%;
}

.submit-wrap{
position: absolute;
top:200px;
left:30%;
}

.login_body .container .content input.inpt {
  font-size: 14px;
  display: block;
  width: 700px;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  border-radius: 2px;
  text-align: center;
  border-radius: 8px;
}

.login_body .container .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 300px;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  border-radius: 8px;
}

.login_body .container .content input.submit:hover {
  background-color: #6688CC;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s; 
}

.login_top img {
width: 200px;
hieght: 200px;
display:inline-block;
}

.login_top {
font-size : 50px;
letter-spacing: 10px;
margin-bottom: 12px;
margin-left: 10px;
display:inline-block;
position: absolute;
left:25%;
}

</style>
</head>
<body class="login_body">
<div class="wrap">
<div class="left_content">
<%@ include file="../leftside.jsp"%>
</div>
<div class="content_wrap">
<!---------- 로그인 섹션 ----------------->
  <section class="container">
     <div class="content">
        <div class="logintitle">
          <div class="login_top">
            <img src="/lotto/resources/sel_image/login_icon.png">
          </div>
          <div class="login_top" style="left:48%;">
            <p style="padding-top:40px;">LOGIN</p>
          </div>
        </div>
        <div class="signin-cont cont">
           <form action="/lotto/member/login-post" method="post">
              <input type="text" name="member_id" id="member_id" class="inpt" required="required" placeholder="아이디">
              <input type="password" name="member_pw" id="member_pw" class="inpt" required="required" placeholder="비밀번호">
                 <div class="submit-wrap">
                  <input type="submit" id="loginsubmit" value="login" class="submit" style="float:left">
                 </div>
            </form>
        </div>
     </div>
  </section>
</div>
</div>


<footer>
 <%@ include file="../footer.jsp" %>
</footer>
</body>
</html>