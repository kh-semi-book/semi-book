const selectBtn=document.getElementsByClassName("selectBtn");
const bedType=document.getElementsByName("bedType")[0];
const roomTypeName=document.getElementsByName("roomTypeName")[0];

for(let btn of selectBtn){
    btn.addEventListener("click",function(){
        bedType.value=btn.parentElement.children[0].children[0].innerText;
        roomTypeName.value=btn.parentElement.parentElement.parentElement.children[0].innerHTML;        
    })
}



