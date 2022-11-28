let slideImage = document.getElementById("slideImage");
let imageArray1 = [
    "/resources/image/nav/rooms/YeraeSuite/YeraeSuite1.jpg",
    "/resources/image/nav/rooms/YeraeSuite/YeraeSuite2.jpg",
    "/resources/image/nav/rooms/YeraeSuite/YeraeSuite3.jpg",
    "/resources/image/nav/rooms/YeraeSuite/YeraeSuite4.jpg"]


let imageIndex = 0;

function changeImage1(){
    slideImage.setAttribute("src",imageArray1[imageIndex]);
    imageIndex++;
    if(imageIndex>=imageArray1.length){
        imageIndex=0;
    }

}

document.getElementsByClassName("prev")[0].addEventListener("click",function(){
    imageIndex--;
    if(imageIndex<0){
        imageIndex=imageArray1.length-1;
    }
    slideImage.setAttribute("src",imageArray1[imageIndex]);
})

document.getElementsByClassName("next")[0].addEventListener("click",function(){
    imageIndex++;
    if(imageIndex>=imageArray1.length){
        imageIndex=0;
    }
    slideImage.setAttribute("src",imageArray1[imageIndex]);
})

setInterval(changeImage1,10000);


