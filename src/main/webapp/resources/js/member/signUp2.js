
const newPw1 = document.getElementById("new-pw1");
const newPw2 = document.getElementById("new-pw2");


const pwCheckBox = document.getElementById("chpwboxcheck")


pwCheckBox.addEventListener("click" , function(){

    if(pwCheckBox.checked){
        newPw1.classList.remove("hide");
        newPw2.classList.remove("hide");
    } else{
        newPw1.classList.add("hide");
        newPw2.classList.add("hide");
    }
})


