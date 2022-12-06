// ===================휴대폰 input 관련 =====================
const memberPhone1 = document.getElementById("memberPhone1");
const memberPhone2 = document.getElementById("memberPhone2");
const memberPhone3 = document.getElementById("memberPhone3");

memberPhone1.addEventListener("keyup", function(){
    if(this.value.length === 3){
        memberPhone2.focus();
    }
});
memberPhone2.addEventListener("keyup", function(){
    if(this.value.length === 4){
        memberPhone3.focus();
    }
});
memberPhone3.addEventListener("keyup", function(){
    if(this.value.length === 4){
        memberEmail1.focus();
    }
});

// ===================이메일 input 관련 =====================

const memberEmail3 = document.getElementById("memberEmail3");
const memberEmail2 = document.getElementById("memberEmail2");
const memberEmail1 = document.getElementById("memberEmail1");

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
const weddingInput1 = document.getElementById("memberWedding1");
const weddingInput2 = document.getElementById("memberWedding2");
const weddingInput3 = document.getElementById("memberWedding3");
const weddingYN1 = document.getElementById("marriageYN1");
const weddingYN2 = document.getElementById("marriageYN2");

weddingYN1.addEventListener("click", () =>{
    if(weddingYN1.checked === true) {
        weddingInput1.disabled = true;
        weddingInput2.disabled = true;
        weddingInput3.disabled = true;
        }
    })
weddingYN2.addEventListener("click", () =>{
    if(weddingYN2.checked === true) {
        weddingInput1.disabled = false;
        weddingInput2.disabled = false;
        weddingInput3.disabled = false;
        }
    })
    


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

    "memberName"       : true,
    "memberId"         : true,
    "reqmemberId"      : true,
    "memberPw"         : true,
    "memberPwConfirm"  : true,
    "reqmemberPw"      : true,
    "memberPhone1"      :true,
    "memberPhone2"      :true,
    "memberPhone3"      :true,
    "memberEmail1"      :true,
    "memberEmail2"      :true,
    "memberEmail3"      :true,
    "memberGender"     : true,
    "memberBirth1"      :true,
    "memberBirth2"      :true,
    "memberBirth3"      :true,
    "emailFlag"        : true,
    "smsFlag"          : true

};  

// 아이디 중복 검사
document.getElementById("dup_check").addEventListener("click", function(){
    const memberId = document.getElementById("memberId");
    const regEx = /^[a-z0-9]{6,20}$/;

    if(memberId.value === ""){
        alert("아이디를 입력해주세요.");
        memberId.focus();
    } else if(
        !regEx.test(memberId.value)
    ){
        alert("아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다.");

    
    }else{

    const param = {"memberId" : memberId.value};
    $.ajax({
        url : '/idDupCheck',
        data : param,
        type : "GET",
        success : (result) => {
            //result: 서버로부터 받은 응답 데이터
            console.log(result);

            if(result == 0){ // 중복 X
                alert("'"+memberId.value + "'은(는) 중복된 아이디가 없습니다.\n\n 사용하셔도 좋습니다.")

            } else{
                alert("사용 불가능한 아이디 입니다.")


            }
        },
        error : () => {
            console.log("아이디 중복검사 실패");
        },
        complete : () => {
            console.log("중복검사 수행 완료");
        }
    });
    }

})

document.getElementById("joinform").addEventListener("submit", function(event){
//    checkObj속성  중 한개라도 false라면 제출 X

            // switch(!key){
            //     case "memberName"       : str = "성명 항목은 필수입니다.";  break;
            //     case "memberId"         : str = "아이디 항목은 필수입니다."; break;
            //     case "reqmemberId"      : str = "아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다."     ;               break;
            //     case "memberPw"         : str = "비밀번호 항목은 필수입니다.";                      break;
            //     case "memberPwConfirm"  : str = "비밀번호 항목의 입력된 내용이 일치하지 않습니다."; break;
            //     case "reqmemberPw"     : str =  "비밀번호 항목의 비밀번호 형식이 올바르지 않습니다.\n\n비밀번호는 특수문자를 포함해 8~20자로 입력해주세요."; break;
            //     case "memberPhone1"      : str = "휴대폰 항목은 필수입니다.";                        break;
            //     case "memberPhone2"      : str = "휴대폰 항목은 필수입니다.";                        break;
            //     case "memberPhone3"      : str = "휴대폰 항목은 필수입니다.";                        break;
            //     case "memberEmail1"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
            //     case "memberEmail2"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
            //     case "memberEmail3"      : str = "이메일 항목의 이메일 형식이 올바르지 않습니다.";   break;
            //     case "memberGender"     : str  = "성별 항목은 필수입니다,";                         break;
            //     case "memberBirth1"      : str  = "생년 항목은 필수입니다.";                         break;
            //     case "memberBirth2"      : str  = "생년 항목은 필수입니다.";                         break;
            //     case "memberBirth3"      : str  = "생년 항목은 필수입니다.";                         break;
            //     case "emailFlag"        : str  = "이메일 수신 항목은 필수입니다.";                  break;
            //     case "smsFlag"          : str  = "SMS 수신동의 항목은 필수입니다.";                 break;
            // }

            const memberName = document.getElementById("memberName");
                if(memberName.value.trim().length == 0 ){
                    memberName.focus();
                    alert("성명 항목은 필수입니다.");
                    event.preventDefault();//제출 이벤트제거
                    return;
                } 
            
                
                if(memberId.value.trim().length == 0){
                    memberId.focus();
                    alert("아이디 항목은 필수입니다.");
                    event.preventDefault();//제출 이벤트제거
                    return;
                }

            // const regEx = /^[a-z0-9]{6,20}$/;
            // if(!regEx.test(memberId.value)){
            //     memberId.focus();
            //     alert("아이디 항목의 아이디 형식이 올바르지 않습니다.\n\n영소문자, 숫자로 6~20자까지 가능합니다.");
            //     event.preventDefault();//제출 이벤트제거
            //     return;
            // }

            const memberPw = document.getElementById("memberPw");
                if(memberPw.value.trim().length == 0){
                    memberPw.focus();
                    alert("비밀번호 항목은 필수입니다.");
                    event.preventDefault();//제출 이벤트제거
                    return;
                }

            const memberPwConfirm = document.getElementById("memberPwConfirm");
            if((memberPw.value.trim().length != 0 && memberPwConfirm.value.trim().length == 0)
            || (memberPw.value != memberPwConfirm.value)){
                memberPwConfirm.focus();
                alert("비밀번호 항목의 입력된 내용이 일치하지 않습니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            const regEx2 = /^(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

            if((!regEx2.test(memberPw.value) && !regEx2.test(memberPwConfirm.value))){
                memberPw.focus();
                alert("비밀번호 항목의 비밀번호 형식이 올바르지 않습니다.\n\n비밀번호는 특수문자를 포함해 8~20자로 입력해주세요.");
                event.preventDefault();//제출 이벤트제거
                return;
            }

            if(memberPhone1.value.trim().length === 0) {
                memberPhone1.focus();
                alert("휴대폰 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberPhone2.value.trim().length === 0) {
                memberPhone2.focus();
                alert("휴대폰 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberPhone3.value.trim().length === 0) {
                memberPhone3.focus();
                alert("휴대폰 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }

            if(memberEmail1.value.trim().length === 0) {
                memberEmail1.focus();
                alert("이메일 항목의 이메일 형식이 올바르지 않습니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberEmail2.value.trim().length === 0) {
                memberEmail2.focus();
                alert("이메일 항목의 이메일 형식이 올바르지 않습니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberEmail3.value.trim().length === 0) {
                memberEmail3.focus();
                alert("이메일 항목의 이메일 형식이 올바르지 않습니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
    
            const memberGender = document.getElementById("memberGender");
            if(document.getElementById("memberGender").value ===""){
                memberGender.focus();
                alert("성별 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }

            if(memberBirth1.value ===""){
                memberBirth1.focus();
                alert("생년 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberBirth2.value ===""){
                memberBirth2.focus();
                alert("생년 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            if(memberBirth3.value ===""){
                memberBirth3.focus();
                alert("생년 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }

            const emailFlag1 = document.getElementById("emailFlag1")
            const emailFlag2 = document.getElementById("emailFlag2")
            if((emailFlag1.checked === false) && (emailFlag2.checked === false)){
                alert("이메일 수신 항목은 필수입니다.");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            
            const smsFlag1 = document.getElementById("smsFlag1")
            const smsFlag2 = document.getElementById("smsFlag2")

            if((smsFlag1.checked === false) && (smsFlag2.checked === false)){
                alert("SMS 수신동의 항목은 필수입니다");
                event.preventDefault();//제출 이벤트제거
                return;
            }
            
});
    



