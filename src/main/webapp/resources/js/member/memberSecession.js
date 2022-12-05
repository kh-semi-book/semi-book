
const checkList ={
    "memberName": false,
    "memberId": false,     
    "memberPw": false,     
    "memberEmail": false,     
}

document.getElementById("rsc-memeber-del").addEventListener("submit", function(event){
    
    for (let key in checkList) {

        let str;

        if (!checkList[key]) {

            switch (key) {
                case "memberName": str = "이름을 입력해주세요."; break;
                case "memberId": str = "아이디를 입력해주세요."; break;
                case "memberPw": str = "비밀번호를 입력해주세요."; break;
                case "memberEmail": str = "이메일을 입력해주세요."; break;
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


// 이름 입력
const memberName = document.getElementById("memberName");

memberName.addEventListener("input",()=>{

    if (!memberName.value.trim().length == 0) {

        checkList.memberName = true;
    } else{
        checkList.memberName = false;
    }
    
});

// 아이디 입력
const memberId = document.getElementById("memberId");

memberId.addEventListener("input",()=>{

    if (!memberId.value.trim().length == 0) {

        checkList.memberId = true;
    } else{
        checkList.memberId = false;
    }
    
});

// 비밀번호 입력
const memberPw = document.getElementById("memberPw");

memberPw.addEventListener("input",()=>{

    if (!memberPw.value.trim().length == 0) {

        checkList.memberPw = true;
    } else{
        checkList.memberPw = false;
    }
});

// 이메일 입력
const memberEmail = document.getElementById("memberEmail");

memberEmail.addEventListener("input",()=>{

    if (!memberEmail.value.trim().length == 0) {

        checkList.memberEmail = true;
    } else{
        checkList.memberEmail = false;
    }
});
