const selectBtn=document.getElementsByClassName("selectBtn");
const bedTypeNo=document.getElementsByName("bedTypeNo")[0];
const roomTypeNo=document.getElementsByName("roomTypeNo")[0];
const roomViewNo=document.getElementsByName("roomViewNo")[0];
const promotionNo=document.getElementsByName("promotionNo")[0];
const price=document.getElementsByName("price")[0];

for(let btn of selectBtn){
    btn.addEventListener("click",function(){
        
        roomViewNo.value=btn.parentElement.parentElement.parentElement.children[0].id;
        roomTypeNo.value=btn.parentElement.parentElement.parentElement.children[1].id;
        promotionNo.value=btn.parentElement.parentElement.parentElement.children[2].id;
        price.value=btn.parentElement.children[1].id;
        bedTypeNo.value=btn.id;
    })
}



