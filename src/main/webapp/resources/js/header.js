const liAnimation=document.getElementsByClassName("li-animation");
const navArea=document.getElementById("nav-area");
const innerList=document.getElementsByClassName("inner-list");

for(let item of liAnimation){ 
    item.addEventListener("mouseover",function(){
        // nav area
        navArea.style.height="100px";
        navArea.style.backgroundColor="white";
        navArea.style.transitionDuration="0.7s";
      
     // innerlist
     this.parentElement.children[1].style.display="block";
     this.parentElement.children[1].style.opacity ="0";
     this.parentElement.children[1].style.transitionDuration="2s";

     setTimeout(() => {
        e.target.parentElement.children[1].style.opacity ="1";
    }, 20);
 
     // a태그
     this.style.borderBottom="1px solid black";
    })


    item.parentElement.addEventListener("mouseleave",function(){
        this.children[1].style.opacity="0";
        this.children[1].style.display="none";// 이걸 넣으면 duration이 사라짐
        this.children[1].style.visibility="visible";
        this.children[1].style.transitionDuration="0s";
        this.children[0].style.border="none";
    })
}

navArea.addEventListener("mouseleave", function(){
    // nav area
    this.style.height="60px";
    this.style.backgroundColor="rgba(255, 255, 255, 0.665)";
});