let slideImage = document.getElementById("slideImage");
let imageArray = ["/resources/image/nav/rooms/deluxe/deluxe1.jpg",
"/resources/image/nav/rooms/deluxe/deluxe2.jpg",
"/resources/image/nav/rooms/deluxe/deluxe3.jpg",
"/resources/image/nav/rooms/deluxe/deluxe4.jpg"];
let imageIndex = 0;

function changeImage(){
    slideImage.setAttribute("src",imageArray[imageIndex]);
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
    slideImage.setAttribute("src",imageArray[imageIndex]);
})

document.getElementsByClassName("next")[0].addEventListener("click",function(){
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }
    slideImage.setAttribute("src",imageArray[imageIndex]);
})

setInterval(changeImage,10000);