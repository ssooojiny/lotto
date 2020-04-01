<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../dropbar.jsp"%>
<style type="text/css">
  .content_wrap div {
/*    border: 1px solid black; */
   display: inline-block;
  }

  .signup_title {
    width:100%;
    font-size : 40px;
    margin-left: 350px;
    display:inline-block;
    position: relative;
  }
  .signup_title img{
    width: 200px;
    hieght: 200px;
    display:inline-block;
    float:center;
  }
  .signup_top {
  letter-spacing:7px;
  padding:10x;
  }
  
  .signup_cont {
    margin-left:160px;
  }
   .signup_cont table td{
   text-align: center;
   width:200px;
   }
  
  .signup_cont input#checkaa, #member_pw, #member_pwcheck, #member_name,
    #member_nickname, #member_phone {
  font-size: 14px;
  display: block;
  width: 500px;
  height: 30px;
  margin-bottom: 12px;
  margin-left:20px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  border-radius: 2px;
  text-align: center;
  border-radius: 8px;
  }

</style>
</head>
<body>
<div class="left_content">
<%@ include file="../leftside.jsp"%>
</div>
<div class="content_wrap">
  <div style="width: 1200px; height: 700px; overflow: auto; overflow-x: hidden; overflow-y: auto; 
                               scrollbar-highlight-color: #CCCCCC; scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                               scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
  
    <div class="signup_title">
      <div class="signup_top">
        <img src="/lotto/resources/sel_image/signup_icon.png">
      </div>
      <div class="signup_top" >
         <p>SIGN UP<p>
         <p style="font-size:15px; letter-spacing:0px;"><span style="color:red">*</span>은 필수입력 사항 입니다.</p>
      </div>
    </div> <!-- signup title div -->
    <div class="signup_cont">
      <form action="signup" method="post">
        <table>
          <tr>
            <td>아이디<span style="color:red">*</span></td>
            <td><input type="text" class="member_id" name="member_id" id="checkaa" 
                  required="required" oninput="checkId()"></td>
          </tr>
          <tr>
            <td></td>
            <td><div id="idError"></div></td>
          </tr>          
          <tr>
            <td>비밀번호<span style="color:red">*</span></td>
            <td><input type="password" name="member_pw" id="member_pw" required class="pass" oninput="checkPwd()"></td>
          </tr>
          <tr>
            <td>비밀번호 확인<span style="color:red">*</span></td>
            <td><input type="password" id="member_pwcheck" required class="pass" oninput="checkPwd()"></td>
          </tr>
          <tr>
            <td></td>
            <td><div id="pwError"></div></td>
          </tr>
          <tr>
            <td>이름<span style="color:red">*</span></td>
            <td><input type="text" name="member_name" id="member_name" required="required" ></td>
          </tr>
          <tr>
            <td>닉네임<span style="color:red">*</span></td>
            <td><input type="text" name="member_nickname" id="member_nickname" required="required" ></td>
          </tr>
          <tr>
            <td>전화번호<span style="color:red">*</span></td>
            <td><input type="text" name="member_phone" id="member_phone" required="required">
          </tr>
          <tr>
            <td style="height:50px;">마케팅 정보 수신 동의</td>
            <td>
              <input type="radio"  name="member_ad" value="1"> 동의 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="member_ad" value="0"> 거부
            </td>
          </tr>
          <tr>
            <td></td>
            <td style="height:50px;">
             <button type="submit" class="bttn-material-flat bttn-sm bttn-primary btn_submit" id="register" disabled="disabled">가입하기</button>
             <button type="button" onclick="location.href='/lotto/mainpage'" class="bttn-material-flat bttn-sm bttn-primary">홈으로</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

  <script type="text/javascript">
  
  var idCheck = 0;
  var pwCheck = 0;
  
  // 실시간 아이디 중복 체크
  function checkId(){
    var inputed = $('.member_id').val();
    console.log(inputed);
    
    $.ajax({
      data : {'member_id' : inputed},
      url : 'idCheck',
      success : function(data){
        console.log(data);
        if(inputed == "" /* && data == '1' */){
          $('.btn_submit').attr('disabled',true);
          $('.btn_submit').css('background-color','#ffcece');
          $('#checkaa').css('background-color','#ffffff');
          $('#idError').text('');
          idCheck = 0;
        }else if(data == 0){
          $('#checkaa').css('background-color','#b0f6ac');
          $('#idError').text('사용가능한 아이디 입니다.');
          idCheck = 1;
          if(idCheck == 1 && pwCheck == 1){
            $('.btn_submit').attr('disabled',false);
            $('#checkaa').css('background-color','#b0f6ac');
          }
      }else if(data == 1){
        $('.btn_submit').attr('disabled',true);
        $('.btn_submit').css('background-color','#ffcece');
        $('#checkaa').css('background-color','#ffcece');
        $('#idError').text('사용할 수 없는 아이디 입니다.');
        idCheck = 0;
      }
        console.log("idCheck = " + idCheck + ", pwCheck = " + pwCheck);
        }    
    });//ajax
  }//checkid
  
  // 실시간 비밀번호 확인 체크
  function checkPwd(){
    var inputed = $('.pass').val();
    var reinputed = $('#member_pwcheck').val();
    
    if(reinputed == "" && (inputed != reinputed || inputed == reinputed)){
      $('.btn_submit').attr('disabled',true);
      $('.btn_submit').css('background-color','#ffcece');
      $('#member_pwcheck').css('background-color','#ffffff');
      $('#pwError').text(' ');
      pwCheck = 0;
    } else if(inputed == reinputed){
      $('#member_pwcheck').css('background-color','#b0f6ac');
      $('#pwError').text('비밀번호 확인이 일치합니다');
         pwCheck = 1;
       if (idCheck == 1 && pwCheck == 1){
         $('.btn_submit').attr('disabled',false); 
         $('.btn_submit').css('background-color','#1d89ff');
      } 
  }else if(inputed != reinputed){
    pwCheck = 0;
      $('.btn_submit').attr('disabled',true);
      $('.btn_submit').css('background-color','#ffcece');
      $('#member_pwcheck').css('background-color','#ffcece');
      $('#pwError').text('비밀번호 확인이 일치하지 않습니다.');
    } 
    console.log("idCheck = " + idCheck + ", pwCheck = " + pwCheck);
  } //end chcekPwd
  	
  
    
  </script>

</body>
<footer>
<%@ include file="../footer.jsp"%>
</footer>
</html>