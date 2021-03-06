<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.loto_img div {
  background-image: url('http://i.imgur.com/gvS0kEU.png');
  height: 34px;
  width: 47px;
  padding-top: 13px;
  font-family: tahoma;
  font-size: 12pt;
  color: #fff;
  text-align: center;
  font-weight: bold;
  float: left;
}


div.left {
        width: 60%;
        float: left;
        box-sizing: border-box;
    }
div.right {
        width: 40%;
        float: right;
        box-sizing: border-box;
    }
</style>
<meta charset="UTF-8">
<title>analysis1.jsp 페이지 입니다</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<div>
  <div class="left">
  <h2 style="width: 1000px">최근부터 선택하신 횟수까지 가장 많이 번호가 나온 순 입니다.</h2>
    <table>
      <tbody>
        <c:forEach var="vo" items="${testList2 }" varStatus="status">
        <c:choose>
        <c:when test="${status.index % 3 == 0}"><td><p>
        <div class="loto_img">
        <div style="background-color: #ff99cc;">${vo.hit_number }</div>
        
        </div>
        <div class="test"  style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${status.index+1 }위</div>
        <div class="test"  style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${vo.cnt }회
              출현</div>
        </c:when>
        <c:otherwise>
        <div class="loto_img">
              <div style="background-color: #ff99cc;">${vo.hit_number }</div>
              
       </div>
       <div class="test"  style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${status.index+1 }위</div>
       <div style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${vo.cnt }회
              출현</div>
        </c:otherwise>
          
        </c:choose>
        </c:forEach>
      </tbody>
    </table>
    
    </div>


    <div class="right">
    <div style="float: lift">
      <table border="0px" cellpadding="0" cellspacing="0" width="15%"
        style="padding-left: 10px; border: 1px solid black;">
        <thead>
          <tr height="30">
            <th height="60" colspan="3" align="center">꼭 넣어야 하는 로또
              번호</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td align="center">
              <table cellpaddding="0" cellspacing="0" width="90%"
                border="0">
                <tbody>
                  <tr height="24">
                    <td height="34"><font color="000000"> <strong>번호를
                          선택하세요</strong>
                    </font></td>
                  </tr>
                  <tr>
                    <td>
                      <table cellpadding="0" cellspacing="0"
                        width="100%">
                        <tbody>
                          <tr height="5">
                            <td></td>
                          </tr>
                          <tr>
                            <!-- 1부터 10 -->
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_1_off.gif"
                              style="cursor: pointer;" id="1"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_2_off.gif"
                              style="cursor: pointer;" id="2"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_3_off.gif"
                              style="cursor: pointer;" id="3"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_4_off.gif"
                              style="cursor: pointer;" id="4"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_5_off.gif"
                              style="cursor: pointer;" id="5"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_6_off.gif"
                              style="cursor: pointer;" id="6"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_7_off.gif"
                              style="cursor: pointer;" id="7"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_8_off.gif"
                              style="cursor: pointer;" id="8"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_9_off.gif"
                              style="cursor: pointer;" id="9"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_10_off.gif"
                              style="cursor: pointer;" id="10"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>

                          <!-- 11부터 20 -->
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_11_off.gif"
                              style="cursor: pointer;" id="11">
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_12_off.gif"
                              style="cursor: pointer;" id="12"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_13_off.gif"
                              style="cursor: pointer;" id="13"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_14_off.gif"
                              style="cursor: pointer;" id="14"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_15_off.gif"
                              style="cursor: pointer;" id="15"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_16_off.gif"
                              style="cursor: pointer;" id="16"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_17_off.gif"
                              style="cursor: pointer;" id="17"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_18_off.gif"
                              style="cursor: pointer;" id="18"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_19_off.gif"
                              style="cursor: pointer;" id="19"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_20_off.gif"
                              style="cursor: pointer;" id="20"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>

                          <!-- 21부터 30 -->
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_21_off.gif"
                              style="cursor: pointer;" id="21"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_22_off.gif"
                              style="cursor: pointer;" id="22"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_23_off.gif"
                              style="cursor: pointer;" id="23"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_24_off.gif"
                              style="cursor: pointer;" id="24"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_25_off.gif"
                              style="cursor: pointer;" id="25"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_26_off.gif"
                              style="cursor: pointer;" id="26"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_27_off.gif"
                              style="cursor: pointer;" id="27"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_28_off.gif"
                              style="cursor: pointer;" id="28"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_29_off.gif"
                              style="cursor: pointer;" id="29"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_30_off.gif"
                              style="cursor: pointer;" id="30"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <!-- 31부터 45 -->
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_31_off.gif"
                              style="cursor: pointer;" id="31"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_32_off.gif"
                              style="cursor: pointer;" id="32"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_33_off.gif"
                              style="cursor: pointer;" id="33"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_34_off.gif"
                              style="cursor: pointer;" id="34"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_35_off.gif"
                              style="cursor: pointer;" id="35"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_36_off.gif"
                              style="cursor: pointer;" id="36"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_37_off.gif"
                              style="cursor: pointer;" id="37"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_38_off.gif"
                              style="cursor: pointer;" id="38"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_39_off.gif"
                              style="cursor: pointer;" id="39"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_40_off.gif"
                              style="cursor: pointer;" id="40"></td>
                            <td width="5"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_41_off.gif"
                              style="cursor: pointer;" id="41"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_42_off.gif"
                              style="cursor: pointer;" id="42"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_43_off.gif"
                              style="cursor: pointer;" id="43"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_44_off.gif"
                              style="cursor: pointer;" id="44"></td>
                            <td width="5"></td>
                            <td width="14"><img
                              src="/lotto/resources/image/myfixed_num_45_off.gif"
                              style="cursor: pointer;" id="45"></td>
                            <td width="5"></td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                  <tr height="10">
                    <td></td>
                  </tr>
                  <!-- 선택번호 -->
                  <tr height="24">
                    <td><b>선택번호 (최소 0개, 최대5개)</b></td>
                  </tr>
                  <tr height="44" bgcolor="#FFFFFF">
                    <td align="center" valgin="top">
                      <table width="90%" cellpadding="0" cellspacing="0"
                        border="0">
                        <tbody>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr align="center" height="18">
                            <td id="a_sel_0" width="20%"></td>
                            <td id="a_sel_1" width="20%"></td>
                            <td id="a_sel_2" width="20%"></td>
                            <td id="a_sel_3" width="20%"></td>
                            <td id="a_sel_4" width="20%"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                          <tr align="center" height="18">
                            <td id="a_sel_5" width="20%"></td>
                            <td id="a_sel_6" width="20%"></td>
                            <td id="a_sel_7" width="20%"></td>
                            <td id="a_sel_8" width="20%"></td>
                            <td id="a_sel_9" width="20%"></td>
                          </tr>
                          <tr height="4">
                            <td></td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                  <tr height="15">
                    <td></td>
                  </tr>
                  <tr>
                    <td align="center">
                      <button type="button" id="btn_cancel">선택취소</button>
                      <input type="button" id="btn_select" value="선택">
                      <input type="button" id="btn_best_auto_choice"
                      value="베스트 번호 자동 뽑기">
                    </td>
                  </tr>
                  <tr height="12">
                    <td></td>
                  </tr>
                </tbody>
              </table>
            </td>
            <td></td>
          </tr>
        </tbody>
      </table>
    </div>
    
    </div>
    
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    <script type="text/javascript">
          var selected_num = new Array(0);
          var sel_num = new Array(0);
          var sel_cnt = 0;

          $('img')
              .on(
                  {
                    // 1 ~ 45 로또 번호 중에 클릭 했을때 체크 되는 메소드
                    click : function() { // 이미지 선택시 색 변하기, 배열에 추가하기, 선택숫자 이미지 띄우기

                      console.log("sel_cnt : " + sel_cnt);
                      var id = $(this).attr('id');
                      console.log("id : " + id);
                      var imgSrc = $(this).attr('src');
                      console.log("img src = " + imgSrc);

                      if ($(this).attr("src").match('on')) {

                        /* document.getElementById("a_sel_"+ sel_cnt).innerHTML=''; */

                        sel_num.splice(sel_num.indexOf(imgSrc), 1);
                        selected_num.splice(selected_num.indexOf(id), 1); //배열에서 지우기

                        sel_cnt--;
                        $(this).attr("src",
                            $(this).attr("src").replace(/on\.gif$/, 'off.gif'));

                      } else {
                        if (sel_cnt > 4) {
                          alert("5개이상 선택할 수 없습니다.")
                          return false;
                        } else {
                          sel_cnt++;

                          $(this).attr(
                              "src",
                              $(this).attr("src")
                                  .replace(/off\.gif$/, 'on.gif'));
                          var imgSrc = $(this).attr('src');

                          sel_num.push(imgSrc);
                          selected_num.push(id);

                        }

                        /* document.getElementById("a_sel_"+ sel_cnt).innerHTML='<img src="' + $(this).attr('src') + '">'; */
                      }

                      for (var i = 0; i < sel_num.length; i++) {

                        console.log("배열[" + i + "] : " + sel_num[i]);
                        document.getElementById("a_sel_" + i).innerHTML = '<img src="' + sel_num[i] + '" id="s'+i+'">';
                        console.log("selected_num[" + i + "] : "
                            + selected_num[i]);

                      }

                    }// end click : function

                  });

          /////////////////////////////////////////////////////////////

          $('#btn_cancel').on(
              {

                click : function() {

                  console.log("배열 값 확인 : " + selected_num);

                  sel_cnt = 0;

                  // 선택한 숫자 이미지 clear하기
                  $('#s0').attr('src', '');
                  $('#s1').attr('src', '');
                  $('#s2').attr('src', '');
                  $('#s3').attr('src', '');
                  $('#s4').attr('src', '');
                  $('#s5').attr('src', '');
                  $('#s6').attr('src', '');
                  $('#s7').attr('src', '');
                  $('#s8').attr('src', '');
                  $('#s9').attr('src', '');

                  selected_num.splice(0, selected_num.length); // 배열 비우기
                  sel_num.splice(0, sel_num.length); // 배열 비우기

                  // 취소됐는지 콘솔에서 확인
                  console.log("selected_num[] : " + selected_num);
                  console.log("sel_cnt : " + sel_cnt);

                  $('#1').attr("src",
                      $('#1').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#2').attr("src",
                      $('#2').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#3').attr("src",
                      $('#3').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#4').attr("src",
                      $('#4').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#5').attr("src",
                      $('#5').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#6').attr("src",
                      $('#6').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#7').attr("src",
                      $('#7').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#8').attr("src",
                      $('#8').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#9').attr("src",
                      $('#9').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#10').attr("src",
                      $('#10').attr("src").replace(/on\.gif$/, 'off.gif'));

                  $('#11').attr("src",
                      $('#11').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#12').attr("src",
                      $('#12').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#13').attr("src",
                      $('#13').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#14').attr("src",
                      $('#14').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#15').attr("src",
                      $('#15').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#16').attr("src",
                      $('#16').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#17').attr("src",
                      $('#17').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#18').attr("src",
                      $('#18').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#19').attr("src",
                      $('#19').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#20').attr("src",
                      $('#20').attr("src").replace(/on\.gif$/, 'off.gif'));

                  $('#21').attr("src",
                      $('#21').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#22').attr("src",
                      $('#22').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#23').attr("src",
                      $('#23').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#24').attr("src",
                      $('#24').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#25').attr("src",
                      $('#25').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#26').attr("src",
                      $('#26').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#27').attr("src",
                      $('#27').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#28').attr("src",
                      $('#28').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#29').attr("src",
                      $('#29').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#30').attr("src",
                      $('#30').attr("src").replace(/on\.gif$/, 'off.gif'));

                  $('#31').attr("src",
                      $('#31').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#32').attr("src",
                      $('#32').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#33').attr("src",
                      $('#33').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#34').attr("src",
                      $('#34').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#35').attr("src",
                      $('#35').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#36').attr("src",
                      $('#36').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#37').attr("src",
                      $('#37').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#38').attr("src",
                      $('#38').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#39').attr("src",
                      $('#39').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#40').attr("src",
                      $('#40').attr("src").replace(/on\.gif$/, 'off.gif'));

                  $('#41').attr("src",
                      $('#41').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#42').attr("src",
                      $('#42').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#43').attr("src",
                      $('#43').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#44').attr("src",
                      $('#44').attr("src").replace(/on\.gif$/, 'off.gif'));
                  $('#45').attr("src",
                      $('#45').attr("src").replace(/on\.gif$/, 'off.gif'));

                }

              }); //btn_cancel

          $('#btn_select').on(
              { //선택 버튼
                click : function() {

                  if (sel_cnt >= 1) {

                    console.log("#btn_select의 selected_num 배열 값 확인 : "
                        + selected_num); //배열 확인
                    jQuery.ajaxSettings.traditional = true;

                    // MainController에서 가져온 testList2 를 myList에 담는 과정 
                    var bestLottoNumber = [];
                    <c:forEach var="vo" items="${testList2 }">
                    bestLottoNumber.push('${vo.hit_number }');
                    </c:forEach>

                    console.log("#btn_select의 bestLottoNumber 배열 값 확인 : "
                        + bestLottoNumber); //배열 확인           

                    $(document).ready(function() {
                      $.ajax({
                        url : '../main/analysis3',
                        type : 'get',
                        headers : {
                          'Content-Type' : 'application/json',
                          'X-HTTP-Method-Override' : 'get'
                        },
                        dataType : 'text',
                        data : {
                          'selected_num' : selected_num,
                          'bestLottoNumber' : bestLottoNumber
                        },
                        success : function(result) {
                          console.log("result 여기에도 뭐가 있나 ?" + result);
                          output5 = $('#output5').html(result)
                        },
                        error : function(error) {
                          alert('접속량이 많습니다. 잠시후 다시 눌러주세요')
                        }
                      });//ajax

                    }); // end ready            

                  } else {
                    alert('1개 이상을 선택해주시거나 베스트 로또 번호 선택을 눌러주십시오')
                  } // end if 문

                } // end click
              });//btn_select

          // btn_best_auto_choice 클릭시 베스트 번호로 로또 번호 만들기 테스트 중

          $('#btn_best_auto_choice').on(
              { //선택 버튼
                click : function() {

                  jQuery.ajaxSettings.traditional = true;
                  var selected_num = [ 10, 20, 30, 40, 50, 60, 70, 80 ];

                  // MainController에서 가져온 testList2 를 myList에 담는 과정 
                  var bestLottoNumber = [];
                  <c:forEach var="vo" items="${testList2 }">
                  bestLottoNumber.push('${vo.hit_number }');
                  </c:forEach>

                  console.log("#btn_select의 bestLottoNumber 배열 값 확인 : "
                      + bestLottoNumber); //배열 확인           

                  $(document).ready(function() {
                    $.ajax({
                      url : '../main/analysis3',
                      type : 'get',
                      cache : false,
                      dataType : 'text',
                      data : {
                        'selected_num' : selected_num,
                        'bestLottoNumber' : bestLottoNumber
                      },
                      success : function(result) {
                        output5 = $('#output5').html(result)
                      },
                      error : function(error) {
                        console.log("에러 뭔데 ? : " + error);
                        alert('접속량이 많습니다. 잠시후 다시 눌러주세요')
                      }

                    });//ajax

                  }); // end ready            

                } // end click
              });//btn_select

          /////////////////////////////////////////////////////////// 여기 부터 내 코드

          function onLottocreateBtn() {
            console.log("in onLottocreateBtn()");
            console.log("onlyNumber : " + '${onlyNumber }');
            console.log("numlist : " + '${numlist }');
            console.log("testList2 : " + '${testList2 }');
            console.log("testnumlist : " + '${testnumlist }');
            console.log('typeof test : ' + typeof (onlyNumber));

            var onlyNumber = "${onlyNumber }"

            console.log('typeof test : ' + typeof (onlyNumber));

            console.log('test : ' + onlyNumber);

            var numlist = "${numlist}"

            // MainController에서 가져온 testList2 를 myList에 담는 과정 
            var bestLottoNumber = [];
            <c:forEach var="vo" items="${testList2 }">
            bestLottoNumber.push('${vo.hit_number }');
            </c:forEach>

            for (var i = 0; i < 4; i++) {
              bestLottoNumber.pop();
            }

            console.log('bestLottoNumber : ' + bestLottoNumber);

            console.log("onlyNumber2 : " + onlyNumber);

            var testNumber = [ '110', '202', '303' ];
            console.log("testNumber : " + testNumber);

            $(document).ready(function() {

              $.ajax({
                type : 'get',
                url : '../main/analysis3',
                headers : {
                  'Content-Type' : 'application/json',
                  'X-HTTP-Method-Override' : 'get'
                },
                data : {
                  'name' : testNumber,
                  'testonlyNumber' : onlyNumber,
                  'testnumlist' : numlist
                },

                error : function(error) {
                  alert('값이 넘어 가질 못했습니다.')
                },
                success : function(result) {
                  alert('ajax가 정상적으로 실행 되었습니다.')
                } // end success

              }); // end ajax

            });// end ready

          } // end onLottocreateBtn
        </script>
</body>
</html>