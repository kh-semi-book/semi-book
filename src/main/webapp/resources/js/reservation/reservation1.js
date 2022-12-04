
$(document).ready(function() {
    // calendarInit();
    nextCalendarInit();
});
/*
    달력 렌더링 할 때 필요한 정보 목록 

    현재 월(초기값 : 현재 시간)
    금월 마지막일 날짜와 요일
    전월 마지막일 날짜와 요일
*/


// 날짜 정보 가져오기
var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
// 달력에서 표기하는 날짜 객체

function nextCalendarInit() {

  
    var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
    var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
    var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

    var checkOutDate1 = currentDate+1; // 달력에서 checkout 표기용

    // 박수 계산용?
    let checkInText1="";
    let checkOutText1="";
    
    // 오른쪽에 표시되는 텍스트
    // 달력에서 날짜 선택시 바뀜
    const checkInInput=document.getElementById("checkInInput");
    const checkOutInput=document.getElementById("checkOutInput");
    
    
    if(currentMonth<10){
        currentMonth="0"+currentMonth;
    }
    if(currentDate<10){
        currentDate="0"+currentDate;
    }
    if(checkOutDate1<10){
        checkOutDate1="0"+checkOutDate1;
    }

    // 여기가 오른쪽에 표시되는 텍스트 대입용
    let checkInText=currentYear+"-"+(currentMonth+1)+"-"+(currentDate);
    const saveToday=checkInText;
    checkInInput.value=checkInText+" ("+getDayOfWeek(checkInText)+")";

    // 날짜 출력
    let checkOutText=currentYear+"-"+(currentMonth+1)+"-"+(checkOutDate1);
    checkOutInput.value=checkOutText+" ("+getDayOfWeek(checkOutText)+")";

    const nights=document.getElementById("nights");
    



    // 캘린더 렌더링
    // 달력이 양쪽에 있기 때문에 따로 렌더링
    renderCalender(thisMonth);
    renderCalender1(thisMonth);

    function renderCalender(thisMonth) {

        // 렌더링을 위한 데이터 정리
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();

        // 이전 달의 마지막 날 날짜와 요일 구하기
        var startDay = new Date(currentYear, currentMonth, 0);
        var prevDate = startDay.getDate();
        var prevDay = startDay.getDay();

        // 이번 달의 마지막날 날짜와 요일 구하기
        var endDay = new Date(currentYear, currentMonth + 1, 0);
        var nextDate = endDay.getDate();
        var nextDay = endDay.getDay();

        let checkinbefore;


        // 현재 월 표기
        $('.year-month').text(currentYear + '.' + (currentMonth + 1));
        // $('.year-month1').text(currentYear + '.' + (currentMonth + 1));

        // 렌더링 html 요소 생성
        calendar = document.querySelector('.dates')
        calendar.innerHTML = '';

        if(prevDay!=6){
        // 지난달
        for (var i = prevDate - prevDay; i <= prevDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
        }

        }
        // 이번달
        for (var i = 1; i <= nextDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day current">' + i + '</div>'
        }
        // 다음달
        for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
        }

        // 오늘 날짜 표기
        if (today.getMonth() == currentMonth) {
            todayDate = today.getDate()-1;
            var currentMonthDate = document.querySelectorAll('.dates .current');
            console.log(todayDate);
            checkinbefore=currentMonthDate[todayDate];
            checkinbefore.classList.add('today');
        }

        const checkInSelect=document.getElementsByClassName("day current");
    // 체크인 날짜 받아오기 
    
    for(let selectday of checkInSelect){
       
        selectday.addEventListener("click",function(){

        if(checkinbefore!=null){
            checkinbefore.classList.remove("today");

        }
        selectday.classList.add("today");

        checkinbefore=selectday;
        
        if(selectday.innerHTML<10){
            if(currentMonth+1<10){
                checkInText=currentYear+"-0"+(currentMonth+1)+"-0"+selectday.innerHTML;
            }else{
                checkInText=currentYear+"-"+(currentMonth+1)+"-0"+selectday.innerHTML;
            }
        }else{
            if(currentMonth+1<10){
                checkInText=currentYear+"-0"+(currentMonth+1)+"-"+selectday.innerHTML;
            }else{
                checkInText=currentYear+"-"+(currentMonth+1)+"-"+selectday.innerHTML;
            }
        }



        checkInText1=new Date(currentYear,currentMonth,selectday.innerHTML);

        

        // if(Number(selectday.innerHTML)<10){
        //     thisMonth = new Date(currentYear, currentMonth + 1, 1);
        //     renderCalender2(thisMonth,1); 
        // }
        // renderCalender2(thisMonth, selectday.innerHTML);

        checkInInput.value=checkInText+" ("+getDayOfWeek(checkInText)+")";
        

        })
    }


    }


    function renderCalender1(thisMonth) {

        // 렌더링을 위한 데이터 정리
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();

        // 이전 달의 마지막 날 날짜와 요일 구하기
        var startDay = new Date(currentYear, currentMonth, 0);
        var prevDate = startDay.getDate();
        var prevDay = startDay.getDay();

        // 이번 달의 마지막날 날짜와 요일 구하기
        var endDay = new Date(currentYear, currentMonth + 1, 0);
        var nextDate = endDay.getDate();
        var nextDay = endDay.getDay();

        console.log(prevDay);

        // console.log(prevDate, prevDay, nextDate, nextDay);

        // 현재 월 표기
        // $('.year-month').text(currentYear + '.' + (currentMonth + 1));
        $('.year-month1').text(currentYear + '.' + (currentMonth + 1));

        // 렌더링 html 요소 생성
        calendar1 = document.querySelector('.dates1')
        calendar1.innerHTML = '';

        let checkoutbefore;
        

        if(prevDay!=6){
        // 지난달
        for (var i = prevDate - prevDay; i <= prevDate; i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day prev disable">' + i + '</div>'
        }

        }
        // 이번달
        for (var i = 1; i <= nextDate; i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day1 current1">' + i + '</div>'
        }
        // 다음달
        for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day next disable">' + i + '</div>'
        }

        // 내일 날짜 표기
        if (today.getMonth() == currentMonth) {
            todayDate = today.getDate();
            var currentMonthDate1 = document.querySelectorAll('.dates1 .current1');
            checkoutbefore=currentMonthDate1[todayDate];
            checkoutbefore.classList.add('today');
        }

        const checkOutSelect=document.getElementsByClassName("day1 current1");
        // 체크아웃 날짜 받아오기
        // let checkOutText1="";
        for(let selectday of checkOutSelect){
           
            selectday.addEventListener("click",function(){
    
            if(checkoutbefore!=null){

                checkoutbefore.classList.remove("today");
            }
            selectday.classList.add("today");
            checkoutbefore=selectday;
    
            if(selectday.innerHTML<10){
                if(currentMonth+1<10){
                    checkOutText=currentYear+"-0"+(currentMonth+1)+"-0"+selectday.innerHTML;
                    checkOutText1=currentYear+"0"+(currentMonth+1)+"0"+selectday.innerHTML;
                }else{
                    checkOutText=currentYear+"-"+(currentMonth+1)+"-0"+selectday.innerHTML;
                    checkOutText1=currentYear+""+(currentMonth+1)+"0"+selectday.innerHTML;
                }
            }else{
                if(currentMonth+1<10){
                    checkOutText=currentYear+"-0"+(currentMonth+1)+"-"+selectday.innerHTML;
                    checkOutText1=currentYear+"0"+(currentMonth+1)+""+selectday.innerHTML;
                }else{
                    checkOutText=currentYear+"-"+(currentMonth+1)+"-"+selectday.innerHTML;
                    checkOutText1=currentYear+""+(currentMonth+1)+""+selectday.innerHTML;
                }
            }

            checkOutText1=new Date(currentYear,currentMonth,selectday.innerHTML);

            checkOutInput.innerText=checkOutText+" ("+getDayOfWeek(checkOutText)+")";

            nights.value=(checkOutText1.getTime()-checkInText1.getTime())/(1000*60*60*24);
        })
        }
    }

   

    // 이전달로 이동
    $('.go-prev').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth - 1, 1);
        renderCalender(thisMonth);
        renderCalender1(thisMonth);
    });

    // 다음달로 이동
    $('.go-next').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth + 1, 1);
        renderCalender(thisMonth); 
        renderCalender1(thisMonth); 
    });


    // 이전달로 이동
    $('.go-prev1').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth - 1, 1);
        renderCalender1(thisMonth);
    });

    // 다음달로 이동
    $('.go-next1').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth + 1, 1);
        renderCalender1(thisMonth); 
    });

    
    // const checkInSelect=document.getElementsByClassName("day current");
    // // 체크인 날짜 받아오기 
    // let checkInText="";
    // let checkInText1="";
    // for(let selectday of checkInSelect){
       
    //     selectday.addEventListener("click",function(){

    //     selectday.classList.add("today");
        
    //     if(selectday.innerHTML<10){
    //         checkInText=currentYear+"-"+(currentMonth+1)+"-0"+selectday.innerHTML;
    //         checkInText1=currentYear+""+(currentMonth+1)+"0"+selectday.innerHTML;
    //     }else{
    //         checkInText=currentYear+"-"+(currentMonth+1)+"-"+selectday.innerHTML;
    //         checkInText1=currentYear+""+(currentMonth+1)+""+selectday.innerHTML;
    //     }

    //     console.log(checkInText1);

    //     checkInInput.innerText=checkInText+" ("+getDayOfWeek(checkInText)+")";
    //     })
    // }


    // const checkOutSelect=document.getElementsByClassName("day1 current1");
    // // 체크아웃 날짜 받아오기
    // let checkOutText="";
    // let checkOutText1="";
    // for(let selectday of checkOutSelect){
       
    //     selectday.addEventListener("click",function(){

    //     selectday.classList.add("today");

    //     if(selectday.innerHTML<10){
    //         checkOutText=currentYear+"-"+(currentMonth+1)+"-0"+selectday.innerHTML;
    //         checkOutText1=currentYear+""+(currentMonth+1)+"0"+selectday.innerHTML;
    //     }else{
    //         checkOutText=currentYear+"-"+(currentMonth+1)+"-"+selectday.innerHTML;
            
    //     }

    //     checkOutInput.innerText=checkOutText+" ("+getDayOfWeek(checkOutText)+")";
    //     })
    // }

}



function getDayOfWeek(insertdate){ //ex) getDayOfWeek('2022-06-13')

    const week = ['일', '월', '화', '수', '목', '금', '토'];

    const dayOfWeek = week[new Date(insertdate).getDay()];

    return dayOfWeek;

}

function renderCalender2(thisMonth, nextDatee){

    // 렌더링을 위한 데이터 정리
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();

        // 이전 달의 마지막 날 날짜와 요일 구하기
        var startDay = new Date(currentYear, currentMonth, 0);
        var prevDate = startDay.getDate();
        var prevDay = startDay.getDay();

        // 이번 달의 마지막날 날짜와 요일 구하기
        var endDay = new Date(currentYear, currentMonth + 1, 0);
        var nextDate = endDay.getDate();
        var nextDay = endDay.getDay();

        console.log(prevDay);

        // console.log(prevDate, prevDay, nextDate, nextDay);

        // 현재 월 표기
        // $('.year-month').text(currentYear + '.' + (currentMonth + 1));
        $('.year-month1').text(currentYear + '.' + (currentMonth + 1));

        // 렌더링 html 요소 생성
        calendar1 = document.querySelector('.dates1')
        calendar1.innerHTML = '';

        let checkoutbefore;
        

        if(prevDay!=6){
        // 지난달
        for (var i = prevDate - prevDay; i <= prevDate; i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day prev disable">' + i + '</div>'
        }

        }
        // 이번달
        for (var i = 1; i <= nextDate; i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day1 current1">' + i + '</div>'
        }
        // 다음달
        for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
            calendar1.innerHTML = calendar1.innerHTML + '<div class="day next disable">' + i + '</div>'
        }

        // 내일 날짜 표기
        if (today.getMonth() == currentMonth) {
            todayDate = today.getDate();
            var currentMonthDate1 = document.querySelectorAll('.dates1 .current1');
            checkoutbefore=currentMonthDate1[nextDatee];
        
            console.log(nextDatee);
            
            checkoutbefore.classList.add('today');
        }

        if(nextDatee<10){
            checkOutText=currentYear+"-"+(currentMonth+1)+"-0"+nextDatee;
            checkOutText1=currentYear+""+(currentMonth+1)+"0"+nextDatee;
        }else{
            checkOutText=currentYear+"-"+(currentMonth+1)+"-"+nextDatee;
            checkOutText1=currentYear+""+(currentMonth+1)+""+nextDatee;
            
        }
        console.log(checkOutText1);
        checkOutInput.innerText=checkOutText+" ("+getDayOfWeek(checkOutText)+")";

        nights.value=Number(checkOutText1)-Number(checkInText1);

        // const checkOutSelect=document.getElementsByClassName("day1 current1");
        // // 체크아웃 날짜 받아오기
        // // let checkOutText1="";
        // for(let selectday of checkOutSelect){
           
        //     selectday.addEventListener("click",function(){
    
        //     if(checkoutbefore!=null){

        //         checkoutbefore.classList.remove("today");
        //     }
        //     selectday.classList.add("today");
        //     checkoutbefore=selectday;
    
        //     if(selectday.innerHTML<10){
        //         checkOutText=currentYear+"-"+(currentMonth+1)+"-0"+selectday.innerHTML;
        //         checkOutText1=currentYear+""+(currentMonth+1)+"0"+selectday.innerHTML;
        //     }else{
        //         checkOutText=currentYear+"-"+(currentMonth+1)+"-"+selectday.innerHTML;
        //         checkOutText1=currentYear+""+(currentMonth+1)+""+selectday.innerHTML;
                
        //     }
        //     console.log(checkOutText1);
        //     checkOutInput.innerText=checkOutText+" ("+getDayOfWeek(checkOutText)+")";

        //     nights.value=Number(checkOutText1)-Number(checkInText1);
        //     })
        // }
    }