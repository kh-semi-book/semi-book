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



const meetingUpdate = document.getElementById("meetingUpdate");

if(meetingUpdate != null){

    meetingUpdate.addEventListener("submit",function(event){


        // 이름 검사
        const meetingMenName =document.getElementById("meetingMenName");
        if (meetingMenName.value.trim().length == 0) {
            alertAndFocus(meetingMenName, "이름을 입력해주세요.");
            event.preventDefault();  
            return;
        }
        // 휴대폰 공백 검사 
        const meetingMenPhone1 =document.getElementById("meetingMenPhone1");
        if (meetingMenPhone1.value.trim().length == 0) {
            alertAndFocus(meetingMenPhone1, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const meetingMenPhone2 =document.getElementById("meetingMenPhone2");
        if (meetingMenPhone2.value.trim().length == 0) {
            alertAndFocus(meetingMenPhone2, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const meetingMenPhone3 =document.getElementById("meetingMenPhone3");
        if (meetingMenPhone3.value.trim().length == 0) {
            alertAndFocus(meetingMenPhone3, "휴대번호를 입력해주세요.");
            event.preventDefault();  
            return;
        }

        // 이메일 공백 검사 
        const meetingMenEmail1 =document.getElementById("meetingMenEmail1");
        if (meetingMenEmail1.value.trim().length == 0) {
            alertAndFocus(meetingMenEmail1, "이메일을 입력해주세요.");
            event.preventDefault();  
            return;
        }
        const meetingMenEmail2 =document.getElementById("meetingMenEmail2");
        if (meetingMenEmail2.value.trim().length == 0) {
            alertAndFocus(meetingMenEmail2, "이메일을 입력해주세요.");
            event.preventDefault();  
            return;
        }
        // 업체명
        const meetingBookCompany =document.getElementById("meetingBookCompany");
        if (meetingBookCompany.value.trim().length == 0) {
            alertAndFocus(meetingBookCompany, "업체명을 입력해주세요.");
            event.preventDefault();  
            return;
        }
        // 인원수
        const meetingHeadCount =document.getElementById("meetingHeadCount");
        if (meetingHeadCount.value.trim().length == 0) {
            alertAndFocus(meetingHeadCount, "인원수를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        // 행사일시
        const meetingBookDate =document.getElementById("meetingBookDate");
        if (meetingBookDate.value.trim().length == 0) {
            alertAndFocus(meetingBookDate, "행사일시를 입력해주세요.");
            event.preventDefault();  
            return;
        }
        // 행사 내용
        const meetingBookContent =document.getElementById("meetingBookContent");
        if (meetingBookContent.value.trim().length == 0) {
            alertAndFocus(meetingBookContent, "행사내용을 입력해주세요.");
            event.preventDefault();  
            return;
        }

        
    })

        // 경고창 출력 + 포커스 이동 + 값 삭제 
        function alertAndFocus(input, str) {
        alert(str);
        input.focus();
        input.value;
    }


}

