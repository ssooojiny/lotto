<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../dropbar.jsp"%>
<style type="text/css">
#layer_result{
position:absolute;
top: 50%;
left: 30%;
}

.layerpop {
    z-index: 1000;
    border: 2px solid #ccc;
    background: #fff;

     }

.content{
  min-height: calc(100vh - 300px);
}

.ngcc{
  margin : auto;
  border-collapse: collapse;
  line-height: 1.5;
  position: static;
  right: 300px;
}

table.ngcc thead th{
   padding: 5px;
   font-weight: bold;
   vertical-align: top;
   color: #369;
   border-bottom: 2px solid #036;
   font-size: 13px;
   text-align: center;
}

table.ngcc td {
   padding: 10px;
   vertical-align: top;
   border-bottom: 1px solid #ccc;
}

</style>
<meta charset="UTF-8">
<title>복권중독예방</title>
</head>
<body>
<div class="left_content">
<%@ include file="../leftside.jsp"%>
</div>

<div class="content_wrap">
  <div class="content">
    <div style="width: 1200px; height: 700px; overflow: auto; overflow-x: hidden; overflow-y: auto; scrollbar-highlight-color: #CCCCCC; 
                               scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                               scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
    
    <table class="ngcc">
      <thead>
        <th style="font-size:25px; font-weight:bold;">자가진단 TEST</th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
      </thead>
      <tbody>
        <tr>
          <td style="text-align:center;">내  용</td>
          <td>전혀<br>아니다</td>
          <td>간혹<br>그렇다</td>
          <td>대체로<br>그렇다</td>
          <td>거의항상<br>그렇다</td>
        </tr>
        <tr>
          <td>1. 귀하는 도박에서 잃어도 크게 상관없는 금액 이상으로 도박을 한적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q1" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>2. 귀하는 종전과 같은 수준의 스릴을 느끼기 위해 점점 더 많은 돈을 걸어야 했던 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q2" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>3. 귀하는 도박으로 잃은 돈을 만회하기 위해 다른 날 다시 도박을 하신 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q3" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>4. 귀하는 도박 자금을 마련하기 위해 돈을 빌리거나 가지고 있던 물품을 팔았던 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q4" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>5. 귀하는 자신의 도박행귀가 문제가 될만한 수준이라고 느낀 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q5" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>6. 귀하는 도박으로 인해서 스트레스나 불안감 등의 건강문제가 발생 했던 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q6" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>7. 귀하에게 남들이 귀하의 도박행위를 비난하거나 도박으로 인한 문제가 있다고 말한적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q7" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>    
        <tr>
          <td>8. 귀하의 도박행위로 인해 본인이나 가정에 재정적인 문제가 발생한 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q8" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td>9. 귀하는 자신의 도박하는 방식이나 도박을 해서 발생한 일에 대해 죄책감을 느낀 적이 있습니까?</td>
          <c:forEach begin="0" step="1" varStatus="status" end="3">
            <td><input type="radio" class="overdose" name="q9" value="${status.index}">${status.index}</td>
          </c:forEach>
        </tr>
        <tr>
          <td style="text-align:center;"><button type="button" class="bttn-material-flat bttn-sm bttn-primary testTotal" 
                                                  id="testTotal">TEST 결과 보기</button></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr> 
      </tbody>             
    </table>
  <br>
    <div class="ngccim" style="position:static; width:200px; height:100px; padding-left:250px;">
            <img src="/lotto/resources/sel_image/ngcc.jpg" usemap="#Ngcc">
            <map name="Ngcc">
            <area shape="rect" coords="11, 249, 259, 305" href="https://www.ngcc.go.kr/">
            <area shape="rect" coords="375, 244, 628, 306" href="https://www.kcgp.or.kr/cr/areaCnter/2/areaCnter.do">
            </map>
      </div>        
    </div>
  </div>
</div>

<!-- 점수에 따라 다른 이미지를 팝업으로 띄울 div -->
<div class="layerpop">
  <img src="#" id="layer_result" style="display: none;" usemap="#closeLayer" >
  <map name="closeLayer">
    <area shape="rect" coords="442,25,462,45" onclick="popupClose()" style="cursor:pointer;">
  </map>
</div>

<script type="text/javascript">

function popupClose() {
  $('#layer_result').hide();
  console.log($('input:radio[name="q1"]').attr("checked"));
}

 	$('#testTotal').on({	// 클릭시 합 구해서 점수에 따른 결과 보여주기
	  click : function(){
		var score = new Array();
		var totalScore = 0;
		var layer_name = '';
		
 		for(var i = 1 ; i <= 9; i++){
		  var oneScore = $('input[name="q'+i+'"]:checked').val();
		  console.log('['+i+'] : ' + oneScore);
		  if(oneScore != null){
		    score.push(parseInt(oneScore));
		  }
		}
		console.log(score); 
		
		for(var j = 0 ; j <score.length; j++){
		   totalScore += score[j];
		}
		console.log('totalScore : ' + totalScore);
		
		 switch(totalScore){
		 case 0:
		   layer_name = 'test_layer_01';
		   break;
		 case 1:
		 case 2:
		   layer_name = 'test_layer_02';
		   break;
		 case 3:
		 case 4:
		 case 5:
		 case 6:
		 case 7:
		   layer_name = 'test_layer_03';
		   break;
		 default : 
		   layer_name = 'test_layer_04';
		   break;
		 }
 	 $('#layer_result').attr('src','/lotto/resources/sel_image/'+ layer_name +'.jpg').fadeIn();
 	 
 	 var radio_checked = document.getElementById('que');
 	 for(var i=1; i<radio_checked.lenght; i++){
 	   console.log(radio_checked[i]);
 	 }

	  }
	}); 
</script>

</body>
<footer>
 <%@ include file="../footer.jsp" %>
</footer>
</html>