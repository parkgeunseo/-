<%@ page contentType="text/html; charset=UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>언젠간 만들겠지</title>
<link href="./css/style.css" rel='Stylesheet' type='text/css'>
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">

$(function() { // 자동 실행
	  if(${param.create_cnt != null && param.sender_cnt != null}){
		  $('#modal_panel_consumer').modal();   
	  }
	  });
</script>

</head>
<body>
<!-- 메인 게임 사진 -->
 <div class="row"> 
<jsp:include page="/menu/top3.jsp" flush='false' />

<%--   <!-- Modal  시작 -->
  <div class="modal fade" id="modal_panel_consumer" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">알림</h4><!-- 제목 -->
        </div>
        <div class="modal-body">
          <c:choose>
            <c:when test="${param.create_cnt == 0}">
              <div>회원가입에 실패했습니다. 다시 시도해주세요.</div>
            </c:when>
            <c:when test="${param.create_cnt ==1 && param.sender_cnt == 0}">
              <div>메일전송에 실패했습니다. 다시 시도해주세요.</div>
            </c:when>
            <c:when test="${param.create_cnt ==1 && param.sender_cnt == 1}">
              <div>메일을 전송했습니다. 메일을 확인해주세요.</div>
            </c:when>
            <c:otherwise>
              <div>처리에 실패했습니다. 다시 시도해주세요.</div>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
          
        </div>
      </div>
    </div>
  </div> <!-- Modal   종료 --> --%>


  <DIV style='width: 100%; margin: 30px auto;'>



화면 구현



 </DIV>
  </div>
  <DIV style='margin: 0px auto; width: 90%;'>
    <DIV style='float: left; width: 50%;'>
     </DIV>
     <DIV style='float: left; width: 50%;'>
    </DIV>  
  </DIV>
 
  <DIV style='width: 94.8%; margin: 0px auto;'>
  </DIV>  
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
 
</body>
</html>