<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="dropbar.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>

.left_content{
width:290px;
height:700px;
/* border: 1px solid black; */
float:left;
}

.content_wrap {
width:1200px;
height:700px;
float:left;
/* border: 1px solid black; */
}

table.lottotb_m {
   border-collapse: collapse;
   text-align: center;
   line-height: 1.5;
   position: static;
   right: 300px;
}

.lottotb_m thead th {
   padding: 5px;
   font-weight: bold;
   vertical-align: top;
   color: #369;
   border-bottom: 2px solid #036;
   font-size: 13px;
   text-align: center;
}

.lottotb_m tbody th {
   width: 50px;
   padding: 10px;
   font-weight: bold;
   vertical-align: top;
   border-bottom: 1px solid #ccc;
   background: #f3f6f7;
   text-align: center;
   font-size: 13px;
}

.lottotb_m td {
   width: 400px;
   padding: 20px;
   vertical-align: middle;
   text-align: center;
}

.lotto_img div {
   height: 80px;
   width: 80px;
   font-family: tahoma;
   font-size: 30px;
   color: #fff;
   text-align: center;
   font-weight: bold;
   float: left;

}

.won div {/*  */
   position: static;
   float: left;

}

.won .pointer {
width: 500px;
}

.won ul {
   background-color: transparent !important;
   list-style: none;
   margin: 0;
   padding: 0;
   font-weight: bold;
   font-size: 50px;
}

.won li{
   display:inline-block;
   padding-top:20px;

}

.won a{
text-decoration: none;
}

.won img{
width:80px;
height:80px;
}

.tbl_data {
width: 100%;
}

.tbl_data td{
border:1px solid #f5f5f5;
text-align: right;
height:50px;
}

.tbl_data th{
background-color: #f5f5f5;
height:40px;
border:1px solid #f5f5f5;
}


</style>
</head>
<body>
<div class="left_content">
 <%@ include file="leftside.jsp"%>
</div> 

<div class="content_wrap">
<div class="content" style="position: relative;">
  <div class="won_wrap" style="width:900px; padding-left:150px; display: inline-block;">
      <div class="won" style="width:800px; padding-left: 50px; border-radius:15px;"><!-- style="position: absolute; left:30px;" -->
         <div class="w_pointer">
            <ul class="w_Previous">
               <c:forEach begin="${listMaker2.startPageNo }" end="${listMaker2.endPageNo }" var="num">
                  <li><a href="${num }" style="visibility: hidden;">${num }</a></li>
               </c:forEach>
               <c:if test="${listMaker2.hasNext }">
                  <li style="padding-right:50px;" ><a href="${listMaker2.endPageNo + 1 }" class="previous round"><!-- &#8249; --><img src="/lotto/resources/sel_image/Lpointer.jpg"></a></li>
               </c:if>
                <c:forEach var="vo" items="${won_list }">
                  <li style="font-size:40px;"><span style="">${vo.ep }</span>회 당첨 결과</li>
                </c:forEach>
               <c:if test="${listMaker2.hasPrev }">
                  <li><a href="${listMaker2.startPageNo - 1 }" class="next round" style="padding-left:50px;"><!-- &#8250; --><img src="/lotto/resources/sel_image/Rpointer.png"></a></li>
               </c:if>
            </ul>
         </div>
         <br> <br> <br> <br>
         <table class="lottotb_m" style="width:800px; height:200px;">
            <tbody>
               <c:forEach var="vo" items="${won_list }">
                  <tr>
                     <td >
                        <div class="lotto_img">
                           <div style="background-color: #00BFFF; border-radius:50%;">${vo.hit1 }</div>
                           <div style="background-color: #FA8258; border-radius:50%">${vo.hit2 }</div>
                           <div style="background-color: #99cc00; border-radius:50%">${vo.hit3 }</div>
                           <div style="background-color: #D0A9F5; border-radius:50%">${vo.hit4 }</div>
                           <div style="background-color: #5882FA; border-radius:50%">${vo.hit5 }</div>
                           <div style="background-color: #58ACFA; border-radius:50%">${vo.hit6 }</div>
                           <div style="background-color: #FFFFFF; color: #000000;">+</div>
                           <div style="background-color: #FFBF00; border-radius:50%">${vo.hit_b }</div>
                        </div>
                     </td>

                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
    
    
    <table class="tbl_data">
    <c:forEach var="vo" items="${won_list }">
           <colgroup>
            <col style="width: 100px">
            <col style="width: 200px">
            <col style="width: 170px">
            <col style="width: 200px">
            <col>
            <col style="width: 300px">
          </colgroup> 
          <thead>
            <tr>
              <th scope="col" style="text-align:center;">순위</th>
              <th scope="col">등위별 총 당첨금액</th>
              <th scope="col">당첨자 수</th>
              <th scope="col">1게임당 당첨금액</th>
              <th scope="col" style="text-align:center;">당첨기준</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td style="text-align:center;">1등</td>
              <td class="tar" ><fmt:formatNumber value="${vo.won_mo1 }" pattern="#,###" />원</td>
              <td>${vo.won_pe1 }명</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo1 * vo.won_pe1 }" pattern="#,###" />원</td>
              <td class="nobd_right">당첨번호 6개 숫자일치<br> <br></td>
            </tr>
            <tr>
              <td style="text-align:center;">2등</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo2 }" pattern="#,###" />원</td>
              <td>${vo.won_pe2 }명</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo2 * vo.won_pe2 }" pattern="#,###" />원</td>
              <td class="nobd_right">당첨번호 5개 숫자일치<br>+ 보너스 숫자일치</td>
            </tr>
            <tr>
              <td style="text-align:center;">3등</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo3 }" pattern="#,###" />원</td>
              <td>${vo.won_pe3 }명</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo3 * vo.won_pe3 }" pattern="#,###" />원</td>
              <td class="nobd_right">당첨번호 5개 숫자일치</td>
            </tr>
            <tr>
              <td style="text-align:center;">4등</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo4 }" pattern="#,###" />원</td>
              <td>${vo.won_pe4 }명</td>
              <td class="tar">50,000원</td>
              <td class="nobd_right">당첨번호 4개 숫자일치</td>
            </tr>
            <tr>
              <td style="text-align:center;">5등</td>
              <td class="tar"><fmt:formatNumber value="${vo.won_mo5 }" pattern="#,###" />원</td>
              <td>${vo.won_pe5 }명</td>
              <td class="tar">5,000원</td>
              <td class="nobd_right">당첨번호 3개 숫자일치</td>
            </tr>
            </tbody>
       </c:forEach>
        </table>
        <ul class="list_text_common">
          <li style="list-style:none;">당첨금 지급기한 : 지급개시일로부터 1년 (휴일인 경우 익영업일)</li>
        </ul>
      </div>
</div>
</div>

      <form id="pagingForm_m" style="display: none;">
      <input type="text" name="page" value="${listMaker2.listcriteria.page }" />
      <input type="text" name="perPage" value="${listMaker2.listcriteria.viewlistone }" /> 
      <input type="text" name="ep" />
   </form>
<script type="text/javascript">
	
  $('.w_Previous  li a').click(function() {
    event.preventDefault();
    var targetPage = $(this).attr('href');
    var frm = $('#pagingForm_m');
    frm.attr('action', '');
    frm.attr('method', 'get');
    frm.find('[name="page"]').val(targetPage);
    frm.submit();
 });
  

</script>
</body>
<footer>
  <%@ include file="footer.jsp"%>
</footer>
</html>