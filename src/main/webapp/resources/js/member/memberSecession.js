
function memberDeleteValidate() {

    // 1) 이름 입력
    const memberName = document.getElementById("memberName");

    if (memberName.value.trim().length == 0) {
        alert("이름을 입력해주세요");
        memberName.focus();
        memberName.value = "";
        return false;
    } 
        
    // 2) 아이디 입력
    const memberId = document.getElementById("memberId");

    if (memberId.value.trim().length == 0) {

        alert("아이디를 입력해주세요");
        memberId.focus();
        memberId.value = "";
        return false;
    } 

    // 3) 비밀번호 입력 검사
    const memberPw = document.getElementById("memberPw");
   
    if (memberPw.value.trim().length == 0) {

        alert("비밀번호를 입력해주세요");
        memberPw.focus();
        memberPw.value = "";
        return false;
    }

    // 4) 이메일 입력
    const memberEmail = document.getElementById("memberEmail");

    if (memberEmail.value.trim().length == 0) {

        alert("이메일을 입력해주세요");
        memberEmail.focus();
        memberEmail.value = "";
        return false;
    } 

    // 탈퇴 여부 확인
    if (!confirm("정말로 탈퇴하시겠습니까?")) {
        alert("탈퇴가 취소되었습니다.")
        return false;
    }
    return true;
}