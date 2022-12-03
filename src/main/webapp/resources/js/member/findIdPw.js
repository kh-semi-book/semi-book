//로그인 유효성 검사
// 로그인 form태그 submit 이벤트 취소하기

document.getElementById("find-id-btn").addEventListener("click",function(event){

    const inputNameId = document.querySelector("[name='inputName-id']");
    const inputEmailId = document.querySelector("[name='inputEmail-id']");
    
    if(inputNameId.value.trim().length == 0){
    
        alert("이름 항목은 필수입니다.");
        inputNameId.focus();
        event.preventDefault();
        return;
    }
    if(inputEmailId.value.trim().length == 0){
    
        alert("이메일 항목은 필수입니다.");
        inputEmailId.focus();
        event.preventDefault();
        return;

    }

    $.ajax({
        url : "/member/findId",
        data : {"inputName" : inputNameId.value,
                "inputEmail" : inputEmailId  },
        type : "post",
        success : function(result){

            if(result != null){ 
                alert("회원님의 아이디는 '"+result+"'입니다.");
            } else { // 실패
                alert("입력하신 내용으로 일치하는 정보가 없습니다.");
            }

        },

        error :function(req){
            console.log("댓글 등록 실패")
            console.log(req.responseText);
        }
    });
})



document.getElementById("find-pw-btn").addEventListener("click",function(event){

    const inputId = document.querySelector("[name='inputName-id']");
    const inputNameId = document.querySelector("[name='inputName-id']");
    const inputEmailId = document.querySelector("[name='inputEmail-id']");
    
    if(inputId.value.trim().length == 0){

        alert("아이디 항목은 필수입니다.");
        inputId.focus();
        event.preventDefault();
        return;
    }
   
    if(inputNameId.value.trim().length == 0){

        alert("이름 항목은 필수입니다.");
        inputNameId.focus();
        event.preventDefault();
        return;
    }
    if(inputEmailId.value.trim().length == 0){

        alert("이메일 항목은 필수입니다.");
        inputEmailId.focus();
        event.preventDefault();
        return;
    }

});