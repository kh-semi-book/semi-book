const checkAll=document.getElementsByName("checkAll")[0];
const checkAgree=document.getElementsByName("checkAgree");
let flag=false;

checkAll.addEventListener("change",()=>{
    for(let check of checkAgree){
        if(checkAll.checked){
            check.checked=true;
            flag=true;
        }else{
            check.checked=false;
            flag=false;
        }
    }
});

for(let check of checkAgree){
    check.addEventListener("change",()=>{
        console.log("클릭");

        
        if(checkAgree[0].checked&&checkAgree[1].checked&&checkAgree[2].checked&&checkAgree[3].checked){
            checkAll.checked=true;
            flag=true;
        }else{
            checkAll.checked=false;
            flag=false;
        }
        
    })

}

document.getElementById("signup1check").addEventListener("click",(event)=>{

    // if(flag){
    //     checkAll.checked=true;
    // }
    
    if(!flag){
        alert("이용약관에 동의하셔야 가입하실 수 있습니다.\n\n끝까지 읽어주셔야 동의하실 수 있습니다.");
        event.preventDefault();
    }
})