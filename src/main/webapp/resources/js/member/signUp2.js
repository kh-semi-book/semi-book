// ===================휴대폰 input 관련 =====================
const memberPhone1 = document.getElementById("memberPhone1");
const memberPhone2 = document.getElementById("memberPhone2");
const memberPhone3 = document.getElementById("memberPhone3");

memberPhone1.addEventListener("keyup", function(){
    if(this.value.length == 3){
        memberPhone2.focus();
    }
});
memberPhone2.addEventListener("keyup", function(){
    if(this.value.length == 4){
        memberPhone3.focus();
    }
});
memberPhone3.addEventListener("keyup", function(){
    if(this.value.length == 4){
        memberEmail1.focus();
    }
});

// ===================이메일 input 관련 =====================

const memberEmail3 = document.getElementById("memberEmail3");
const memberEmail2 = document.getElementById("memberEmail2");

memberEmail3.addEventListener("change", function(){
    memberEmail2.value = memberEmail3.value

    if(memberEmail3.value == '직접입력'){
        memberEmail2.disabled = false;
        memberEmail2.value = "";

    } else{
        memberEmail2.disabled = true;
    }
});

// ================== 추가 정보 항목 ============================
const marriageYN1 = document.getElementById("marriageYN1");
const marriageYN2 = document.getElementById("marriageYN2");

// if(marriageYN1.)


// ==============================================================
// $("#memberEmail3").change(function(){
//     $("#memberEmail2").val($("#memberEmail3").val());
// });

//============================================================

/* 주소 API */
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}



const checkObj = {

    "memberName"       : false,
    "memberId"         : false,
    "reqmemberId"      :false,
    "memberPw"         : false,
    "memberPwConfirm"  : false,
    "reqmemberPw"      : false,
    "memberPhone1"      : false,
    "memberPhone2"      : false,
    "memberPhone3"      : false,
    "memberEmail1"      : false,
    "memberEmail2"      : false,
    "memberEmail3"      : false,
    "memberGender"     : false,
    "memberBirth1"      : false,
    "memberBirth2"      : false,
    "memberBirth3"      : false,
    "emailFlag"        : false,
    "smsFlag"          : false

};  

document.getElementById("joinform").addEventListener("submit", function(event){
//    checkObj속성  중 한개라도 false라면 제출 X

        for(let key in checkObj){

            let str;

            if(!checkObj[key]){

            switch(key){
                case "memberName"       : str = "성명 항목은 필수입니다.";  break;
                case "memberId"         : str = "아이디 항목은 필수입니다."; break;
                case "reqmemberId"      : str = "아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다."     ;               break;
                case "memberPw"         : str = "비밀번호 항목은 필수입니다.";                      break;
                case "memberPwConfirm"  : str = "비밀번호 항목의 입력된 내용이 일치하지 않습니다."; break;
                case "reqmemberPw"     : str =  "비밀번호 항목의 비밀번호 형식이 올바르지 않습니다.\n\n비밀번호는 특수문자를 포함해 8~20자로 입력해주세요."
                case "memberPhone1"      : str = "휴대폰 항목은 필수입니다.";                        break;
                case "memberPhone2"      : str = "휴대폰 항목은 필수입니다.";                        break;
                case "memberPhone3"      : str = "휴대폰 항목은 필수입니다.";                        break;
                case "memberEmail1"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
                case "memberEmail2"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
                case "memberEmail3"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
                case "memberGender"     : str  = "성별 항목은 필수입니다,";                         break;
                case "memberBirth1"      : str  = "생년 항목은 필수입니다.";                         break;
                case "memberBirth2"      : str  = "생년 항목은 필수입니다.";                         break;
                case "memberBirth3"      : str  = "생년 항목은 필수입니다.";                         break;
                case "emailFlag"        : str  = "이메일 수신 항목은 필수입니다.";                  break;
                case "smsFlag"          : str  = "SMS 수신동의 항목은 필수입니다.";                 break;
                
            }
            alert(str); // 대화상자 출력

            if(checkObj.reqmemberId == false){
            document.getElementById("memberId").focus();

            } else{
            //유효하지 않은 입력창으로 포커스 이동
            document.getElementById(key).focus();
            }

            event.preventDefault();//제출 이벤트제거
            return;
        
        }
    }
});
// 이름 checkObj
const memberName = document.getElementById("memberName");
memberName.addEventListener("input" , function(){
    if(memberName.value.trim().length == 0 ){
        memberName.value = "";
        checkObj.memberName = false;
        return;
    } else{
        checkObj.memberName = true;
    }
})
    

// 아이디 유효성 검사
const memberId = document.getElementById("memberId");

memberId.addEventListener("input", function(){

    if(memberId.value.trim().length == 0){
        memberId.value = "";

        //유효성 검사 확인객체에 현재 상태 저장
        checkObj.memberId =false;
        return;
    } else{
        checkObj.memberId =true;

        const regEx = /^[a-z0-9]{6,20}$/;
        if(!regEx.test(memberId.value)){
            checkObj.reqmemberId = false;
            return;
        } else{
            // alert("아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다.");
            checkObj.reqmemberId = true;
        
        }
        
    }



});
//=======================================================================
// 비밀번호 유효성 검사
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");

memberPw.addEventListener("input", function(){

    // 1) '비밀번호'가 입력되지 않은 경우
    if(memberPw.value.trim().length == 0){
        memberPw.value = "";
        checkObj.memberPw = false;
        return;
    }

    // 비밀번호 정규표현식 검사 (특수문자를 포함해 8~20자로 입력해주세요.)
    const regEx = /^(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

    if(regEx.test(memberPw.value)){ // 유효한 비밀번호
        checkObj.memberPw = true;
        
        // 유효한 비밀번호 이면서 +비밀번호 확인에 작성X
        if(memberPwConfirm.value.trim().length == 0 ) {
        
        // 유효한 비밀번호 이면서 +비밀번호 확인에 작성O -> 같은지 비교
        } else{
            // 비밀번호 입력시 비밀번호 확인에 작성된 값과 일치하는 경우
            if(memberPw.value == memberPwConfirm.value){
                checkObj.memberPwConfirm = true;
            } else {
                checkObj.memberPwConfirm = false;
            }
        }

    }else{ // 유효하지 않음
        checkObj.memberPw = false;
    }

    // 비밀번호 입력시 비밀번호 확인에 작성된 값과 일치하는 경우
    if(memberPw.value == memberPwConfirm.value){
        checkObj.memberPwConfirm = true;
    } else {
        checkObj.memberPwConfirm = false;
    }

});
    // 비밀번호 확인 유효성 검사 (비밀번호 == 비밀번호 확인인지 검사)
    memberPwConfirm.addEventListener("input", function(){

    // 비밀번호가 유효할 경우일때만! 비밀번호== 비밀번호확인 같은지 비교
    if(checkObj.memberPw){ // 비밀번호가 유효한 경우
        // 비밀번호가 유효할 경우에만 비밀번호 == 비밀번호 확인 같은지 검사
        if(memberPw.value == memberPwConfirm.value){
            checkObj.memberPwConfirm = true;
        }else{
            checkObj.memberPwConfirm = false;
        }   
    }else{ // 비밀번호가 유효하지않은경우
        checkObj.memberPwConfirm = false;
    }

    
    });

    // 휴대폰번호 obj
    memberPhone1 = document.getElementById("memberPhone1");
    memberPhone1.addEventListener("input" , function(){
        if(memberPhone1.value.trim().length == 0 ){
            memberPhone1.val = "";
            checkObj.memberPhone1 = false;
            return;
        } else{
            checkObj.memberPhone1 = true;
        }
    })

    memberPhone2 = document.getElementById("memberPhone2");
    memberPhone2.addEventListener("input" , function(){
        if(memberPhone2.value.trim().length == 0 ){
            memberPhone2.val = "";
            checkObj.memberPhone2 = false;
            return;
        } else{
            checkObj.memberPhone2 = true;
        }
    })