const checkAll = document.getElementsByName("checkAll"); // 전체동의 체크박스
// const checked = document.get // 선택된 체크박스
const checkAgree = document.getElementsByName("checkAgree"); // 전체 체크박스

checkAll[0].addEventListener("change", () => {
    console.log("전체체크박스 체크됨");
    
    for ( checkList of checkAgree){
        checkList.checked = checkAll.checked;
    }
});

