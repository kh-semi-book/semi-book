
const statusChange = document.getElementById("manage-book-status-change");

statusChange.addEventListener("click",()=>{
    $.ajax({
        url:"/changeStatus",
        data:{},
        type:"GET",
        success:(result)=>{

        }, error:()=>{console.log("수정 에러");}
    })
});
