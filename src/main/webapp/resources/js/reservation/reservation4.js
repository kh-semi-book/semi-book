

const phone1=document.getElementById("book-input-phone1");
const phone2=document.getElementById("book-input-phone2");
const phone3=document.getElementById("book-input-phone3");

const card1=document.getElementById("book-input-cardNum1");
const card2=document.getElementById("book-input-cardNum2");
const card3=document.getElementById("book-input-cardNum3");
const card4=document.getElementById("book-input-cardNum4");

 const birth1=document.getElementById("book-input-birth1");
 const birth2=document.getElementById("book-input-birth2");
 const birth3=document.getElementById("book-input-birth3");
 
 const cardExpireDate1=document.getElementById("book-input-cardValidity1").value;
 const cardExpireDate2=document.getElementById("book-input-cardValidity2").value;
 

const guestEmail1=document.getElementById("book-input-email1").value;
const guestEmail2=document.getElementById("book-input-email2").value









// 양식 제출


const checkObj = {
    "booker2" : true, /* 투숙자 */
    "book-input-email1" : true, /* 이메일 */
    "book-input-email3" : true, /* @ */
    "book-input-phone1" : true, /* 휴대폰1 */
    "book-input-phone2" : true, /* 휴대폰2 */
    "book-input-phone3" : true, /* 휴대폰3 */
    "book-input-cardType" : false, /* 카드종류 */
    "book-input-cardNum1" : false, /* 카드번호1 */
    "book-input-cardNum2" : false, /* 카드번호2 */
    "book-input-cardNum3" : false, /* 카드번호3 */
    "book-input-cardNum4" : false, /* 카드번호4 */
    "agree" : false, /* 동의 */
}


document.getElementById("reservation4_form").addEventListener("submit",e=>{

    // checkObi의 속성 중 하나라도 false가 있다면 제출 이벤트 제거
    for(let key in checkObj){
        
        let str;
        
        // checkObj의 속성 하나를 꺼내 값을 검사했는데 false인 경우
        if(!checkObj[key]) {
            switch(key) {
                case"booker2" :
                    str="투숙자 항목은 필수입니다."; break;
                case "book-input-email1":  case "book-input-email3" :  
                    str="이메일 항목의 이메일 형식이 올바르지 않습니다."; break;
                case "book-input-phone1" :  case "book-input-phone2" :  case "book-input-phone3" :  
                    str="휴대폰 항목은 필수입니다."; break;
                case "book-input-cardType" :  
                    str="카드종류를 선택해주세요."; break;
                case "book-input-cardNum1" :
                    str="카드 번호 앞 4자리는 필수입니다."; break;
                case "book-input-cardNum2" :
                    str="카드 번호 두번째 4자리는 필수입니다."; break;
                case "book-input-cardNum3" :
                    str="카드 번호 세번째 4자리는 필수입니다."; break;
                case "book-input-cardNum4" :
                    str="카드 번호 네번째 4자리는 필수입니다."; break;
                case "agree" : 
                    str="취소정책 및 개인정보 수집 동의는 필수입니다."; break;
            }

            alert(str);
            document.getElementById(key).focus();
            e.preventDefault();
            return;
        }
    }

});

//투숙자
const booker1 = document.getElementById("booker1");
const booker2 = document.getElementById("booker2");
if(booker2 !=null){
    booker2.value= booker1.value;
    document.getElementById("equal").addEventListener("change",()=>{

        if(equal.checked==true){
            booker2.value = booker1.value;
            checkObj.booker2=true;
        } else {
            booker2.value='';
            checkObj.booker2=false;
        }

    });
    
}

booker2.addEventListener("input",()=>{
    if(booker2.value.trim().length==0){
        checkObj.booker2=false;
    } else {
        checkObj.booker2=true;
    }
});

//이메일


const book_input_email1 = document.getElementById("book-input-email1");
const book_input_email2 = document.getElementById("book-input-email2");
const book_input_email3 = document.getElementById("book-input-email3");
book_input_email1.addEventListener("input",()=>{
    if(book_input_email1.value.trim().length==0){
        checkObj["book-input-email1"]=false;
    } else{
        checkObj["book-input-email1"]=true;
    }
});

book_input_email3.addEventListener("change", function(){
    console.log(book_input_email3.value);
    book_input_email2.value = book_input_email3.value
    let guestPhone=phone1.value+phone2.value+phone3.value;
	
	console.log(guestPhone);
    if(book_input_email3.value == '직접입력'){
        book_input_email2.readonly = false;
        book_input_email2.value = "";

    } else{
        book_input_email2.readonly = true;
    }
});

book_input_email3.addEventListener("input",()=>{
    if(book_input_email3.value.trim().length==0){
        checkObj["book-input-email1"]=false;
        return;
    }
    const regEx = /^[가-힣\w\-\_]+(\.\w+){1,3}$/;
    if(!regEx.test(book_input_email3.value)) {
        checkObj["book-input-email3"]=false;
    } else {
        checkObj["book-input-email3"]=true;
    }
});

    



//휴대폰
const book_input_phone1 = document.getElementById("book-input-phone1");
const book_input_phone2 = document.getElementById("book-input-phone2");
const book_input_phone3 = document.getElementById("book-input-phone3");
book_input_phone1.addEventListener("input",()=>{
    if(book_input_phone1.value.trim().length==0){
        checkObj["book-input-phone1"]=false;
        return;
    } 
    const regEx = /^[\d]{2,4}$/;
    if(!regEx.test(book_input_phone1.value)) {
        checkObj["book-input-phone1"]=false;
    } else {
        checkObj["book-input-phone1"]=true;
    }
});
book_input_phone2.addEventListener("input",()=>{
    if(book_input_phone2.value.trim().length==0){
        checkObj["book-input-phone2"]=false;
        return;
    }
    const regEx = /^[\d]{2,4}$/;
    if(!regEx.test(book_input_phone2.value)) {
        checkObj["book-input-phone2"]=false;
    } else {
        checkObj["book-input-phone2"]=true;
    }
});
book_input_phone3.addEventListener("input",()=>{
    if(book_input_phone3.value.trim().length==0){
        checkObj["book-input-phone3"]=false;
        return;
    }
    const regEx = /^[\d]{2,4}$/;
    if(!regEx.test(book_input_phone3.value)) {
        checkObj["book-input-phone3"]=false;
    } else {
        checkObj["book-input-phone3"]=true;
    }
});

// 카드종류
const book_input_cardType = document.getElementById("book-input-cardType");
book_input_cardType.addEventListener("change",e=>{
    if(book_input_cardType.value=='선택'){
        checkObj["book-input-cardType"]=false;
    } else{
        checkObj["book-input-cardType"]=true;
    }
});

// 카드번호
const book_input_cardNum1 = document.getElementById("book-input-cardNum1");
const book_input_cardNum2 = document.getElementById("book-input-cardNum2");
const book_input_cardNum3 = document.getElementById("book-input-cardNum3");
const book_input_cardNum4 = document.getElementById("book-input-cardNum4");

book_input_cardNum1.addEventListener("input",()=>{
    const regEx = /^[\d]{1,4}$/;
    if(book_input_cardNum1.value.trim().length==0){
        checkObj["book-input-cardNum1"]=false;
        return;
    }
    if(!regEx.test(book_input_cardNum1.value)){
        checkObj["book-input-cardNum1"]=false;
    } else{
        checkObj["book-input-cardNum1"]=true;
    }
});
book_input_cardNum2.addEventListener("input",()=>{
    const regEx = /^[\d]{1,4}$/;
    if(book_input_cardNum2.value.trim().length==0){
        checkObj["book-input-cardNum2"]=false;
        return;
    }
    if(!regEx.test(book_input_cardNum2.value)){
        checkObj["book-input-cardNum2"]=false;
    } else{
        checkObj["book-input-cardNum2"]=true;
    }
});
book_input_cardNum3.addEventListener("input",()=>{
    const regEx = /^[\d]{1,4}$/;
    if(book_input_cardNum3.value.trim().length==0){
        checkObj["book-input-cardNum3"]=false;
        return;
    }
    if(!regEx.test(book_input_cardNum3.value)){
        checkObj["book-input-cardNum3"]=false;
    } else{
        checkObj["book-input-cardNum3"]=true;
    }
});
book_input_cardNum4.addEventListener("input",()=>{
    const regEx = /^[\d]{1,4}$/;
    if(book_input_cardNum4.value.trim().length==0){
        checkObj["book-input-cardNum4"]=false;
        return;
    }
    if(!regEx.test(book_input_cardNum4.value)){
        checkObj["book-input-cardNum4"]=false;
    } else{
        checkObj["book-input-cardNum4"]=true;
    }
});

// 동의
const agree = document.getElementById("agree");
agree.addEventListener("change", ()=>{
    if(agree.checked){
        checkObj.agree=true;
    } else{
        checkObj.agree=false;
    }
});





document.getElementById("reservation4_form").addEventListener("submit",function(e){
   
    const cardNo=card1.value+card2.value+card3.value+card4.value;
	const guestBirth=birth1.value+"-"+birth2.value+"-"+birth3.value;
	const guestEmail=guestEmail1.value+"@"+guestEmail2.value;
	const cardExpireDate=cardExpireDate1.value+cardExpireDate2.value;
	const guestPhone=phone1.value+phone2.value+phone3.value;
    

    alert(guestPhone);
   
    
    document.getElementsByName("cardExpireDate")[0].value=cardExpireDate;
    document.getElementsByName("cardNo")[0].value=cardNo;
    document.getElementsByName("guestPhone")[0].value=guestPhone;
    document.getElementsByName("guestEmail")[0].value=guestEmail;
    document.getElementsByName("guestBirth")[0].value=guestBirth;

    
})