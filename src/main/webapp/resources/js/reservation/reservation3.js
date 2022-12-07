
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
const totalOptionCost=document.getElementById("totalOptionCost");
const optionCost=document.getElementsByClassName("optionCost");
const roomsCost=document.getElementById("roomsCost");
const totalCost=document.getElementById("totalCost");
const price=document.getElementsByName("price")[0];
for(let select of selectList){
    select.addEventListener("change",function(){
 		let totalOptionCostinput=0;

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

        const span=document.createElement("span");
        span.classList.add("optionCost");
        const span1=document.createElement("span");
        td1.append(span,span1);

        const sideOptionName=document.getElementsByClassName("side-option-name");

        const optionPrice=Number(select.parentElement.parentElement.children[1].id);
        const optionCount=Number(select.parentElement.parentElement.children[2].children[0].value);

		console.log(optionPrice);
		console.log(optionCount);
	

       
        //옵션 이름 
        const optionName=select.parentElement.parentElement.children[0].innerHTML;
        const optionSelectDate=select.parentElement.parentElement.parentElement.parentElement.children[0].innerText;
        
        
        div1.innerText=optionName;
        td.innerText=optionSelectDate;
        span.innerText=numberWithCommas(optionPrice*optionCount);
        span1.innerText='('+optionCount+'개)';
  
        
      
        
        
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
        
        for(let cost of optionCost){
            totalOptionCostinput+=Number(optionPrice*optionCount);
        }

		totalOptionCost.innerText=numberWithCommas(totalOptionCostinput);

       	price.value=Number(roomsCost.value)+Number(totalOptionCostinput);
        totalCost.innerText=numberWithCommas(price.value)+"원";
        
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

document.resFrm3.addEventListener("submit", e=>{
    const side = document.getElementById("reservation3_side_area").innerHTML;
    document.getElementById("side").value = side;
});

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}