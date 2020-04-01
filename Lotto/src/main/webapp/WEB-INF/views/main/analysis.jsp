<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../dropbar.jsp"%>
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
  float: left
}

#title {
  background-color: #6688CC;
}


</style>
<meta charset="UTF-8">
<title>analysis 페이지</title>
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
    <div style="width: 450px; text-align: center; color: white;" >
    <h1 id="title">가장 많이 나온 로또 번호</h1>
    </div>
    <hr>
    <table>
      <tr>
        <th style="width: 1000px">가장 많이 나온 번호</th>
      </tr>
      <tr>
        <td valign="top"><select id="hit_select_number_choice"
          name="hit_select_number_choice">
            <option value="1">최근 몇 회로 검색 하시겠습니까?</option>
            <option value="25">25회</option>
            <option value="50">50회</option>
            <option value="100">100회</option>
            <option value="200">200회</option>
            <option value="400">400회</option>
            <option value="800">800회</option>
            <option value="10000">전체 조회</option>
        </select></td>
      </tr>
    </table>
    <hr>
  
    <!-- select 값을 받아서 출력 하는 부분 -->
    <div id="main">
    <div id="output5">체크박스 값 출력되는 부분</div>
    <hr>
    <div id="output2">선택 회차 만큼 가장 많은 선택을 받은 부분</div>
    <hr>
    </div>
  
  
  
    <div style="width: 450px; text-align: center; color: white;" >
    <h1 id="title">가장 적게 나온 로또 번호</h1>
    </div>
    <hr>
    <div class="box">
    <table>
      <tr>
        <th style="width: 1000px">가장 적게 나온 번호</th>
      </tr>
      <tr>
        <td valgn="top"><select id="low_hit_select_number_choice"
          name="low_hit_select_number_choice">
            <option value="1">최근 몇 회로 검색 하시겠습니까?</option>
            <option value="25">25회</option>
            <option value="50">50회</option>
            <option value="100">100회</option>
            <option value="200">200회</option>
            <option value="400">400회</option>
            <option value="800">800회</option>
            <option value="10000">전체 조회</option>
        </select></td>
      </tr>
    </table>
    </div>
    <hr>
    <!-- select 값을 받아서 출력 하는 부분 -->
    <div id="output3">체크박스 값 출력되는 부분</div>
    <hr>
    <div id="output4">선택 회차 만큼 가장 적은 선택을 받은 부분 </div></div></div>
  
  <!-- select 값을 받아서 div id:output에 출력 할 수 있도록 도와주는 함수 -->
  <script type="text/javascript">
      // id : hit_select_number_choice 값이 변화가 생기면 onSelectChange 함수를 실행해라
      $("#hit_select_number_choice").change(onSelectChange);
      $("#low_hit_select_number_choice").change(onSelectChangelow);

      // onSelectChange 함수
      function onSelectChange() {
        // console.log 함수 실행되는지 체크하기 위해서 찍은 로그
        console.log("in onSelectChange()");
        // hit_select_number_choice 변수에 hit_select_number_choice 옵션에서 선택한 값을 담어라
        var hit_select_number_choice = $("#hit_select_number_choice option:selected");
        console.log(hit_select_number_choice.val());
        var output5 = "";
        if (hit_select_number_choice.val() != 0) {
          output5 = "<table><tr><td>" + hit_select_number_choice.text()
              + "를 선택 하셨습니다. </td></tr></table>";
          // id output1 위치에 output1 에서 담은 내용을 출력해라
          $("#output5").html(output5);

          $(document).ready(function() {
            console.log("in ready analysis.jsp 파일()");
            // - $.ajax
            // - AJAX load 메소드를 바탕으로 간략화한 메소드
            // - 기본 형태
            //   $.ajax({name:value, name:value, ....});
            // - name으로 선택할 수 있는 요소
            //    type : GET or POST
            //   url : 경로
            //   data : 보낼 데이터 패키지
            //     success : 호출 성공시 호출될 내용
            $.ajax({
              //type : get 타입으로 전송
              type : 'get',
              // url : MainController.java value = /analysis1으로 내용을 전달
              url : '../main/analysis1', // .. <- 상위 폴더로 이동
              cache : false,
              headers : {
                'Content-Type' : 'application/json',
                'X-HTTP-Method-Override' : 'get'
              },
              // hit_select_number_choice 변수는 셀렉트 박스에서 선택한 값을 hit_select_number_choice 담어라
              data : {
                'hit_select_number_choice' : hit_select_number_choice.val(), // request parameter를 id로 지정해서 보냄
              },
              // dataType : text 변수 타입으로 데이터를 전달해라
              dataType : 'text', //데이타 타입
              error : function(error) {
                alert('값이 넘어가질 못했습니다.')
              },
              // result : MainController.java value = /analysis1에서 작성된 내용의 리턴값을 저장한 결과
              // 정상적으로 값을 전달 했을 경우 매개 변수로 받은 result 함수를 실행해라
              success : function(result) {
                // output2 변수에는 result에서 받아온 값을 출력해서 id : output2 이곳에 출력해라
                console.log("analysis.jsp의 result는 뭔데 ? : " + result);
                output2 = $('#output2').html(result);
              } // end success()
            }); // end axax()

          }); // end ready()

        } // end if
      } // end onSelectChange  

      // onSelectChangelow 함수
      function onSelectChangelow() {
        // console.log 함수 실행되는지 체크하기 위해서 찍은 로그
        console.log("in onSelectChangelow()");
        // hit_select_number_choice 변수에 hit_select_number_choice 옵션에서 선택한 값을 담어라
        var low_hit_select_number_choice = $("#low_hit_select_number_choice option:selected");
        console.log("low_hit_select_number_choice의 현재 값 : "
            + low_hit_select_number_choice.val());
        var output3 = "";
        console.log("이게 뭔데 ? : " + low_hit_select_number_choice.text());
        console.log("output3은 또 뭔데 ?  : " + output3);
        
        if (low_hit_select_number_choice.val() != 0) {
          output3 = "<table><tr><td>" + low_hit_select_number_choice.text()
              + "를 선택하셨습니다. </td></tr></table>";
          // id output1 위치에 output1 에서 담은 내용을 출력해라
          $("#output3").html(output3);
          

          $(document)
              .ready(
                  function() {
                    console.log("in low ready analysis.jsp 파일()");
                    // - $.ajax
                    // - AJAX load 메소드를 바탕으로 간략화한 메소드
                    // - 기본 형태
                    //   $.ajax({name:value, name:value, ....});
                    // - name으로 선택할 수 있는 요소
                    //   type : GET or POST
                    //   url : 경로
                    //   data : 보낼 데이터 패키지
                    //   success : 호출 성공시 호출될 내용
                    $.ajax({
                          //type : get 타입으로 전송
                          type : 'get',
                          // url : MainController.java value = /analysis1으로 내용을 전달
                          url : '../main/analysis2', // .. <- 상위 폴더로 이동
                          cache : false,
                          headers : {
                            'Content-Type' : 'application/json',
                            'X-HTTP-Method-Override' : 'get'
                          },
                          // hit_select_number_choice 변수는 셀렉트 박스에서 선택한 값을 hit_select_number_choice 담어라
                          data : {
                            'low_hit_select_number_choice' : low_hit_select_number_choice
                                .val(), // request parameter를 id로 지정해서 보냄
                          },
                          // dataType : text 변수 타입으로 데이터를 전달해라
                          dataType : 'text', //데이타 타입
                          error : function(error) {
                            
                            alert('low_hit_select_number_choice 값이 넘어가질 못했습니다.')
                          },
                          // result : MainController.java value = /analysis1에서 작성된 내용의 리턴값을 저장한 결과
                          // 정상적으로 값을 전달 했을 경우 매개 변수로 받은 result 함수를 실행해라
                          success : function(result) {
                            // output2 변수에는 result에서 받아온 값을 출력해서 id : output2 이곳에 출력해라
                            console.log("로우 넘버 result 값에는 뭐있나 ? : " + result);
                            output4 = $('#output4').html(result);
                          } // end success()
                        }); // end axax()

                  }); // end ready()

        } // end if
      } // end onSelectChange
    </script>
</body>
</html>