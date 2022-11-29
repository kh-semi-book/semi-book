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

for(let book of bookRoomNum){

    book.addEventListener("focus",()=>{

        let popup=window.open("about:blank","popupWindow", options);

        const bookNum=book.parentElement.parentElement.children[2].innerHTML;
        
        $.ajax({
            url:"/manager/test",
            data:{"bookNum":bookNum},
            method:"GET",
            success:function(){
                popup.location.href="test"
            },
            error:function(){
        
            }
        })
    })
}
