<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
 
<%@ include file="../dropbar.jsp"%>
  
<style type="text/css">

table {
	border-collapse: collapse;
	line-height: 1.5;
	margin: 20px 10px;
	text-align: center;
}

th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	text-align: center;
	border: 1px solid #ccc;
}

td {
	width: 250px;
	padding: 10px;
	vertical-align: middle;
	border: 1px solid #ccc;
}

.hitlist .pagination li {
list-style:none;
display:inline-block;

}

.hitlist .pagination li a{
text-decoration: none;
color:gray;
font-size: 25px;
font-weight:bold;
letter-spacing: 20px;
}
 
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
    margin-left: 20px;
}

.leftmenu{
display : inline-block;
float: left;
left : 5px;



td {
   width: 250px;
   padding: 10px;
   vertical-align: middle;
   border: 1px solid #ccc;
   text-align: center;
}


</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>회차 정보 리스트</title>

</head>
<body>
<div class="left_content">
<%@ include file="../leftside.jsp"%>
</div>

<div class="content_wrap">
<!-- 	<h1>회차별 당첨 번호 페이지 리스트.</h1> -->
    
	<br>
  <div class="hitlist">
  <div style="width: 1200px; height: 700px; overflow: auto; overflow-x: hidden; overflow-y: auto; 
                               scrollbar-highlight-color: #CCCCCC; scrollbar-shadow-color: #CCCCCC; scrollbar-arrow-color: #CCCCCC; scrollbar-face-color: #FFFFFF; 
                               scrollbar-3dlight-color: #FFFFFF; scrollbar-darkshadow-color: #FFFFFF; scrollbar-track-color: #f7f7f7;">
                            
	<table>
		<thead>
			<tr>
				<th style="width: 10px">회차</th>
				<th style="width: 1000px">당첨번호</th>
				<th style="width: 100px">보너스</th>

			</tr>

		</thead>

		<tbody>
			<c:forEach var="vo" items="${testList }">
				<tr>
					<td>${vo.hit_ep }</td>
					<td><div class="loto_img">
							<div style="background-color: #ff99cc;">${vo.hit_number1 }</div>
							<div style="background-color: #66ccff;">${vo.hit_number2 }</div>
							<div style="background-color: #99cc00;">${vo.hit_number3 }</div>
							<div style="background-color: #99cc00;">${vo.hit_number4 }</div>
							<div style="background-color: #5882FA;">${vo.hit_number5 }</div>
							<div style="background-color: #FACC2E;">${vo.hit_number6 }</div>
							
						</div></td>
					<td><div class="loto_img">
							<div style="background-color: #FA5858;">${vo.hit_bouns }</div>
						</div></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
  <ul class="pagination">
      <c:if test="${pageMaker.hasPrev }">
         <li><a href="${pageMaker.startPageNo - 1 }">이전</a></li>
      </c:if>
      <c:forEach begin="${pageMaker.startPageNo }"
         end="${pageMaker.endPageNo }" var="num">
         <li><a href="${num }">${num }</a></li>
      </c:forEach>

      <c:if test="${pageMaker.hasNext }">
         <li><a href="${pageMaker.endPageNo + 1 }">다음</a></li>
      </c:if>
   </ul>
   <form id="pagingForm" style="display: none;">
      <input type="text" name="page" value="${pageMaker.criteria.page }" />
      <input type="text" name="perPage"
         value="${pageMaker.criteria.numsPerPage }" /> <input type="text"
         name="hit_ep" />

   </form>

   <script type="text/javascript">
      $('.pagination li a').click(function() {
         event.preventDefault();
         var targetPage = $(this).attr('href');
         var frm = $('#pagingForm');
         frm.attr('action', 'selectlist');
         frm.attr('method', 'get');
         frm.find('[name="page"]').val(targetPage);
         frm.submit();
      });

   </script>
         <br>
   </div><!-- div class="hitlist" -->
</div>
</div> <!-- content_wrap -->
</body>
<footer>
 <%@ include file="../footer.jsp" %>
</footer>
</html>