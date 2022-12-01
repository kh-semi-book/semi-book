// 회원 정보에 부합하는 방 출력 -------------------
const chooseRoomBtn =document.getElementsByClassName("chooseRoomBtn");


for(let chooseBtn of chooseRoomBtn){
    chooseBtn.addEventListener("click",function(){
        
            
        console.log(this.parentElement.parentElement.children[1].innerHTML);

        const urlStr=location.href;
        const url=new URL(urlStr);

        const urlParams=url.searchParams;

        const bookNum=urlParams.get("bookNum");

        let result;
        const openerBookNo=opener.document.getElementsByClassName("bookNo");
        for(let i=0;i<openerBookNo.length;i++){
            if(openerBookNo[i].innerHTML==bookNum){
                result=i;
            }
        }
        opener.document.getElementsByClassName("bookRoomNum")[result].value=this.parentElement.parentElement.children[1].innerHTML;

        window.close();
    })
    
}