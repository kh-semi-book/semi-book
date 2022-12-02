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

$("#memberEmail3").change(function(){
    $("#memberEmail2").val($("#memberEmail3").val());
  })