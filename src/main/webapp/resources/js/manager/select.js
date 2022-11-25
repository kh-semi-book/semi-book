const input1=document.querySelector("[name='searchDateInput1']").value;
const input2=document.querySelector("[name='searchDateInput2']").value;

document.getElementById("searchOptionBtn").addEventListener("click",()=>{
    if((input1!=''&&input2=='')||(input1==''&&input2!='')){
        alert("날짜를 모두 선택해주세요");
    }
})

function updateBook(bookNo, btn){
    $.ajax({
        url:"/manager/select/update",
        data:{
    
        },
        type:"POST",
        success: function(result){
            if(result>0){
                confirm("")
            }
        }

    })
}