const liAnimation=document.getElementsByClassName("li-animation");

for(let item of liAnimation){ 
    item.addEventListener("mouseover",function(){
       // nav area
     this.parentElement.parentElement.parentElement.style.height="100px";
     //this.parentElement.parentElement.parentElement.style.backgroundColor="white";
     this.parentElement.parentElement.parentElement.style.transitionDuration="0.7s";
     
     // innerlist
     this.parentElement.children[1].style.display="block";
     this.parentElement.children[1].style.opacity ="1";
     this.parentElement.children[1].style.transitionDuration="2s";
 
     // a태그
     this.style.borderBottom="1px solid black";
    })


    item.parentElement.addEventListener("mouseleave",function(){
        this.children[1].style.display="none";
        this.children[1].style.opacity="0";
        this.children[0].style.border="none";
    })
}

document.getElementById("nav-area").addEventListener("mouseleave", function(){
    // nav area
    this.style.height="60px";
    this.style.transitionDuration="0.8s";

    // a태그
    this.children[0].children[0].children[0].style.border="none";
    this.children[0].children[1].children[0].style.border="none";
    this.children[0].children[2].children[0].style.border="none";
    this.children[0].children[3].children[0].style.border="none";
    this.children[0].children[4].children[0].style.border="none";
    this.children[0].children[5].children[0].style.border="none";
    this.children[0].children[6].children[0].style.border="none";
    this.children[0].children[7].children[0].style.border="none";

    // innerlist
    this.children[0].children[0].children[1].style.display="none";
    this.children[0].children[1].children[1].style.display="none";
    this.children[0].children[2].children[1].style.display="none";
    this.children[0].children[3].children[1].style.display="none";
    this.children[0].children[4].children[1].style.display="none";
    this.children[0].children[5].children[1].style.display="none";
    this.children[0].children[6].children[1].style.display="none";
    this.children[0].children[7].children[1].style.display="none";
});
