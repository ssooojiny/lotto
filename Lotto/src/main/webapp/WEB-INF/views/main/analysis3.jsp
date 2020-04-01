<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>analysis3.jsp 페이지 입니다</title>

<style type="text/css">
#loto_img {
  background-image: url('http://i.imgur.com/gvS0kEU.png');
  height: 34px;
  width: 47px;
  padding-top: 13px;
  font-family: tahoma;
  font-size: 12pt;
  color: #fff;
  text-align: center;
  font-weight: bold;
  display:inline-block;
}
</style>
</head>
<body>
  <h1>당신이 선택하신 로또 번호는</h1>
  <ul>
  <c:forEach var="basiclottoLastNumber1" items="${basiclottoLastNumber}" varStatus="status">
  <tr><td>
    <c:forEach var="basiclottoLastNumber2" items="${basiclottoLastNumber1 }">
    <div id="loto_img"   style="background-color: #6688CC;">${basiclottoLastNumber2 }번</div>
    </c:forEach>
    </td>
    </tr>
    <td>${status.index+1 } 게임</td>
    <p>
  </c:forEach>
  </ul>






  <script type="text/javascript">
      console.log("여기까지 오나 ?")
    </script>
</body>
</html>