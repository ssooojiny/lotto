<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../dropbar.jsp"%>
<style type="text/css">

ul {
list-style : none;
}

table.rlotto {
margin : auto;
}

.centermenu{
float : center;
}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>올바른 로또생활</title>
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
        <table class="rlotto">
          <thead>
            <tr>  
              <th scop="cols">
                <p style="font-size:20px;">올바른 복권 생활</p>
                <hr><hr>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <div class="1">
                  <ul>
                    <li><img src="/lotto/resources/sel_image/right_1.jpg"></li>
                    <li><img src="/lotto/resources/sel_image/right_2.jpg"></li>
                    <li><img src="/lotto/resources/sel_image/right_4.jpg" usemap="#Bokgwon">
                        <map name="Bokgwon">
                        <area shape="rect" coords="569, 77, 724, 94" href="http://www.bokgwon.go.kr/fund/01.jsp" target="_blank"/>
                        </map>
                    </li>
                  </ul>
        
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

</body>
<footer>
 <%@ include file="../footer.jsp" %>
</footer>
</html>