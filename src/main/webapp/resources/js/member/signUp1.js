const checkAll = document.getElementsByName("checkAll"); // 전체동의 체크박스
// const checked = document.get // 선택된 체크박스
// const checkAgree = document.getElementsByName("checkAgree"); // 나머지 체크박스
const checkAgree = document.querySelectorAll('input[name="checkAgree"]:checked').length; // 나머지 체크박스

// function OnSave(){
// checkAll[0].addEventListener("change", () => {
//     console.log("전체체크박스 체크됨");
    
//     if(checkAgree == 0){
//         alert("체크박스를 하나 이상 선택해주세요")
//         return false;
//     }
//     // for ( checkList of checkAgree){
//     //     checkList.checked = checkAll.checked;
//     // }
// });
// }
function OnSave(){

    
    if(checkAgree == 0){
        alert("체크박스를 하나 이상 선택해주세요")
        return false;
    }
  
}
