// 이메일 수정 버튼
const meetingMenEmail3 = document.getElementById("meetingMenEmail3");
const meetingMenEmail2 = document.getElementById("meetingMenEmail2");

meetingMenEmail3.addEventListener("change", ()=>{
    meetingMenEmail2.value = meetingMenEmail3.value

    if(meetingMenEmail3.value == '직접입력'){
        meetingMenEmail2.readonly = false;
        meetingMenEmail2.value = "";

    } else{
        meetingMenEmail2.readonly = true;
    }
});



const checkList ={

    "meetingMenName": false,      
    "meetingMenPhone1": false,     
    "meetingMenPhone2": false,     
    "meetingMenPhone3": false,     
    "meetingMenEmail1": false,     
    "meetingMenEmail2": false,     
    "meetingBookCompany": false,  
    "meetingHeadCount": false,    
    "meetingBookDate": false,     
    "meetingBookContent": false,   
}

document.getElementById("meetingUpdate").addEventListener("submit", function(event){
    
    
    
    
    for (let key in checkList) {

        let str;

        if (!checkList[key]) {

            switch (key) {
                case "meetingMenName": str = "성명 항목은 필수입니다."; break;
                case "meetingMenPhone1": str = "휴대폰 항목은 필수입니다."; break;
                case "meetingMenPhone2": str = "휴대폰 항목은 필수입니다."; break;
                case "meetingMenPhone3": str = "휴대폰 항목은 필수입니다."; break;
                case "meetingMenEmail1": str = "이메일 항목은 필수입니다."; break;
                case "meetingMenEmail2": str = "이메일 항목은 필수입니다."; break;
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
    


});

// 성명 입력란 
const meetingMenName = document.getElementById("meetingMenName");

meetingMenName.addEventListener("input",()=>{

    if (!meetingMenName.value.trim().length == 0) {

        checkList.meetingMenName = true;
    } else{
        checkList.meetingMenName = false;
    }
});

// 전화번호 입력란
const meetingMenPhone1 = document.getElementById("meetingMenPhone1");

meetingMenPhone1.addEventListener("input",()=>{

    if (!meetingMenPhone1.value.trim().length == 0) {

        checkList.meetingMenPhone1 = true;
    } else{
        checkList.meetingMenPhone1 = false;
    }
    
});
const meetingMenPhone2 = document.getElementById("meetingMenPhone2");

meetingMenPhone2.addEventListener("input",()=>{

    if (!meetingMenPhone2.value.trim().length == 0) {

        checkList.meetingMenPhone2 = true;
    } else{
        checkList.meetingMenPhone2 = false;
    }
});
const meetingMenPhone3 = document.getElementById("meetingMenPhone3");

meetingMenPhone3.addEventListener("input",()=>{

    if (!meetingMenPhone3.value.trim().length == 0) {

        checkList.meetingMenPhone3 = true;
    } else{
        checkList.meetingMenPhone3 = false;
    }
});

// // 이메일 입력란
const meetingMenEmail1 = document.getElementById("meetingMenEmail1");

meetingMenEmail1.addEventListener("input",()=>{

    if (!meetingMenEmail1.value.trim().length == 0) {

        checkList.meetingMenEmail1 = true;
    } else{
        checkList.meetingMenEmail1 = false;
    }
});

meetingMenEmail2.addEventListener("input",()=>{

    if (!meetingMenEmail2.value.trim().length == 0) {

        checkList.meetingMenEmail2 = true;
    } else{
        checkList.meetingMenEmail2 = false;
    }
});

// 업체명 입력란
const meetingBookCompany = document.getElementById("meetingBookCompany");

meetingBookCompany.addEventListener("input",()=>{

    if (!meetingBookCompany.value.trim().length == 0) {

        checkList.meetingBookCompany = true;
    } else{
        checkList.meetingBookCompany = false;
    }
});

// 인원수 입력란
const meetingHeadCount = document.getElementById("meetingHeadCount");

meetingHeadCount.addEventListener("input",()=>{

    if (!meetingHeadCount.value.trim().length == 0) {

        checkList.meetingHeadCount = true;
    } else{
        checkList.meetingHeadCount = false;
    }
});

// 행사일시 입력란
const meetingBookDate = document.getElementById("meetingBookDate");

meetingBookDate.addEventListener("input",()=>{

    if (!meetingBookDate.value.trim().length == 0) {

        checkList.meetingBookDate = true;
    } else{
        checkList.meetingBookDate = false;
    }
});

// 내용 입력란
const meetingBookContent = document.getElementById("meetingBookContent");

meetingBookContent.addEventListener("input",()=>{

    if (!meetingBookContent.value.trim().length == 0) {

        checkList.meetingBookContent = true;
    } else{
        checkList.meetingBookContent = false;
    }
});


