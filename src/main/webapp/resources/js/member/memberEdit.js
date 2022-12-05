// 비밀번호 변경 숨기기 
const newpw1=document.getElementsByClassName("new-pw1")[0];
const newpw2=document.getElementsByClassName("new-pw2")[0];

document.getElementById("chpwboxcheck").addEventListener("change",()=>{
    
    if(!newpw1.classList.contains("hide")){
        newpw1.classList.add("hide");
        newpw2.classList.add("hide");
    }else{
        
        newpw1.classList.remove("hide");
        newpw2.classList.remove("hide");

        // 새로운 비밀번호 입력
        const memberPw = document.getElementById("memberPw");

        memberPw.addEventListener("input",()=>{

        if (!memberPw.value.trim().length == 0) {
            alert("새로운 비밀번호를 입력해주세요.");
            memberPw.focus();
            checkList.memberPw = true;
        } else{
            checkList.memberPw = false;
        }
    
        });

        // 새로운 비밀번호 확인 입력
        const memberPwConfirm = document.getElementById("memberPwConfirm");

        memberPwConfirm.addEventListener("input",()=>{

        if (!membmemberPwConfirmerPw.value.trim().length == 0) {
            alert("새로운 비밀번호를 다시 한번 입력해주세요.");
            memberPwConfirm.focus();
            checkList.memberPwConfirm = true;
        } else{
            checkList.memberPwConfirm = false;
        }
    
        });


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

//

const checkList ={
    "currentMemberPw": false,
    "memberPhone1": false,     
    "memberPhone2": false,     
    "memberPhone3": false,     
    "memberEmail1": false,     
    "memberEmail2": false,     
}

document.getElementById("joinform").addEventListener("submit", function(event){
    
    for (let key in checkList) {

        let str;

        if (!checkList[key]) {

            switch (key) {
                case "currentMemberPw": str = "비밀번호를 입력해주세요."; break;
                case "memberPhone1": str = "휴대폰 번호를 입력해주세요."; break;
                case "memberPhone2": str = "휴대폰 번호를 입력해주세요."; break;
                case "memberPhone3": str = "휴대폰 번호를 입력해주세요."; break;
                case "memberEmail1": str = "이메일을 입력해주세요."; break;
                case "memberEmail2": str = "이메일을 입력해주세요."; break;
            }
            alert(str); // 대화상자 출력

            // 유효하지 않은 입력으로 포커스 이동 
            document.getElementById(key).focus();
            // 제출 이벤트 제거
            event.preventDefault();
            // 함수 종료 
            return;
        }
    }
    

});


// 비밀번호 입력
const currentMemberPw = document.getElementById("currentMemberPw");

currentMemberPw.addEventListener("input",()=>{

    if (!currentMemberPw.value.trim().length == 0) {

        checkList.currentMemberPw = true;
    } else{
        checkList.currentMemberPw = false;
    }
    
});
// 휴대폰 입력란 1
const memberPhone1 = document.getElementById("memberPhone1");

memberPhone1.addEventListener("input",()=>{

    if (!memberPhone1.value.trim().length == 0) {

        checkList.memberPhone1 = true;
    } else{
        checkList.memberPhone1 = false;
    }
    
});

// 휴대폰 입력란 2
const memberPhone2 = document.getElementById("memberPhone2");

memberPhone2.addEventListener("input",()=>{

    if (!memberPhone2.value.trim().length == 0) {

        checkList.memberPhone2 = true;
    } else{
        checkList.memberPhone2 = false;
    }
});

// 휴대폰 입력란 3
const memberPhone3 = document.getElementById("memberPhone3");

memberPhone3.addEventListener("input",()=>{

    if (!memberPhone3.value.trim().length == 0) {

        checkList.memberPhone3 = true;
    } else{
        checkList.memberPhone3 = false;
    }
});

//  이메일 입력란 1
const memberEmail1 = document.getElementById("memberEmail1");

memberEmail1.addEventListener("input",()=>{

    if (!memberEmail1.value.trim().length == 0) {

        checkList.memberEmail1 = true;
    } else{
        checkList.memberEmail1 = false;
    }
});

//  이메일 입력란 2
memberEmail2.addEventListener("input",()=>{

    if (!memberEmail2.value.trim().length == 0) {

        checkList.memberEmail2 = true;
    } else{
        checkList.memberEmail2 = false;
    }
});












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