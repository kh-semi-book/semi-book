const chooseRoomBtn =document.getElementsByClassName("chooseRoomBtn");


for(let chooseBtn of chooseRoomBtn){
    chooseBtn.addEventListener("click",function(){
        
        console.log(this.parentElement.parentElement.children[1].innerHTML);
        opener.document.getElementById("bookRoomNum").value=this.parentElement.parentElement.children[1].innerHTML;

        window.close();
    })
    
}