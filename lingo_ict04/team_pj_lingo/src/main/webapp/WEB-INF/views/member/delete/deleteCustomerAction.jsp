<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>main</title>

<!-- css  -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/customer/join.css">
<!-- js  -->
<script src="https://kit.fontawesome.com/d8684d0f30.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 햄버거버튼 - 자바스크립트 소스 연결  -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트 실행됨  -->
<script src="${path}/resources/js/customer/join.js" defer></script> 
<script src="${path}/resources/js/common/main.js" defer></script> 
<!-- join.js -->

</head>
<body>
<div class="wrap">
   <!-- header 시작 -->
   <%@include file="/WEB-INF/views/common/header.jsp" %> <!-- customer/webapp/common/header.jsp  -->
   <%-- <jsp:include page="./header.jsp"/> 아님 --%>
   
   <!-- header 끝    -->

   <c:if test="${deleteCnt == 1}">
      <script type="text/javascript">
         window.location="${path}/main.do";
         alert("회원삭제 성공!!");
      </script> 
   </c:if>    
   <img src="jsp_pj_ict04/resources/images/main/delete.gif"/>       

   <c:if test="${deleteCnt != 1}">     
      <script type="text/javascript">
         window.location="${path}/deleteCustomer.do";
         alert("회원삭제 실패!!");
      </script>      
   </c:if>
   
      <!-- footer 시작 -->
      <%@include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- footer 끝 -->
   </div>      
</body>
</html>