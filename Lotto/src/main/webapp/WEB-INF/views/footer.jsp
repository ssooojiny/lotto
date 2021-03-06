<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.footer .navi{
border:none;
margin:0px;
padding:0px;
font-size:18px;
font-weight:bold;
background: #6688CC;

}

.footer .navi .menubar ul{
background: #6688CC;
height:50px;
list-style:none;
padding-left:500px;
}

.footer .navi .menubar li{
display:inline-block;
padding:0px;
}

.footer li a{
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

.footer li a:hover, .footer ul li:hover a{
background: #C2C2C2;
color:#FFFFFF;
text-decoration:none;
box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0
      rgba(0, 0, 0, 0.15);
   -webkit-transition: box-shadow 0.4s ease-out;
   transition: box-shadow 0.4s ease-out;
}

.footer .wrap .lottoimg {
display:inline-block;

}

.footer .wrap .box {
display:inline-block;

}
.content{
min-height: calc(100vh - 300px);

</style>
<meta charset="UTF-8">
<title>lotto</title>
</head>
<body>
<div class="clear" style="clear:both"></div> <!-- 겹치지않게... -->

 <div class="footer">
    <div class="navi">
      <div class="menubar">
        <ul>
          <li><a href="/lotto/main/term">이용약관</a></li>
          <li><a href="/lotto/main/personal">개인정보취급방침</a></li>
          <li><a href="/lotto/qnaboard/qna">고객센터</a></li>
        </ul>
      </div>
    </div>
    <div class="wrap">
    <div style="width:250px; display:inline-block;" ></div>
    <div class="lottoimg">
      <img src="/lotto/resources/image/logo.jpg" style="width:350px; height:200px">
    </div>
    <div class="box" >
    <div class="box1">
      <p style="font-size: 14px;">
        당사의 분석 시스템은 누적 패턴을 분석/필터링한 정보제공만을 목적으로 하며, 당첨확률 개선서비스가 아니므로 <br>
        서비스 이용 과정에서 기대이익을 얻지 못하거나 발생한 손해 등에 대한 최종 책임은 서비스 이용자 본인에게 있습니다.
      </p>
    </div>
      <div class="box2">
        <p>법인명 : (주)로또버노조  |  대표자 : 민수홍  |  도로명 주소 : 서울특별시 구로구 시흥대로 163길
          33 주호타워 2,3층</p>
        <p>TEL : 02-864-9223  |  E-mail : sooojin0113@naver.com  |  제휴
          문의 : sooojin0113@naver.com</p>
        <p>통신판매업신고: 2019-서울구로-00111호  |  사업자 등록번호 : 111-11-11111</p>
        <p>COPYRIGHT LOTTOBUNOJO CONTENTS ALL RIGHT RESERVED.</p>
      </div>
    </div>
  </div>
  </div>

</body>
</html>