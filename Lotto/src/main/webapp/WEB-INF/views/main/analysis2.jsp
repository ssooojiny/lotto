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
  float: left
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
  <div class="left">
  <h2 style="width: 1000px">최근부터 선택하신 횟수까지 가장 적게 번호가 나온 순 입니다.</h2>
    <table>
      <tbody>
        <c:forEach var="vo" items="${testList3 }" varStatus="status">
        <c:choose>
        <c:when test="${status.index % 3 == 0}"><td><p>
        <div class="loto_img">
        <div style="background-color: #FA5858;">${vo.hit_number }</div>
        
        </div>
        <div class="test"  style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${status.index+1 }위</div>
        <div class="test"  style="background-color: white-space; color: black; width: 50px; text-align: center; color: black; font-weight: bold;">${vo.cnt }회
              출현</div>
        </c:when>
        <c:otherwise>
        <div class="loto_img">
              <div style="background-color: #FA5858;">${vo.hit_number }</div>
              
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
    
  <script type="text/javascript">
      console.log("테스트중");
    </script>
</body>
</html>