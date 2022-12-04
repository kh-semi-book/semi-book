//로그인 유효성 검사
// 로그인 form태그 submit 이벤트 취소하기
    const inputNameId = document.querySelector("[name='inputName-id']");
    const inputEmailId = document.querySelector("[name='inputEmail-id']");

document.getElementById("find-id-btn").addEventListener("click",function(event){

    
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
        data : {"memberName" : inputNameId.value,
                "memberEmail" : inputEmailId.value  },
        type : "POST",
        success : function(result){
            if(result.length!= 0){ 
                
                alert("회원님의 아이디는 '"+result+"'입니다.");
               
            } else { // 실패
                alert("입력하신 내용으로 일치하는 정보가 없습니다.");
            }

        },

        error :function(req){
            console.log("조회 실패")
            console.log(req.responseText);
        }
    });
})



document.getElementById("find-pw-btn").addEventListener("click",function(event){

    const inputId = document.querySelector("[name='inputId']");
    const inputNamePw = document.querySelector("[name='inputName-pw']");
    const inputEmailPw = document.querySelector("[name='inputEmail-pw']");
    
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

    $.ajax({
        url : "/member/findPw",
        data : {"memberId" : inputId.value,

                "memberName" : inputNamePw.value,
                "memberEmail" : inputEmailPw.value  },
        type : "POST",
        success : function(result){
            if(result>0){ 
                
                alert("회원가입 시 등록된 이메일("+inputEmailPw.value+")로 임시 비밀번호를 발송해드렸습니다."+
                "\n\n임시 비밀번호로 로그인 하신 후 마이페이지에서 비밀번호를 변경하시기 바랍니다.");

               
            } else { // 실패
                alert("입력하신 내용으로 일치하는 정보가 없습니다.");
            }

        },

        error :function(req){
            console.log("댓글 등록 실패")
            console.log(req.responseText);
        }
    });

});