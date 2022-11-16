const liAnimation=document.getElementsByClassName("li-animation");
const navArea=document.getElementById("nav-area");
const innerList=document.getElementById("inner-list");

for(let item of liAnimation){ 
    item.addEventListener("mouseover",function(){
        // nav area
        navArea.style.height="100px";
        navArea.style.backgroundColor="white";
        navArea.style.transitionDuration="0.7s";
     
     // innerlist
     this.parentElement.children[1].style.display="block";
     this.parentElement.children[1].style.opacity ="1";
     this.parentElement.children[1].style.transitionDuration="2s";
 
     // a태그
     this.style.borderBottom="1px solid black";
    })


    item.parentElement.addEventListener("mouseleave",function(){
        this.children[1].style.opacity="0";
        this.children[1].style.transitionDuration="0s";
        this.children[0].style.border="none";
    })
}

navArea.addEventListener("mouseleave", function(){
    // nav area
    this.style.height="60px";
    this.style.backgroundColor="rgba(255, 255, 255, 0.665)";

    // a태그
    for(let item of liAnimation){
        item.style.border="none";
    }
   
    // innerList
    for(let item of innerList){
        item.style.opacity="0";
        item.style.transitionDuration="0s";
    }
});


