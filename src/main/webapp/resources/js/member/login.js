//로그인 유효성 검사
// 로그인 form태그 submit 이벤트 취소하기
function loginValidate(){

    // document.querySelector("css 선택자")
    // 아이디 입력
    const memberId = document.querySelector("[name='memberId']");
    
    // 비밀번호 입력
    const memberPw = document.querySelector("[name='memberPw']");
    
    // 아이디가 입력되지 않은 경우 false 반환
    if(memberId.value.trim().length == 0){

        alert("아이디 항목은 필수입니다.");
        memberId.focus();
        // memberId.value="";

        return false;
    }
    // 비밀번호가 입력되지 않은 경우 false 반환
    if(memberPw.value.trim().length == 0){

        alert("비밀번호 항목은 필수입니다.");
        memberPw.focus();
        // memberPw.value="";

        return false;
    }

    return true;
}

// 아이디 저장
const saveId = document.getElementById("saveId");

saveId.addEventListener("change", function(){
    
    if(this.checked){
    
        const str = ""
    }    
})