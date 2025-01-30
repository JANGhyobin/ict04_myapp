/**
 *   function selectEmailChk() {
  // 이메일 주소를 select 박스로 선택하면 그 값이 user_email2로 들어가도록 한다.
  if (document.inputform.user_email3.value === "0") {  // "직접입력"을 선택한 경우
    document.inputform.user_email2.value = "";  // 이메일 입력 필드를 비운다.
    document.inputform.user_email2.focus();  // 이메일 입력 필드에 포커스를 맞춘다.
  } else {
    document.inputform.user_email2.value = document.inputform.user_email3.value;  // 선택한 이메일 도메인을 user_email2에 입력
  }
} 
 */
  //join.jsp 회원가입 이메일체크
 function selectEmailChk(){
      // 이메일 주소를 select 박스로 선택하면 그 값이 userEmail2로 들어가도록 한다.
      if(document.inputform.u_email3.value == "0") {  // 직접입력
         document.inputform.u_email2.value = "";
         document.inputform.u_email2.focus();
         return false;
      } 
      else {
         document.inputform.u_email2.value = document.inputform.u_email3.value;
         return false;
      }
   }
   
   
 // modifyDetailAction.jsp  이메일체크
 function u_selectEmailChk(){
	 // 이메일 주소를 select 박스로 선택하면 그 값이 userEmail2로 들어가도록 한다.
      if(document.modifyform.u_email3.value == "0") {  // 직접입력
         document.modifyform.u_email2.value = "";
         document.modifyform.u_email2.focus();
         return false;
      } 
      else {
         document.modifyform.u_email2.value = document.modifyform.u_email3.value;
         return false;
      }
   }
	

   
 function confirmId(){
   // alert("중복확인");
   if(!document.inputform.u_id.value){
    alert("아이디를 입력하세요");
    document.inputform.u_id.focus();
    return false;
   }
   // 중복확인 버튼 클릭시 컨트롤러로 url을 전달, 컨트롤러에 추가 
   let url = "/spring_pj_ict04_kjm/idConfirmAction.do?u_id="+ document.inputform.u_id.value;
   window.open(url,"confirm","menubar=no , width=500, height=500")
}

 
 // 2.join.jsp - onsubmit - 회원가입페이지 필수체크 

 function signInCheck(){
    // <!-- 2-1. 중복확인  -->
    // <input type="hidden" name="hiddenUserid" value="0">
    // hiddenUserid : 중복확인 버튼 클릭여부 체크 (0:클릭안함 1:클릭함)
    
    // 2-2. 중복확인 버튼을 클릭하지 않는 경우 "중복확인 해주세요!!" 메시지 띄운다. 
    if(document.inputform.hiddenUserid.value == "0"){
      alert("중복확인 해주세요!");
      document.inputform.dubChk.focus();
      return false;
   }
}

// 3.idConfirmAction.jsp - submit 
function idConfirmCheck(){
   if(!document.confimform.u_id.value){
      alert("아이디입력 해주세요!");
      document.confimform.u_id.focus();
      return false;
	}

}

// 4.자식창에서 부모창으로 userid값을 전달 => 사용가능한 id를 찾은 경우

//opener : window 객체의 open() 메서드로 열린 자식창 (=중복확인창) 에서 부모창(=회원가입창)에 접근할때 사용
// hiddenUserid : 중복확인 버튼 클릭여부 체크 (0:클릭안함, 1:클릭함)
// self.close();  자식창 닫기

 function setUserId(userid){
   alert(userid);
   opener.document.inputform.u_id.value = userid;
   opener.document.inputform.hiddenUserid.value = "1";
   self.close();
}
