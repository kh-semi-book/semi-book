// 비밀번호 변경 숨기기 
const newpw1=document.getElementsByClassName("new-pw1")[0];
const newpw2=document.getElementsByClassName("new-pw2")[0];
const chpwboxcheck = document.getElementById("chpwboxcheck");


chpwboxcheck.addEventListener("change",()=>{
    
    if(!newpw1.classList.contains("hide")){
        newpw1.classList.add("hide");
        newpw2.classList.add("hide");
    }else{
        
        newpw1.classList.remove("hide");
        newpw2.classList.remove("hide");

    }
})

// 이메일 수정 버튼
const memberEmail3 = document.getElementById("memberEmail3");
const memberEmail2 = document.getElementById("memberEmail2");

memberEmail3.addEventListener("change", function(){
    memberEmail2.value = memberEmail3.value

    if(memberEmail3.value == '직접입력'){
        memberEmail2.readonly = false;
        memberEmail2.value = "";

    } else{
        memberEmail2.readonly = true;
    }
});


const joinform = document.getElementById("joinform");

if(joinform != null){

    joinform.addEventListener("submit",function(event){

        // 비밀번호 유효성 검사 
        const memberPw =document.getElementById("memberPw");
        if (memberPw.value.trim().length == 0) {
            alertAndFocus(memberPw, "현재 비밀번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }

        if(chpwboxcheck.checked){

            const newPw =document.getElementById("newPw");
            if (newPw.value.trim().length == 0) {
                alertAndFocus(newPw, "새 비밀번호를 입력해주세요.");
                event.preventDefault(); 
                return;
            }

            const newPwConfirm =document.getElementById("newPwConfirm");
            if (newPwConfirm.value.trim().length == 0) {
                alertAndFocus(newPwConfirm, "새 비밀번호 확인을 입력해주세요.");
                event.preventDefault(); 
                return;
            }


            if (newPw.value != newPwConfirm.value) {
                alert("새 비밀번호가 일치하지 않습니다.");
                memberPw.focus();
                event.preventDefault();
                return;
            }
            
            // 비밀번호 형식 검사 
            const regEx2 = /^(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

            if((!regEx2.test(newPw.value) && !regEx2.test(newPwConfirm.value))){
                memberPw.focus();
                alert("비밀번호 항목의 비밀번호 형식이 올바르지 않습니다.\n\n비밀번호는 특수문자를 포함해 8~20자로 입력해주세요.");
                event.preventDefault();//제출 이벤트제거
                return;
            }

        }    

        // 휴대폰 공백 검사 
        const memberPhone1 =document.getElementById("memberPhone1");
        if (memberPhone1.value.trim().length == 0) {
            alertAndFocus(memberPhone1, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const memberPhone2 =document.getElementById("memberPhone2");
        if (memberPhone2.value.trim().length == 0) {
            alertAndFocus(memberPhone2, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const memberPhone3 =document.getElementById("memberPhone3");
        if (memberPhone1.value.trim().length == 0) {
            alertAndFocus(memberPhone3, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }

        // 이메일 공백 검사 
        const memberEmail1 =document.getElementById("memberEmail1");
        if (memberEmail1.value.trim().length == 0) {
            alertAndFocus(memberEmail1, "이메일을 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const memberEmail2 =document.getElementById("memberEmail2");
        if (memberEmail2.value.trim().length == 0) {
            alertAndFocus(memberEmail2, "이메일을 입력해주세요.");
            event.preventDefault();  
            return;
        }

        
    })

        // 경고창 출력 + 포커스 이동 + 값 삭제 
        function alertAndFocus(input, str) {
        alert(str);
        input.focus();
        input.value;
    }


}

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






















// const checkList ={
//     "currentMemberPw": false,
//     "memberPhone1": false,     
//     "memberPhone2": false,     
//     "memberPhone3": false,     
//     "memberEmail1": false,     
//     "memberEmail2": false,     
// }

// document.getElementById("joinform").addEventListener("submit", function(event){
    
//     for (let key in checkList) {

//         let str;

//         if (!checkList[key]) {

//             switch (key) {
//                 case "currentMemberPw": str = "비밀번호를 입력해주세요."; break;
//                 case "memberPhone1": str = "휴대폰 번호를 입력해주세요."; break;
//                 case "memberPhone2": str = "휴대폰 번호를 입력해주세요."; break;
//                 case "memberPhone3": str = "휴대폰 번호를 입력해주세요."; break;
//                 case "memberEmail1": str = "이메일을 입력해주세요."; break;
//                 case "memberEmail2": str = "이메일을 입력해주세요."; break;
//             }
//             alert(str); // 대화상자 출력

//             // 유효하지 않은 입력으로 포커스 이동 
//             document.getElementById(key).focus();
//             // 제출 이벤트 제거
//             event.preventDefault();
//             // 함수 종료 
//             return;
//         }
//     }
    

// });


// // 비밀번호 입력
// const currentMemberPw = document.getElementById("currentMemberPw");

// currentMemberPw.addEventListener("input",()=>{

//     if (!currentMemberPw.value.trim().length == 0) {

//         checkList.currentMemberPw = true;
//     } else{
//         checkList.currentMemberPw = false;
//     }
    
// });
// // 휴대폰 입력란 1
// const memberPhone1 = document.getElementById("memberPhone1");

// memberPhone1.addEventListener("input",()=>{

//     if (!memberPhone1.value.trim().length == 0) {

//         checkList.memberPhone1 = true;
//     } else{
//         checkList.memberPhone1 = false;
//     }
    
// });

// // 휴대폰 입력란 2
// const memberPhone2 = document.getElementById("memberPhone2");

// memberPhone2.addEventListener("input",()=>{

//     if (!memberPhone2.value.trim().length == 0) {

//         checkList.memberPhone2 = true;
//     } else{
//         checkList.memberPhone2 = false;
//     }
// });

// // 휴대폰 입력란 3
// const memberPhone3 = document.getElementById("memberPhone3");

// memberPhone3.addEventListener("input",()=>{

//     if (!memberPhone3.value.trim().length == 0) {

//         checkList.memberPhone3 = true;
//     } else{
//         checkList.memberPhone3 = false;
//     }
// });

// //  이메일 입력란 1
// const memberEmail1 = document.getElementById("memberEmail1");

// memberEmail1.addEventListener("input",()=>{

//     if (!memberEmail1.value.trim().length == 0) {

//         checkList.memberEmail1 = true;
//     } else{
//         checkList.memberEmail1 = false;
//     }
// });

// //  이메일 입력란 2
// memberEmail2.addEventListener("input",()=>{

//     if (!memberEmail2.value.trim().length == 0) {

//         checkList.memberEmail2 = true;
//     } else{
//         checkList.memberEmail2 = false;
//     }
// });












// $( function() {
//     $("#datepicker").datepicker({
//     numberOfMonths: 3
//     , showWeek: true
//     , firstDay: 1
//     , dateFormat:"yymmdd"
//     , prevText: '이전 달'
//     , nextText: '다음 달'
//     , monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
//     , monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
//     , dayNames: ['일', '월', '화', '수', '목', '금', '토']
//     , dayNamesShort: ['일', '월', '화', '수', '목', '금', '토']
//     , dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
//     , showMonthAfterYear: true
//     , yearSuffix: '년'

//         });
// } );