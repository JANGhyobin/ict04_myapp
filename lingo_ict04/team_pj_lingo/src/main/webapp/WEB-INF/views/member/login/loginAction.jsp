<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/setting.jsp" %>  
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
<link rel="stylesheet" href="${path}/resources/css/customer/login.css">
<!-- js  -->
<script src="https://kit.fontawesome.com/d8684d0f30.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 햄버거버튼 - 자바스크립트 소스 연결  -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트 실행됨  -->
<script src="${path}/resources/js/customer/join.js" defer></script> 

</head>
<body>
<div class="wrap">
   <!-- header 시작 -->
   <%@include file="/WEB-INF/views/common/header.jsp" %> <!-- customer/webapp/common/header.jsp  -->
   <%-- <jsp:include page="./header.jsp"/> 아님 --%>
   
   <!-- header 끝    -->

   <!-- 컨텐츠 시작 -->
   <div id="container">
      <div id="contents">
         <!-- 상단 중앙1 시작  -->
         <div id="section1">
            <h1 align="center"> 로그인 처리 </h1>
         </div>
         <!-- 상단 중앙2 시작  -->
         <div id="section2">
            <div id="s2_inner">
               <div class="join">
                 
                  <form name="loginform" action="loginAction.do" method="post">
                     	<!-- 세션이 없는 경우 : 로그인 실패 -->
                     	<c:if test="${sessionScope.sessionID == null }">
	                     	<script type="text/javascript">
	                       		alert("아이디와 비밀번호가 일치하지 않습니다~~~");                        
	                        </script>
		                   <table>
	                        <tr>
	                           <th> * 아이디 </th>
	                           <td>
	                              <input type="text" class="input" name="user_id" size="30" placeholder="공백없이 20자 이내로 작성" required autofocus>
	                           </td>
	                        </tr>
	                        <tr>
	                           <th> * 비밀번호 </th>
	                           <td>
	                              <input type="password" class="input" name="user_password" size="20" placeholder="공백없이 20자 이내로 작성" required>
	                           </td>
	                        </tr>
	                        
	                        <tr>
	                           <td colspan="2" style="border-bottom: none">
	                           <br>
	                           <div align="right">
	                              <input class="inputButton" type="submit" value="로그인">
	                              <input class="inputButton" type="reset" value="초기화">
	                              <input class="inputButton" type="button" value="회원가입" onclick="window.location='join.do'">
	                           </div>
	                           </td>
	                        </tr>   
	                     </table>
                     	</c:if>
                  	<!-- // 세션이 있는 경우  -->
                  	
                  	<c:if test="${sessionScope.sessionID != null}">
                  	 <table>
                        <tr>
                           <th colspan="2" align="center"> * 아이디 
                        <span style="color : lightblue"><b>${sessionID}</b></span>님
                           </th>
                        </tr>
                        <tr>
                           <td colspan="2" style="border-bottom: none">
                           <br>
                           <div align="right">
                              <input class="inputButton" type="button" value="회원수정" onclick="window.location='${path}/modifyCustomer.do'">
                              <input class="inputButton" type="button" value="회원탈퇴" onclick="window.location='${path}/deleteCustomer.do'">
                              <input class="inputButton" type="button" value="로그아웃" onclick="window.location='${path}/logout.do'">
                              <c:if test="${sessionScope.sessionID =='admin' }">
                              	<a href="${path}/board_list.bc" style="color:black">관리자</a>
                              </c:if>
                           </div>
                           </td>
                        </tr>   
                     </table>
                  	</c:if>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
      <!-- 컨텐츠 끝 -->
      

      <!-- footer 시작 -->
      <%@include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- footer 끝 -->
   </div>
</body>
</html>