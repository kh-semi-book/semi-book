const selectEmail = document.getElementById("memberEmail3");
const inputEmail = document.getElementById("memberEmail2");

const chpwd = document.getElementById("chpboxcheck");

const newPw1 = document.getElementById("new-pw1");
const newPw2 = document.getElementById("new-pw2");

// selectEmail.addEventListener("change", (){
//     inputEmail.val(selectEmail.val())
// })

function checkNewPw(){

   if($(".new-pw1").hasClass("hide")){
    $(".new-pw1").removeClass("hide"); // 새비밀번호가 보이게 된다.
   }

}