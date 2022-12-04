const selectBtn=document.getElementsByClassName("selectBtn");
const roomCnt=document.getElementById("roomCnt");

for(let btn of selectBtn){
    btn.addEventListener("click",function(){

       


    })
}



function gogo(){
	alert("roomCnt");
 	$.ajax({
            url : "/reservation/test",
            data : {"reserve" : roomCnt,
           
                     },
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
}