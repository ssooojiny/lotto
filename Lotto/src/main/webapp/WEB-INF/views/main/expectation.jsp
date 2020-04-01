<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../dropbar.jsp"%>

<style type="text/css">

</style>
<meta charset="UTF-8">
<title>1등예상</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
 <div class="left_content">
 <%@ include file="../leftside.jsp"%>
 </div>
 <div class="content_wrap">
   <div style="width: 1200px; height: 700px; overflow: auto; overflow-x: hidden; overflow-y: auto; 
                               scrollbar-highlight-color: #CCCCCC; scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                               scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
    <div class="content">
      <div class="centermenu">
        <table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
          <tbody>
            <tr>
              <td><img src="/lotto/resources/image/banner.png" width="750px" height="300px" id="banner"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td valign="top">
                        <div
                          style="float: left; width: 216p; padding: 0px; margin: 0px;">
                          <table border="0" cellpadding="0" cellspacing="0"
                            width="100%">
                            <tbody>
                              <tr height="30">
                                <td height="60" colspan="3" align="center"
                                  background="/lotto/resources/image/green_b_top.gif"
                                  class="poll_txt1">예상번호<br> <span
                                  class="poll_txt2">실시간 투표 참여하기</span>
                                </td>
                              </tr>
                              <tr valign="bottom">
                                <td bgcolor="#8AC877" style="width: 4px"></td>
                                <td align="center">
                                  <table cellpadding="0" cellspacing="0"width="90%" border="0">
                                    <tbody>
                                      <tr height="24">
                                        <td height="34"><fontcolor="000000"><strong>번호를 선택하세요</strong></font></td>
                                      </tr>
                                      <tr height="223" valign="top">
                                        <td>
                                          <table cellpadding="0"cellspacing="0" width="100%">
                                            <tbody>
                                              <tr height="5">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_1_off.gif" style="cursor: pointer;" id="1"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_2_off.gif" style="cursor: pointer;" id="2"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_3_off.gif" style="cursor: pointer;" id="3"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_4_off.gif" style="cursor: pointer;" id="4"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_5_off.gif" style="cursor: pointer;" id="5"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_6_off.gif" style="cursor: pointer;" id="6"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_7_off.gif" style="cursor: pointer;" id="7"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_8_off.gif" style="cursor: pointer;" id="8"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_9_off.gif" style="cursor: pointer;" id="9"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_10_off.gif" style="cursor: pointer;" id="10"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
      
                                              <!-- 11부터 20 -->
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_11_off.gif" style="cursor: pointer;" id="11"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_12_off.gif" style="cursor: pointer;" id="12"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_13_off.gif" style="cursor: pointer;" id="13"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_14_off.gif" style="cursor: pointer;" id="14"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_15_off.gif" style="cursor: pointer;" id="15"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_16_off.gif" style="cursor: pointer;" id="16"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_17_off.gif" style="cursor: pointer;" id="17"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_18_off.gif" style="cursor: pointer;" id="18"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_19_off.gif" style="cursor: pointer;" id="19"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_20_off.gif" style="cursor: pointer;" id="20"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
      
                                              <!-- 21부터 30 -->
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_21_off.gif" style="cursor: pointer;" id="21"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_22_off.gif" style="cursor: pointer;" id="22"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_23_off.gif" style="cursor: pointer;" id="23"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_24_off.gif" style="cursor: pointer;" id="24"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_25_off.gif" style="cursor: pointer;" id="25"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_26_off.gif" style="cursor: pointer;" id="26"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_27_off.gif" style="cursor: pointer;" id="27"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_28_off.gif" style="cursor: pointer;" id="28"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_29_off.gif" style="cursor: pointer;" id="29"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_30_off.gif" style="cursor: pointer;" id="30"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <!-- 31부터 45 -->
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_31_off.gif" style="cursor: pointer;" id="31"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_32_off.gif" style="cursor: pointer;" id="32"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_33_off.gif" style="cursor: pointer;" id="33"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_34_off.gif" style="cursor: pointer;" id="34"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_35_off.gif" style="cursor: pointer;" id="35"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_36_off.gif" style="cursor: pointer;" id="36"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_37_off.gif" style="cursor: pointer;" id="37"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_38_off.gif" style="cursor: pointer;" id="38"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_39_off.gif" style="cursor: pointer;" id="39"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_40_off.gif" style="cursor: pointer;" id="40"></td>
                                                <td width="5"></td>
                                              </tr>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_41_off.gif" style="cursor: pointer;" id="41"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_42_off.gif" style="cursor: pointer;" id="42"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_43_off.gif" style="cursor: pointer;" id="43"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_44_off.gif" style="cursor: pointer;" id="44"></td>
                                                <td width="5"></td>
                                                <td width="14"><img src="/lotto/resources/image/myfixed_num_45_off.gif" style="cursor: pointer;" id="45"></td>
                                                <td width="5"></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </td>
                                      </tr>
                                      <tr height="10">
                                        <td></td>
                                      </tr>
                                      <tr height="24">
                                        <td><b>선택번호 (최대10개) </b></td>
                                      </tr>
                                      <tr height="44" bgcolor="FFFFFF">
                                        <td align="center" valign="top"><table  width="90%" cellpadding="0" cellspacing="0" border="0">
                                            <tbody>
                                              <tr height="4">
                                                <td></td>
                                              </tr>
                                              <tr align="center" height="18">
                                                <td id="a_sel_0" width="20%" ></td>
                                                <td id="a_sel_1" width="20%" ></td>
                                                <td id="a_sel_2" width="20%" ></td>
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
                                          </table></td>
                                      </tr>
                                      <tr height="15">
                                        <td></td>
                                      </tr>
                                      <tr>
                                        <td align="center">
                                          <button type="button"  id="btn_cancel">선택취소</button>
                                          <button type="button" id="btn_select" >선택</button>
                                      </tr>
                                      <tr height="12">
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </td>
                                <td bgcolor="#8AC877" style="width: 4px"></td>
                              </tr>
                              <tr style="line-height: 0;">
                                <td colspan="3"><img src="/lotto/resources/image/green_b_bottom.gif"></td>
                              </tr>
                              <tr height="10">
                                <td></td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </td>
                      <td width="38">&nbsp;</td>
                      <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tbody>
                            <tr>
                              <td><table cellpadding="0" cellspacing="0" width="100%" border="0" class="table">
                                  <tbody>
                                    <tr>
                                      <th class="first" width="46">순위</th>
                                      <th width="46">번호</th>
                                      <th width="267">횟수</th>
      
                                    </tr>
                                  </tbody>
                                </table></td>
                            </tr>
                            <tr>
                              <td>
                                <div style="width: 501px; height: 580px; overflow: auto; overflow-x: hidden; overflow-y: auto; 
                                     scrollbar-highlight-color: #CCCCCC; scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                                     scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
                                  <table cellpadding="0" cellspacing="0" width="100%" border="0" class="table">
                                    <tbody>
                                      <c:forEach var="vo" items="${win_list }" begin="0" step="1" varStatus="status" end="45">
                                        <tr align="center" height="25">
                                          <td width="13%">${status.count}</td>
                                          <td width="13%"><img src="/lotto/resources/sel_image/${vo.lotto_number}.gif"></td>
                                          <td width="74%" class="ltd" align="left">
                                            <img src="/lotto/resources/sel_image/graph_head.gif"><img src="/lotto/resources/sel_image/graph.gif" height="8" width="${vo.choice_number * 10}"><img src="/lotto/resources/sel_image/graph_foot.gif">
                                            ${vo.choice_number }</td>
      
                                        </tr>
                                      </c:forEach>
                                    </tbody>
                                  </table>
                                </div>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
      
        </table>
      </div>
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

                click : function(e) { // 이미지 선택시 색 변하기, 배열에 추가하기, 선택숫자 이미지 띄우기

                  console.log("sel_cnt : " + sel_cnt);
                  var id = $(this).attr('id');
                  console.log("id : " + id);
                  var imgSrc = $(this).attr('src');
                  console.log("img src = " + imgSrc);
                  
                  if ($(this).attr("src").match('banner')||$(this).attr("src").match('green')||$(this).attr("src").match('sel_image')) {
                    return false;
                  }

                  if ($(this).attr("src").match('on')) {

                    /* document.getElementById("a_sel_"+ sel_cnt).innerHTML=''; */

                    sel_num.splice(sel_num.indexOf(imgSrc), 1);
                    selected_num.splice(selected_num.indexOf(id), 1); //배열에서 지우기

                    sel_cnt--;
                    $(this).attr("src", $(this).attr("src").replace(/on\.gif$/, 'off.gif'));

                  } else {
                    if (sel_cnt > 9) {
                      alert("10개이상 선택할 수 없습니다.")
                      return false;
                    } else {
                      sel_cnt++;

                      $(this).attr("src", $(this).attr("src").replace(/off\.gif$/, 'on.gif'));
                      var imgSrc = $(this).attr('src');

                      sel_num.push(imgSrc);
                      selected_num.push(id);

                    } 

                    /* document.getElementById("a_sel_"+ sel_cnt).innerHTML='<img src="' + $(this).attr('src') + '">'; */
                  }

                  for (var i = 0; i < sel_num.length; i++) {

                    console.log("배열[" + i + "] : " + sel_num[i]);
                    document.getElementById("a_sel_" + i).innerHTML = '<img src="' + sel_num[i] + '" id="s'+i+'">';
                    console.log("selected_num[" + i + "] : " + selected_num[i]);

                  }

                }// end click : function

              });

      $('#btn_cancel').on(
          {

            click : function() {

              console.log("배열 값 확인 : " + selected_num);

              sel_cnt = 0;

              // 선택한 숫자 이미지 clear하기
              $('#s0').attr('src', '');              $('#s1').attr('src', '');
              $('#s2').attr('src', '');              $('#s3').attr('src', '');
              $('#s4').attr('src', '');              $('#s5').attr('src', '');
              $('#s6').attr('src', '');              $('#s7').attr('src', '');
              $('#s8').attr('src', '');              $('#s9').attr('src', '');

              selected_num.splice(0, selected_num.length); // 배열 비우기
              sel_num.splice(0, sel_num.length); // 배열 비우기

              // 취소됐는지 콘솔에서 확인
              console.log("selected_num[] : " + selected_num);
              console.log("sel_cnt : " + sel_cnt);

              $('#1').attr("src", $('#1').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#2').attr("src", $('#2').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#3').attr("src", $('#3').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#4').attr("src", $('#4').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#5').attr("src", $('#5').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#6').attr("src", $('#6').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#7').attr("src", $('#7').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#8').attr("src", $('#8').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#9').attr("src", $('#9').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#10').attr("src", $('#10').attr("src").replace(/on\.gif$/, 'off.gif'));
              
              $('#11').attr("src", $('#11').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#12').attr("src", $('#12').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#13').attr("src", $('#13').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#14').attr("src", $('#14').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#15').attr("src", $('#15').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#16').attr("src", $('#16').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#17').attr("src", $('#17').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#18').attr("src", $('#18').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#19').attr("src", $('#19').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#20').attr("src", $('#20').attr("src").replace(/on\.gif$/, 'off.gif'));
              
              $('#21').attr("src", $('#21').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#22').attr("src", $('#22').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#23').attr("src", $('#23').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#24').attr("src", $('#24').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#25').attr("src", $('#25').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#26').attr("src", $('#26').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#27').attr("src", $('#27').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#28').attr("src", $('#28').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#29').attr("src", $('#29').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#30').attr("src", $('#30').attr("src").replace(/on\.gif$/, 'off.gif'));
              
              $('#31').attr("src", $('#31').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#32').attr("src", $('#32').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#33').attr("src", $('#33').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#34').attr("src", $('#34').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#35').attr("src", $('#35').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#36').attr("src", $('#36').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#37').attr("src", $('#37').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#38').attr("src", $('#38').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#39').attr("src", $('#39').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#40').attr("src", $('#40').attr("src").replace(/on\.gif$/, 'off.gif'));
              
              $('#41').attr("src", $('#41').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#42').attr("src", $('#42').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#43').attr("src", $('#43').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#44').attr("src", $('#44').attr("src").replace(/on\.gif$/, 'off.gif'));
              $('#45').attr("src", $('#45').attr("src").replace(/on\.gif$/, 'off.gif'));

            }

          }); //btn_cancel

      $('#btn_select').on({ //선택 버튼

        click : function() {

          console.log(selected_num); //배열 확인

          jQuery.ajaxSettings.traditional = true;

          if (sel_cnt < 6) {

            alert('6개 이상 선택하세요') // 숫자를 6개 이상 선택하도록함

          } else {

            $.ajax({
              url : 'selectednum',
              type : 'get',
              dataType : 'json',
              data : {
                'selected_num' : selected_num
              },
              /* success : function(data) {
                alert('success!');
              }, */
              complete : function(){
                alert('completed!');
                location.reload(true);
              }
            });//ajax

          }

        }
      });//btn_select
    </script>
    

</body>
<footer>
 <%@ include file="../footer.jsp" %>
</footer>

</html>