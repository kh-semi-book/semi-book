
// 이미지 미리보기
const inputTitleImg = document.getElementById("inputTitleImg");
const selectTitleImg = document.getElementsByClassName("select-image")[0];
const inputConImg = document.getElementById("inputConImg");
const selectConImg = document.getElementsByClassName("select-image")[1];
const deleteTitleBtn = document.getElementsByClassName("deleteBtn")[0];
const deleteConBtn = document.getElementsByClassName("deleteBtn")[1];

inputTitleImg.addEventListener("change", e => {

    if (e.target.files[0] != undefined) {

        const reader = new FileReader();

        reader.readAsDataURL(e.target.files[0]);

        reader.onload = event => {
            selectTitleImg.setAttribute("src", event.target.result);
        }

    } else { // 취소가 눌러진 경우

        // 초기 이미지로 다시 변경
        selectTitleImg.setAttribute("src", "");
    }
});


inputConImg.addEventListener("change", e => {

    if (e.target.files[0] != undefined) {

        const reader = new FileReader();

        reader.readAsDataURL(e.target.files[0]);

        reader.onload = event => {
            selectConImg.setAttribute("src", event.target.result);
        }

    } else { // 취소가 눌러진 경우

        // 초기 이미지로 다시 변경
        selectConImg.setAttribute("src", "");
    }

});

// x버튼이 클릭됐을 경우 -> 기본이미지로 변경
deleteTitleBtn.addEventListener("click", () => {
    selectTitleImg.setAttribute("src", "")
    inputTitleImg.value = '';
});

// x버튼이 클릭됐을 경우 -> 기본이미지로 변경
deleteConBtn.addEventListener("click", () => {
    selectConImg.setAttribute("src", "")
    inputConImg.value = '';
});