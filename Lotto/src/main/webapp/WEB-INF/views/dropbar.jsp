<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style type="text/css">
.blinking{
  -webkit-animation:blink 1.5s ease-in-out alternate;
    -moz-animation:blink 1.5s ease-in-out  alternate;
    animation:blink 1.5s ease-in-out alternate;
}
@-webkit-keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
}
@-moz-keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
}
@keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
} 

.logo a {
  display: inline-block;
  transition: .3s;
  -webkit-transform: scale(1);
  transform: scale(1);
}
.logo a:hover {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
/*---------------------로그인--------------------*/
.logincheck {
   text-align: center;
   display: inline-block;
   float:right;
   padding-right:30px;
/*    border : 1px solid blue; */
   margin-top:140px;
}

.logincheck input, #btn_signup {
  border: 1px solid #d9d9d9;
  border-radius: 5px;
  text-align: center;
}

/* .bttn-default {
   color: #fff;
} */

.bttn-primary, .bttn, .bttn-lg, .bttn-md, .bttn-sm, .bttn-xs {
   color: #6688CC;
}

.bttn, .bttn-lg, .bttn-md, .bttn-sm, .bttn-xs {
   margin: 0;
   padding: 0;
   border-width: 0;
   border-color: transparent;
   background: transparent;
   font-weight: 400;
   cursor: pointer;
   position: relative;
}

.bttn-sm {
   padding: 4px 10px;
   font-size: 16px;
   font-family: inherit;
}

.bttn-material-flat {
   margin: 0;
   padding: 0;
   border-width: 0;
   border-color: transparent;
   background: transparent;
   font-weight: 400;
   cursor: pointer;
   position: relative;
   font-size: 15px;
   font-family: inherit;
   padding: 5px 12px;
   overflow: hidden;
   border-width: 0;
   border-radius: 2px;
   background: #fff;
   box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.18), 0 1px 5px 0
      rgba(0, 0, 0, 0.15);
   color: #1d89ff;
   text-transform: uppercase;
   -webkit-transition: all 0.25s cubic-bezier(0.02, 0.01, 0.47, 1);
   transition: all 0.25s cubic-bezier(0.02, 0.01, 0.47, 1);
   -webkit-transform: translate3d(0, 0, 0);
   transform: translate3d(0, 0, 0);
}

.bttn-material-flat:hover, .bttn-material-flat:focus {
   box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0
      rgba(0, 0, 0, 0.15);
   -webkit-transition: box-shadow 0.4s ease-out;
   transition: box-shadow 0.4s ease-out;
}

.bttn-material-flat.bttn-sm {
   padding: 4px 10px;
   font-size: 16px;
   font-family: inherit;
}

.bttn-material-flat.bttn-primary {
   background: #6688CC;
   color: #fff;
}


/*--------------------드롭다운바------------------------*/
.drop_wrap {
width:100%;

}

.dropbar{
border:none;
margin:0px;
padding:0px;
font: 67.5% "나눔바른고딕OTF 옛한글 보통";
font-size:18px;
font-weight:bold;
}

.dropbar ul{
background: #6688CC;
height:50px;
list-style:none;
margin:0;
padding:0;
}

.dropbar li{
display:inline-block;
padding:0px;
}

.dropbar li a{
background: #6688CC;
color:#ffffff;
display:block;
font-weight:normal;
line-height:50px;
margin:0px;
padding:0px 25px;
text-align:center;
text-decoration:none;
}

.dropbar li a:hover, .dropbar ul li:hover a{
background: #C2C2C2;
color:#FFFFFF;
text-decoration:none;
box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0
      rgba(0, 0, 0, 0.15);
   -webkit-transition: box-shadow 0.4s ease-out;
   transition: box-shadow 0.4s ease-out;
  transition: all 0.2s; 
}

.dropbar li ul{
background: #C2C2C2;
display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
height:auto;
padding:0px;
margin:0px;
border:0px;
position:absolute;
width:200px;
z-index:200;
/*top:1em;
/*left:0;*/
}

.dropbar li:hover ul{
display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.dropbar li li {
background: #C2C2C2;
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}

.dropbar li:hover li a{
background:none;
}

.dropbar li ul a{
display:block;
height:50px;
font-size:14px;
font-style:normal;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}

.dropbar li ul a:hover, .dropbar li ul li:hover a{
background: #8C8C8C;
border:0px;
color:#ffffff;
text-decoration:none;
box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0
      rgba(0, 0, 0, 0.15);
-webkit-transition: box-shadow 0.4s ease-out;
transition: box-shadow 0.4s ease-out;
}

.dropbar p{
clear:left;
}

.left_content{
width:290px;
height:700px;
float:left;
}

.content_wrap {
width:1200px;
height:700px;
float:left;
overflow : hidden;
}

/* 타이틀 */

.logo > a {
   text-decoration: none;
   display: inline-block;
   padding: 2px 10px;
}

.logo > a:hover {
   background-color: #ddd;
   color: #ffffff;
}

.logo {
font-size:50px;
font-weight:bold;
margin-left:20px;
margin-top:40px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<div class="logo" style="  display: inline-block;">
<a href="http://localhost:8080/lotto/mainpage"><span class="image blinking">Hello Lotto!</span></a>
</div>
<!-- 로그인 되어있는지 확인하고 띄우기 -->

<div class="logincheck">

  <c:if test="${not empty login_id }">
        ${login_id }님, 환영합니다
      <button id="btn_logout" type="button" class="bttn-material-flat bttn-sm bttn-primary" >logout</button>
      <button id="btn_mypage" type="button" class="bttn-material-flat bttn-sm bttn-primary" >my page</button>
      </c:if>

      <c:if test="${empty login_id }">
         <div class="login">
            <form action="/lotto/member/login-post" method="post">
               <input type="text" name="member_id" placeholder="아이디" style="width: 100px; height: 25px;"> 
               <input type="password" name="member_pw" placeholder="비번" style="width: 100px; height: 25px;"> 
               <input type="hidden" name="targetUrl" value="${targetUrl }" />
               <input type="submit" id="loginsubmit" class="bttn-material-flat bttn-sm bttn-primary" value="LOGIN">
               <button type="button" id="btn_signup" class="bttn-material-flat bttn-sm bttn-primary">SIGNUP</button>
            </form>
         </div>
      </c:if>
</div>

<div class="clear" style="clear:both"></div> <!-- 겹치지않게 해주는 div class="clear" -->
<br>

<!-- 드롭다운바 -->
<div class="drop_wrap">      
<div class="dropbar">
<ul>
 <li><a href="/lotto/mainpage">Home</a></li>
 <li><a href="#">당첨결과</a>
   <ul>
    <li><a href="/lotto/main/selectlist">회차별 당첨번호</a></li>
    <li><a href="/lotto/info/getprize">당첨금 지급 안내</a></li>
   </ul>
 </li>
 <li><a href="#">로또 분석실</a>
   <ul>
    <li><a href="/lotto/main/analysis">로또 분석자료</a></li>
    <li><a href="/lotto/board/boardlist">로또 분석토론</a></li>
    <li><a href="/lotto/main/expectation">투표 게시판(1등)</a></li>
    <li><a href="/lotto/main/expectationlose">투표 게시판(낙첨)</a></li>
   </ul>
 </li>
 <li><a href="#">고객센터</a>
  <ul>
    <li><a href="/lotto/qnaboard/qna">Q&A</a></li>
    <li><a href="/lotto/member/mypage?member_id=${login_id }">마이 페이지</a></li>
    <li><a href="/lotto/main/rightlotto">행복로또</a></li>
    <li><a href="/lotto/main/overdose">복권 중독 예방</a></li>
  </ul>
 </li>  
</ul>
</div>
</div>

<div class="clear" style="clear:both"></div> <!-- 겹치지않게 해주는 div class="clear" -->

   
<!-- 스크립트 -->
   <script type="text/javascript">
      $(document).ready(function() {

         if ('${login_fail}' === 'fail') {
            alert('아이디 또는 비밀번호가 일치하지 않습니다');
          <%session.removeAttribute("login_fail");%>
         }

          $('#btn_logout').click(function() {
            location = '/lotto/member/logout';
         });//btn_logout
         
         $('#btn_mypage').click(function(){
           location = '/lotto/member/mypage?member_id=${login_id }';
         });//btn_mypage
         
         $('#btn_signup').click(function(){
           location='/lotto/member/signup';
         });//btn_signup
      });
      
   </script>
</body>

</html>