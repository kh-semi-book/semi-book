// const input1=document.querySelector("[name='searchDateInput1']").value;
// const input2=document.querySelector("[name='searchDateInput2']").value;

// document.getElementById("searchOptionBtn").addEventListener("click",()=>{
//     if((input1!=''&&input2=='')||(input1==''&&input2!='')){
//         alert("날짜를 모두 선택해주세요");
//     }
// })

// function updateBook(bookNo, btn){
//     $.ajax({
//         url:"/manager/select/update",
//         data:{
    
//         },
//         type:"POST",
//         success: function(result){
//             if(result>0){
//                 confirm("")
//             }
//         }

//     })
// }

// const bookRoomNum = document.getElementById("bookRoomNum");

// bookRoomNum.addEventListener("focus",()=>{
    
//     const options="width=1200, height=500, top=50, left=100";
//     window.open("/manager/test","popupWindow", options);
// })

const options="width=1200, height=500, top=50, left=100";




// const bookNum=document.getElementsByClassName("bookNum");

const bookRoomNum = document.getElementsByClassName("bookRoomNum");
const bookNo = document.getElementsByClassName("bookNo");
var temp;
// for(let book of bookRoomNum){
for(let i=0;i<bookRoomNum.length;i++){
   
    bookRoomNum[i].onclick = function (event) {
        // alert(event);
        console.log(i);
        temp=i;
        // const nodes = [bookRoomNum.parentElement.children];

        // const index = nodes.indexOf(book);
        
        
        console.log(temp);
        const bookNum=event.target.parentElement.parentElement.children[2].innerHTML;
        window.open("/manager/test?bookNum="+bookNum,"popupWindow", options);
    };


}

// function clickBookRoom(e){
//     const bookNum=e.parentElement.parentElement.children[2].innerHTML;
//     window.open("/manager/test?bookNum="+bookNum,"popupWindow", options);

//     console.log("click");
// }

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