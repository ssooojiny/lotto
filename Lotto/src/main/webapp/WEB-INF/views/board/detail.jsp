<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style type="text/css">
 .reply_item div{
 border: medium;
 }
 .button class{
 border-bottom-color: aqua;
 background-color: green;
  background-size: cover;
 }
  .imge{
        position: relative;
        background-image: url("/lotto/resources/images/level_3.jpg");                                                               
        height: 100vh;
        background-size: cover;
    }
 </style>
</head>
<body>
<div class="imge" style="text-align: center; color: white;">
  <button type="button" onclick="location.href='/lotto/board/boardlist'" class="btn btn-dark" style="text-align: right;">뒤로가기</button>
<h1 style="text-align: center;">게시글 보기 페이지</h1> 
 <form action="update" method="get">
 <input type="hidden" name="page" value="${criteria.page }">
 <input type="hidden" name="perPage" value="${criteria.numsPerPage }">

 <p>글 번호 :  </p>
 <input type="text" name="bno" value="${boardVO.bno }" readonly="readonly"><br>
 <p>글 제목</p>
<textarea rows="1" cols="30" readonly="readonly" style="border-color: white;">${boardVO.title }</textarea><br>
 <p>글 내용</p>
 <textarea rows="4" cols="30" readonly="readonly">${boardVO.content }</textarea><br>
    <p>작성자 : ${boardVO.userid }</p>
    <p>작성일 :</p>
 <fmt:formatDate value="${boardVO.regdate }"
  pattern="yyyy-MM-dd HH:mm:ss" var="regdate"/>
  <input type="text" value="${regdate }" readonly="readonly" />
  <c:if test="${sessionScope.login_id != null }">
 <c:if test="${sessionScope.login_id == boardVO.userid }">
 <input type="submit" value="수정" class="btn btn-success">
 </c:if>
 </c:if>
 </form>
 </div>
 <br>
 <br>
 <h4 style="text-align: center;">댓글 페이지</h4>         
 <br>
  <div style="text-align:center;">
    <div>
      <input type="text" id="bno" name="bno" value="${boardVO.bno }"
        style="display: none;"> <input type="hidden" id="replier" readonly="readonly" value="${login_id }">
        <c:if test="${sessionScope.login_id != null }">
         <textarea rows="4" cols="90" placeholder="댓글입력" id="rtext"  style="border-radius: 10px 40px 40px 10px;">
        </textarea>
         <button type="button" id="btn_add" style="padding: inherit; margin: 0; border-bottom-color: white; border-width: inherit;"><img alt="" src="/lotto/resources/images/co_btn_write.gif" ></button>
        </c:if>
        <button id="slideUp" class="btn btn-dark">▲ </button>
        <button id="slideDown" class="btn btn-info" >▼</button>
        
    </div>
  </div>
    <hr>
  <div id="replies" style="text-align: left;"></div>
  <br>
  <script type="text/javascript">
      $(document).ready(function() {
                var bno = ${boardVO.bno };

                getAllReplies();

                function getAllReplies() {
                  // $.get(url, callback)
                  // $.getJSON(url, data, callback)
                  //   url : 서버의 요청 주소
                  //   data : 요청과 함께 보낼 데이터(선택)
                  //   callback : JSON 데이터가 리턴됐을 때 처리할 함수
                  var url = '/lotto/replies/all/' + bno;
                  $
                      .getJSON(
                          url,
                          function(jsonData) {
                            console.log(jsonData.length);
                            var list = '';
                            var i;
                            $(jsonData)
                                .each(
                                    function() {
                                      var date = new Date(this.regdate);
                                      var dateString = date
                                          .toLocaleDateString();
                                      list += '<div class="reply_item">'
                                          + '<input type="hidden" id="rno" value="'
                + this.rno
                + '"/><br>'
                                          + '<input type="text" style="border-bottom-color: white; border-width: inherit;" id="rtext" value="'
                + this.rtext
                + '"/><br><br>    '
                                          + '<input type="text" style="border-bottom-color: white; border-width: inherit;" id="replier" value="'
                + this.replier
                + '" readonly /><br><br>   '
                                          + dateString
                                          + '<br>'
                                          + '<button class="btn_update" type="button" style=" padding: inherit; margin: 0; border-bottom-color: white;"><img alt="" src="/lotto/resources/images/btn_modify.gif" ></button>'
                                          + '<button class="btn_delete" type="button" style=" padding: inherit; margin: 0; border-bottom-color: white;"><img alt="" src="/lotto/resources/images/btn_delete.gif" ></button> '
                                          + '</div><hr style="border: solid 1px red;">';
                                    }); // end each()
                            $('#replies').html(list);
                          }); // end getJSON         
                } // end getAllReplies()

                $('#btn_add').click(function() {
                  var rtext = $('#rtext').val();
                  var replier = $('#replier').val();
                  // Ajax 요청을 보냄
                  $.ajax({
                    type : 'post',
                    url : '/lotto/replies/',
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'POST'
                    },
                    data : JSON.stringify({
                      'bno' : bno,
                      'rtext' : rtext,
                      'replier' : replier
                    }),
                    success : function(result) {
                      if (result == 1) {
                        alert('댓글 입력 되었네욤');
                        $('#rtext').val('');
                        getAllReplies();
                      }
                    }
                  });
                }); // end btn_add()

                $('#replies').on('click', '.reply_item .btn_update',
                    function() {
                      // 해당 버튼의 rno, rtext 값을 읽음
                      var rno = $(this).prevAll('#rno').val();
                      var rtext = $(this).prevAll('#rtext').val();
                      // Ajax 요청
                      $.ajax({
                        type : 'put',
                        url : '/lotto/replies/' + rno,
                        headers : {
                          'Content-Type' : 'application/json',
                          'X-HTTP-Method-Override' : 'PUT'
                        },
                        data : JSON.stringify({
                          'rtext' : rtext
                        }),
                        success : function(result) {
                          if (result === 'success') {
                            alert(rno + '번 댓글 수정 성공');
                            getAllReplies();
                          } 
                        }
                      });
                    }); // end btn_update()

                $('#replies').on('click', '.reply_item .btn_delete',
                    function() {

                      var rno = $(this).prevAll('#rno').val();
                      var ret = confirm('삭제하시겠습니까? 다시 한번 확인해주세요');
                      if (ret === true) {
                        // Ajax 요청
                        $.ajax({
                          type : 'delete',
                          url : '/lotto/replies/' + rno,
                          headers : {
                            'Content-Type' : 'application/json',
                            'X-HTTP-Method-Override' : 'DELETE'
                          },
                          success : function(result) {
                            if (result === 'success') {
                              alert(rno + '번 댓글 삭제 성공');
                              getAllReplies();
                            }
                          }
                        });
                      }
                    }); // end btn_delete()
                    $(function() {
                       $("#slideUp").on("click", function() {
                     $("#replies").slideUp();
                  });
                    });
                    $(function() {
                  $("#slideDown").on("click", function() {
                     $("#replies").slideDown();
                  });
               });
              }); // end ready()
    </script>
</body>
</html>