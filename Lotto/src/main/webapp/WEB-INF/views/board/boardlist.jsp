<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="../dropbar.jsp"%> 
<script src="https://code.jquery.com/jquery-3.4.1.min.js">
</script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<style>
 table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    margin: 0;
    padding: 0;
}
 th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
     width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
  #topMenu {            
                        height: 40px; 
                        width: 100%; 
                        azimuth: far-left;
                        min-height: inherit;
                        margin: 0;
                        padding: 0;
                }
                #topMenu ul li {     
                        height: 90%;       
                        list-style: square;
                        list-style-type: square;  
                        color: aqua;              
                        background-color: #2d2d2d; 
                        float:  left;               
                        line-height: 40px;        
                        text-align: inherit; 
                        margin: 0;
                        padding: 0;        
                }
                #topMenu .menuLink {                             
                        text-decoration:none;                
                        color: white;                           
                        display: block;                          
                        width: 640px;                             
                        font-size: 20px;                           
                        font-weight: lighter;                        
                        font-family: "Trebuchet MS", Dotum, Arial; 
                }
                #topMenu .menuLink:hover {            
                        color: red;                  
                        background-color: #4d4d4d;   
                }
                  .imge {
        position: relative;
        background-image: url("/lotto/resources/images/deadpool.jpg");                                                               
        height: 28vh;
        background-size: cover;
        margin: 0;
        padding: 0;
    }
 </style>
</head>
<body style="margin: 0; padding: 0;">
<div class="imge"  style="margin: 0; padding: 0;">
<div class="left_content">
 <%@ include file="../leftside.jsp"%>
</div> 
<h1>자유 로또방</h1>
<h5>진정 분석할 줄 아는 당신이 분석가입니다.</h5>
   <div>
   ${pageMaker.totalCount }개의 게시물이 있습니다.     /     현재 페이지 : ${pageMaker.criteria.page } 입니다.
  </div>
  </div>
<hr style="margin: 0; padding: 0;">
<ul style="text-align: right; margin: 0; padding: 0;">
      <a href="register" ><img alt="" src="/lotto/resources/images/btn_write.gif"></a>
</ul>
<hr style="margin: 0; padding: 0;">
<table>
  <thead>
  <tr>
   <th>글번호</th>
   <th>제목</th>
   <th>작성자</th>
   <th>작성시간</th>
  </tr>
    </thead>
  <tbody>
  <c:forEach var="vo" items="${boardList}" >
  <tr>
  <td>${vo.bno}</td>
   <td><a class="goToDetail" href="${vo.bno }">${vo.title}</a></td>
    <td>${vo.userid}</td>
    <fmt:formatDate  value="${vo.regdate }"
     pattern="yyyy-MM-dd HH:mm:ss"
      var="regdate" />
    <td>${regdate }</td>
  </tr>
  </c:forEach>
  </tbody>
</table>
  <br>
 <ul class="pagination">
    <c:if test="${pageMaker.criteria.page <= 1 }">
    <font size=2 color=black>처음</font>
    </c:if>
    <c:if test="${pageMaker.hasPrev }">
     <li> <a href="${pageMaker.startPageNo - 1 }"><img alt="" src="/lotto/resources/images/page_prev.gif"></a></li>
    </c:if>
    <c:forEach begin="${pageMaker.startPageNo }" end="${pageMaker.endPageNo }" var="num">
      <li><a href="${num }">${num }</a></li>
    </c:forEach>
    <c:if test="${pageMaker.hasNext }">
     <li><a href="${pageMaker.endPageNo + 1 }"><img alt="" src="/lotto/resources/images/page_next.gif"></a></li>
    </c:if>
  </ul>
  <form id="pagingForm" style="display: none;">
    <input type="text" name="page" value="${pageMaker.criteria.page }"/>
    <input type="text" name="perPage" value="${pageMaker.criteria.numsPerPage}"/>
    <input type="text" name="bno" />
  </form>
<script type="text/javascript">
$(document).ready(function(){
   $('.goToDetail').click(function(){  
      event.preventDefault(); // a 태그의 기본 동작을 금지
       var bno = $(this).attr('href');
      var frm = $('#pagingForm');
      frm.attr('action', 'detail');
      frm.attr('method', 'get');
      frm.find('[name="bno"]').val(bno)
      frm.submit();
   });   // end goToDetail click()
   
   $('.pagination li a').click(function(){
         event.preventDefault();
         var targetPage = $(this).attr('href');
         var frm = $('#pagingForm');
         frm.attr('action', 'boardlist');
         frm.attr('method', 'get');
         frm.find('[name="page"]').val(targetPage);
         frm.submit();
       });
   
   // 새글 작성에 성공하면 alert 띄움
   if('${insert_result}' === 'success'){
      alert('새 글 작성 성공');
   } else if ('${insert_result}' === 'fail') {
       alert('새 글 작성 실패');   
   }   
});
</script>


</body>
<footer style="margin: 0; padding: 0;">
 <%@ include file="../footer.jsp" %>
</footer>
</html>