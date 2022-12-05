const newpw1=document.getElementsByClassName("new-pw1")[0];
const newpw2=document.getElementsByClassName("new-pw2")[0];

document.getElementById("chpwboxcheck").addEventListener("change",()=>{
    
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
        memberEmail2.disabled = false;
        memberEmail2.value = "";

    } else{
        memberEmail2.disabled = true;
    }
});