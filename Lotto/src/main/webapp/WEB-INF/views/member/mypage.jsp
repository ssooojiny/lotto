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
  
  .signup_cont input#member_id, #member_pw, #member_pwcheck, #member_name,
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
      <div class="signup_top" style="margin-left:120px;" >
         <p>MY PAGE<p>
         <p style="font-size:15px; letter-spacing:0px;"><span style="color:red">*</span>은 필수입력 사항 입니다.</p>
      </div>
    </div> <!-- signup title div -->
    <div class="signup_cont">
       <form id="frm">
        <table>
          <tr>
            <td>아이디<span style="color:red">*</span></td>
            <td><input type="text" id="member_id" name="member_id" value="${login_id}" readOnly="readOnly"></td>
          </tr>
          <tr>
            <td>비밀번호<span style="color:red">*</span></td>
            <td><input type="password" id="member_pw" name="member_pw" value="${memberVO.member_pw }" required="required"></td>
          </tr>
          <tr>
            <td>이름<span style="color:red">*</span></td>
            <td><input type="text" id="member_name" name="member_name" value="${memberVO.member_name }" readOnly="readOnly"></td>
          </tr>
          <tr>
            <td>닉네임<span style="color:red">*</span></td>
            <td><input type="text" id="member_nickname" name="member_nickname" value="${memberVO.member_nickname }" readOnly="readOnly"></td>
          </tr>
          <tr>
            <td>전화번호<span style="color:red">*</span></td>
            <td><input type="text" id="member_phone" name="member_phone" value="${memberVO.member_phone }" required="required">
          </tr>
          <tr>
            <td style="height:50px;">마케팅 정보 수신 동의</td>
            <td>
               <input type="radio" name="member_ad" value="1"
               <c:if test="${memberVO.member_ad eq '1'}"> checked</c:if>>동의
               <input type="radio" name="member_ad" value="0" <c:if test="${memberVO.member_ad eq '0'}"> checked</c:if>>거부
            </td>
          </tr>
          <tr>
            <td></td>
            <td style="height:50px;">
               <button type="submit" class="bttn-material-flat bttn-sm bttn-primary" id="btn_update">회원 정보 수정</button>
               <button type="submit" class="bttn-material-flat bttn-sm bttn-primary" id="btn_delete1">회원 정보 삭제</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

  <script type="text/javascript">
  
   $(document).ready(function(){
     var frm = $('#frm');
     
     $('#btn_update').click(function(){
       frm.attr('action', 'update');
       frm.attr('method', 'post');
       frm.submit(); 
       alert('회원정보가 수정되었습니다.');
       location.href = "../";
     });
     
   

      $('#btn_delete1').click(function() {
       if (confirm("삭제하시겠습니까?")) {

          frm.attr('action', 'delete1');
          frm.attr('method', 'post');
          frm.submit();
          alert('삭제되었습니다.');
          location.href = "/mainpage";
       }
    });
  });
   

  </script>

</body>
<footer>
<%@ include file="../footer.jsp"%>
</footer>
</html>