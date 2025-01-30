<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/WEB-INF/views/common/setting.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복확인</title>
<!-- css  -->
<link rel="stylesheet" href="${path}/resources/css/customer/join.css">
<!-- js  -->
<script src="${path}/resources/js/customer/join.js" defer></script> 
</head>
<body>
   <div class="wrap">
   <!-- 컨텐츠 시작 -->
   <div id="container">
      <div id="contents">
         <!-- 상단 중앙1 시작  -->
         <div id="section1">
            <h1 align="center"> 회원가입 </h1>
         </div>
         <!-- 상단 중앙2 시작  -->
         <div id="section2">
            <div id="s2_inner">
               <div class="join">
                  <form name="confirmform" action="idConfirmAction.do" method="post">
                      <!-- id 중복일 때, id를 입력받아 다시 중복체크 -->
                      <c:if test="${selectCnt == 1}">
                       <table align="center" width="500px">
                           <tr>
                              <th colspan="2" align="center">
                                 <span>${strId}는 사용할 수 없습니다.</span>
                              </th>
                           </tr>
                           <tr> 
                                 <th align="center"> * 아이디</th>
                              <td>   
                                 <input type="text" class="input" name="user_id" size="30" placeholder="공백없이 20자 이내로 작성" required autofocus>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="border-bottom: none">
                              <br>
                              <div align="right">
                                 <input class="inputButton" type="submit" value="확인">
                                 <input class="inputButton" type="reset" value="초기화">
                              </div>
                              </td>
                           </tr>   
                         </table>
                      </c:if>
                        
                     <c:if test="${selectCnt != 1}">
                        <table align="center" width="500px">
                           <tr>
                              <th colspan="2" align="center">
                                 <span>${strId}는 사용할 수 있습니다.</span>
                              </th>
                           </tr>   
                           <tr>
                              <td colspan="2" style="border-bottom: none">
                              <br>
                              <div align="right">
                                 <input class="inputButton" type="button" value="확인" onclick="setUserId('${strId}')">
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
</div>   
</body>
</html>