<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>left side menu</title>
<style>

.menutitle{
font-weight : bold;
text-align : center;
color: #ffffff;
}

leftst {
  display : inline-block;
  margin: 10px;
  font-family: "나눔바른고딕OTF 옛한글 보통";
  font-size: 0.9em;
}

ul#navi {
  width: 250px;
  text-indent: 10px;
}

ul#navi, ul#navi ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

li.groupleftmenu {
  margin-bottom: 30px;
}

li.groupleftmenu div.menutitle {
  height: 35px;
  line-height: 35px;
  background: #6688CC;
  cursor: pointer;
}

ul.sub li {
  margin-bottom: 2px;
  height: 35px;
  line-height: 35px;
  background: #f4f4f4;
  cursor: pointer;
  text-align: center;
}

ul.sub li a {
  display: block;
  width: 100%;
  height: 100%;
  text-decoration: none;
  color: #000;
}

ul.sub li:hover {
  background: #C2C2C2;
  width: 100%;
  box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0
      rgba(0, 0, 0, 0.15);
  transition: all 0.2s; 
}

.leftmenu{
display : inline-block;
float: left;
padding-left : 20px;
}

.centermenu{
display : inline-block;
padding-left: 100px;
}

</style>
<script type="text/javascript"
  src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
</head>
<body>

<div class="clear" style="clear:both; margin-top:50px; "></div> 
   <div class="leftmenu" >
   <div class="leftst">
  <ul id="navi" style="display: inline-block;">
    <li class="groupleftmenu">
      <div class="menutitle">로또버노조</div>
    </li>
    <li class="groupleftmenu">
      <div class="menutitle">회원가입</div>
      <ul class="sub">
        <li><a href="/lotto/member/signup">무료회원가입</a></li>
      </ul>
    </li>
    <li class="groupleftmenu">
      <div class="menutitle">로또버노조 약관</div>
      <ul class="sub">
        <li><a href="/lotto/main/term">이용약관</a></li>
        <li><a href="/lotto/main/personal">개인정보취급방침</a></li>
        <li><a href="/lotto/qnaboard/qna">고객센터</a></li>
      </ul>
    </li>
    <li class="groupleftmenu">
      <div class="menutitle">올바른 복권 문화</div>
      <ul class="sub">
        <li><a href="/lotto/main/rightlotto">행복로또</a></li>
        <li><a href="/lotto/main/overdose">복권중독예방</a></li>
      </ul>
    </li>
  </ul>
</div></div>
</body>
</html>