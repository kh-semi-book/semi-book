
var TopMenu, TopMenuPosition; // 전역변수로 지정한다.
TopMenu = document.getElementById('side-table'); // 고정될 메뉴바를 인식한다.
TopMenuPosition = TopMenu.offsetTop; // 고정될 메뉴바의 처음 위치를 인식한다.
// 스크롤이 되면 실행될 함수
function submenu_bar_fixed(){
    // 스크롤되는 값과 고정될 메뉴바 위치를 비교해서 고정시킬 class 적용 또는 해제 한다.
    if ( window.pageYOffset >= TopMenuPosition ) {
        TopMenu.classList.add("side-sticky");
    } else {
        TopMenu.classList.remove("side-sticky");
    }
}
// 스크롤이 되면 실행될 함수 지정
document.addEventListener('scroll',submenu_bar_fixed);





// select시 추가 
const selectList=document.querySelectorAll("select");
const sideOptionTitle=document.getElementsByClassName("side-option-cost")[0];

for(let select of selectList){
    select.addEventListener("change",function(){

        const div=document.createElement("div");
        div.classList.add("option-select");

        const div1=document.createElement("div");
        div1.classList.add("side-option-name");

        const table=document.createElement("table");
        table.classList.add("side-room-select");

        div.append(div1,table);

        const tr=document.createElement("tr");
        table.append(tr);

        const td=document.createElement("td");
        const td1=document.createElement("td");
        tr.append(td,td1);

        // const span=document.createElement("span");
        // const span1=document.createElement("span");
        // td1.append(span);

        const sideOptionName=document.getElementsByClassName("side-option-name");

        //옵션 이름 
        const optionName=select.parentElement.parentElement.children[0].innerHTML;
        const optionSelectDate=select.parentElement.parentElement.parentElement.parentElement.children[0].innerText;
        const optionCost=select.parentElement.parentElement.children[1].innerText+'('+select.parentElement.parentElement.children[2].children[0].value+'개)';
        
        div1.innerText=optionName;
        td.innerText=optionSelectDate;
        td1.innerText=optionCost;
  
        
       

        
        
        for(let name of sideOptionName){
            if(optionName==name.innerText){

                const innerDate=name.parentElement.children[1].children;

                for(let dates of innerDate){
                   	console.log(dates.children[0].innerText);
                   if(dates.children[0].innerText==optionSelectDate){
                        dates.remove();
                       
                   }
                }
                
                name.nextSibling.append(tr);
                
               
                return;
            }
        }
    
        
        sideOptionTitle.before(div); 
    })
}
// 2022-12-23/15/1

const optionCount=document.getElementsByName("optionCount");
const submitbtn=document.querySelector("button");
const hiddenInput=document.getElementsByName("optionSet")[0];

const optionSet=new Set();
let i=0;
submitbtn.addEventListener("click",()=>{

    for(let count of optionCount){
        if(count.value>0){
            
            let inputtext= count.parentElement.parentElement.parentElement.parentElement.children[0].innerText
                        +"/"+count.id+"/"+count.value;
                        // 옵션 날짜/옵션번호/옵션개수

            optionSet.add(inputtext);

        }
    }

    hiddenInput.value=Array.from(optionSet);

})
