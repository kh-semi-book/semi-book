$("#memberEmail3").change(function(){
    $("#memberEmail2").val($("#memberEmail3").val());
})


const checkObj = {

    "memberName"       : false,
    "memberId"         : false,
    "memberPw"         : false,
    "memberPwConfirm"  : false,
    "memberPhone"      : false,
    "memberEmail"      : false,
    "memberGender"     : false,
    "memberBirth"      : false,
    "emailFlag"        : false,
    "smsFlag"          : false

}

document.getElementById("joinform").addEventListener("submit", function(event){
//    checkObj속성  중 한개라도 false라면 제출 X

        for(let key in checkObj){

            let str;

            if(!checkObj[key]){

            switch(key){
                case "memberName"       : str = "성명 항목은 필수입니다.";                          break;
                case "memberId"         : str = "아이디 항목은 필수입니다.";                        break;
                case "memberPw"         : str = "비밀번호 항목은 필수입니다.";                      break;
                case "memberPwConfirm"  : str = "비밀번호 항목의 입력된 내용이 일치하지 않습니다."; break;
                case "memberPhone"      : str = "휴대폰 항목은 필수입니다.";                        break;
                case "memberEmail"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
                case "memberGender"     : str  = "성별 항목은 필수입니다,";                         break;
                case "memberBirth"      : str  = "생년 항목은 필수입니다.";                         break;
                case "emailFlag"        : str  = "이메일 수신 항목은 필수입니다.";                  break;
                case "smsFlag"          : str  = "SMS 수신동의 항목은 필수입니다.";                 break;
                
            }
            alert(str); // 대화상자 출력

            //유효하지 않은 입력창으로 포커스 이동
            document.getElementById(key).focus();
            event.preventDefault();//제출이벤트제거
            return; // 함수 종료
        }
    }
});
    

// 아이디 유효성 검사
const memberId = document.getElementById("memberId");

memberId.addEventListener("keyup", function(){

    if(memberId.ariaValueMax.trim().length == 0){
        memberId.value = "";

        //유효성 검사 확인객체에 현재 상태 저장
        checkObj.memberId =false;
        return;
    }




const regEx = /^[a-z0-9]{6,20}$/;
if(regEx.test(memberId.value)){
    checkObj.memberId  = true;

} else{
    alert="아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다.";
    checkObj.memberId  =false;
}

    //         document.getElementById(ket).focus();

    //         event.preventDefault();
    //         return;
    //     }
    // }
});