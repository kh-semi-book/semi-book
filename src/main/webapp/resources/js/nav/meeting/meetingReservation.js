const checkList ={

    "meetingMenName": false,      
    "meetingMenPhone": false,     
    "meetingMenEmail": false,     
    "meetingBookCompany": false,  
    "meetingHeadCount": false,    
    "meetingBookDate": false,     
    "meetingBookContent": false,   
}

document.getElementById("bsh-frm").addEventListener("submit", function(event){
    
    
    
    
    for (let key in checkList) {

        let str;

        if (!checkList[key]) {

            switch (key) {
                case "meetingMenName": str = "성명 항목은 필수입니다."; break;
                case "meetingMenPhone": str = "휴대폰 항목은 필수입니다."; break;
                case "meetingMenEmail": str = "이메일 항목은 필수입니다."; break;
                case "meetingBookCompany": str = "업체명 항목은 필수입니다."; break;
                case "meetingHeadCount": str = "인원수 항목은 필수입니다."; break;
                case "meetingBookDate": str = "행사일시 항목은 필수입니다."; break;
                case "meetingBookContent": str = "내용 항목은 필수입니다."; break;
            }
            alert(str); // 대화상자 출력

            // 유효하지 않은 입력으로 포커스 이동 
            document.getElementById(key).focus();
            // 제출 이벤트 제거
            event.preventDefault();
            // 함수 종료 
            return;
        }
    }
    
    
    // 체크박스
    const checkBox = document.getElementById("checkBox");

    if(!checkBox.checked){
    
        if(confirm("개인정보 수집 및 이용에 대한 동의가 필요합니다. 동의하시겠습니까?")){
            checkBox.checked=true;
            event.preventDefault();
        } else{
            event.preventDefault();
        }
    }

});

// 성명 입력란 
const meetingMenName = document.getElementById("meetingMenName");

meetingMenName.addEventListener("input",()=>{

    if (!meetingMenName.value.trim().length == 0) {

        checkList.meetingMenName = true;
    }
});

// 전화번호 입력란
const meetingMenPhone = document.getElementById("meetingMenPhone");

meetingMenPhone.addEventListener("input",()=>{

    if (!meetingMenPhone.value.trim().length == 0) {

        checkList.meetingMenPhone = true;
    }
});

// // 이메일 입력란
const meetingMenEmail = document.getElementById("meetingMenEmail");

meetingMenEmail.addEventListener("input",()=>{

    if (!meetingMenEmail.value.trim().length == 0) {

        checkList.meetingMenEmail = true;
    }
});

// 업체명 입력란
const meetingBookCompany = document.getElementById("meetingBookCompany");

meetingBookCompany.addEventListener("input",()=>{

    if (!meetingBookCompany.value.trim().length == 0) {

        checkList.meetingBookCompany = true;
    }
});

// 인원수 입력란
const meetingHeadCount = document.getElementById("meetingHeadCount");

meetingHeadCount.addEventListener("input",()=>{

    if (!meetingHeadCount.value.trim().length == 0) {

        checkList.meetingHeadCount = true;
    }
});

// 행사일시 입력란
const meetingBookDate = document.getElementById("meetingBookDate");

meetingBookDate.addEventListener("input",()=>{

    if (!meetingBookDate.value.trim().length == 0) {

        checkList.meetingBookDate = true;
    }
});

// 내용 입력란
const meetingBookContent = document.getElementById("meetingBookContent");

meetingBookContent.addEventListener("input",()=>{

    if (!meetingBookContent.value.trim().length == 0) {

        checkList.meetingBookContent = true;
    }
});




// str.substr(2, 4);


// // 목록으로 버튼 

// const goToReservation = document.getElementsByClassName("bsh-btngray");

// goToReservation.addEventListener("click", () => {

//     const pathname = location.pathname; // http://localhost/nav/meeting/opus

//     const queryString = location.search; // ?cp=7

//     const url = pathname.substring(0, pathname.lastIndexOf("/")) + queryString; // /board/1?cp=7

//     localhost/nav/meeting/meetingReservation
//     location.href = url;


// });



