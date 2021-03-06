<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../dropbar.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.list_text_common {
text-align: left;
}

td {
height: 40px;
color:gray;
}

th {
background-color:#f5f5f5;
height:60px;
}

td, th{
border:0.5px solid gray;
}

table {
text-align:center;
}

.contentsArticle {
text-align:center;
}
</style>
</head>
<body>
<div class="left_content">
 <%@ include file="../leftside.jsp"%>
</div>
<div class="content_wrap" style="position:relative">
   <div style="width: 1200px; height: 700px; overflow: auto; overflow-x: hidden; overflow-y: auto; 
                                 scrollbar-highlight-color: #CCCCCC; scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                                 scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
   
   <div id="article" class="contentsArticle">
    <div class="header_article" style="text-align:center; font-size:20px;">
      <h3 class="sub_title" >당첨금 지급안내</h3><hr><hr>
    </div>
    <div>
          <div class="group_title">
            <h4 class="title">당첨금 지급장소 안내</h4>
          </div>
           
          <table class="tbl_data" style="margin:auto;">
            <caption>당첨금액별 지급장소 및 준비물 안내</caption>
            <colgroup>
              <col>
              <col style="width:195px">
              <col style="width:195px">
              <col style="width:195px">
              <col style="width:195px">
            </colgroup>
            <thead>
              <tr>
                <th scope="col" rowspan="2" width="150px">당첨금</th>
                <th scope="col" colspan="2">지급장소</th>
                <th scope="col" colspan="2">준비물</th>
              </tr>
              <tr>
                <th scope="col">판매점 구입</th>
                <th scope="col">인터넷 구입</th>
                <th scope="col">판매점 구입</th>
                <th scope="col">인터넷 구입</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1등</td>
                <td colspan="2">농협은행 본점</td>
                <td>당첨복권, 신분증</td>
                <td>당첨복권번호, 신분증</td>
              </tr>
              <tr>
                <td>2등, 3등</td>
                <td colspan="2">농협은행 각 지점</td>
                <td>당첨복권, 신분증</td>
                <td>당첨복권번호, 신분증</td>
              </tr>
              <tr>
                <td>4등, 5등</td>
                <td>일반판매점과<br>농협은행 각 지점</td>
                <td>동행복권 사이트</td>
                <td>당첨복권</td>
                <td>예치금 계좌 자동 지급</td>
              </tr>
            </tbody>
          </table>
          <div class="guide_btn_area">
            <ul class="list_text_common">
              <li>당첨금은 농협은행 영업점에서만 지급받으실 수 있습니다. (지역농·축협 제외)</li>
              <li>로또 복권 당첨금 지급업무 미처리 영업점 안내 : 기업금융지점, 대기업RM센터</li>
              <li><strong>인터넷 구입 시, 1등/2등/3등이 당첨된 경우 고액당첨내역 페이지에서 실명확인 후, 복권번호와 신분증을 지참하여 농협은행을 방문하시면 됩니다.</strong></li>
              <li><strong>인터넷 구입 시, 4등과 5등이 당첨된 경우 추첨일 기준 다음날 06:00시부터 예치금 계좌로 자동 지급됩니다.</strong></li>
              <li>예치금은 고객 요청에 따라 본인 명의의 금융계좌로 지급 가능합니다.</li>
            </ul>
          </div>
        </div>
          

        <div class="group_content">
          <div class="group_title">
            <h4 class="title">농협은행 본점안내</h4>
          </div>
          <div class="map">
            <img src="/lotto/resources/sel_image/img_bank_map.jpg">
          </div>
          <div class="inner">
             <img src="/lotto/resources/sel_image/map.png" style="width:900px;">
          </div>
        </div>
      </div>
      <div class="group_content">
         <div class="group_title" style="text-align:center;" >
            <h4 class="title">지급기한 및 기타안내</h4>
         </div>
         <table class="tbl_data" style="margin:auto;">
            <caption>지급 기한, 지급 방법, 지급 제한 등의 안내정보</caption>
            <colgroup>
              <col style="width:110px">
              <col>
            </colgroup>
            <tbody>
              <tr>                
                <th scope="row">지급 기한</th>              
                <td>
                  <ul class="list_text_common">
                    <li>지급기한은 해당 <strong>회차 지급개시일로부터 1년까지</strong>입니다.</li>
                    <li>지급기한일이 공휴일 또는 토, 일요일인 경우 익 영업일(은행 영업 기준)에 청구가 가능합니다. </li>
                    <li>지급기한일 초과 시 당첨자가 미수령한 당첨금액은 복권기금으로 귀속됩니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>                
                <th scope="row">지급 방법</th>              
                <td>
                  <ul class="list_text_common">
                    <li>당첨금 지급은 일시불로 지급됩니다.</li>
                    <li>3등 이상의 당첨금은 농협은행에서 당첨자 인적사항을 확인하고 제세금을 원천징수 공제한 후 지급합니다.</li>
                    <li>제세금 등록을 위하여 신원을 확인할 실명확인증표를 지참하시고 당첨금을 청구하여야 합니다.</li>
                    <li>4등, 5등 당첨금은 인터넷 구매인 경우 예치금으로, 판매점 구매인 경우 현금 지급요청 시 현금으로 지급됩니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>                
                <th scope="row">지급 제한</th>              
                <td>
                  <ul class="list_text_common">
                    <li>복권을 분실하였을 경우 당첨금 지급이 불가능합니다.</li>
                    <li>복권이 훼손된 경우 <strong>복권의 1/2이상 원형이 보존되고 컴퓨터 인식이 가능</strong>한 복권에 한하여 당첨금을 지급합니다.</li>
                    <li><strong>당첨자가 청소년(만 19세 미만)일 경우 당첨금 지급이 불가</strong>합니다.</li>
                  </ul>
                </td>
              </tr>
            </tbody>
          </table>
                              <br><br>
          </div>
      </div>
    </div>

  

</body>
<footer>
  <%@ include file="../footer.jsp"%>
</footer>
</html>