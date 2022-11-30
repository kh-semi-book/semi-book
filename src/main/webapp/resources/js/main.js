let myImage=document.getElementById("mainImage");
let imageArray=["/resources/image/mainimg1.jpeg","/resources/image/mainImg2.jpeg","/resources/image/mainImg3.jpeg"];
let imageIndex=0;

function changeImage(){
    myImage.setAttribute("src",imageArray[imageIndex]);
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }

}

document.getElementsByClassName("prev")[0].addEventListener("click",function(){
    imageIndex--;
    if(imageIndex<0){
        imageIndex=imageArray.length-1;
    }
    myImage.setAttribute("src",imageArray[imageIndex]);
})

document.getElementsByClassName("next")[0].addEventListener("click",function(){
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }
    myImage.setAttribute("src",imageArray[imageIndex]);
})

setInterval(changeImage,10000);


// 유튜브 이동

let slides= document.querySelector("#videoSlide");
let slideImg=document.querySelector("#videoSlide li");

let i=0;
let count=slides.childElementCount;

const prev1=document.getElementsByClassName("prev1")[0];
const next1=document.getElementsByClassName("next1")[0];

let slideWidth=1000;

next1.addEventListener("click",function(){
    i++;

    if(i>=count){
        i=0;
    }


    slides.style.translate= -(i*1000)+"px";

})
prev1.addEventListener("click",function(){
    i--;

    if(i<0){
        i=count-1;
    }

    slides.style.translate=-(i*1000)+"px";

})


