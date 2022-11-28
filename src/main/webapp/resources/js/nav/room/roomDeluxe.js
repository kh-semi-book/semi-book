let slideImage = document.getElementById("slideImage");
let imageArray1 = [
"/resources/image/nav/rooms/deluxe/deluxe1.jpg",
"/resources/image/nav/rooms/deluxe/deluxe2.jpg",
"/resources/image/nav/rooms/deluxe/deluxe3.jpg",
"/resources/image/nav/rooms/deluxe/deluxe4.jpg"]

// let imageArray2 = [
// "/resources/image/nav/rooms/cornerDeluxe/cornerDeluxe1.jpg",
// "/resources/image/nav/rooms/cornerDeluxe/cornerDeluxe2.jpg",
// "/resources/image/nav/rooms/cornerDeluxe/cornerDeluxe3.jpg",
// "/resources/image/nav/rooms/cornerDeluxe/cornerDeluxe4.jpg"];
let imageIndex = 0;

function changeImage1(){
    slideImage.setAttribute("src",imageArray1[imageIndex]);
    imageIndex++;
    if(imageIndex>=imageArray1.length){
        imageIndex=0;
    }

}
// function changeImage2(){
//     slideImage.setAttribute("src",imageArray2[imageIndex]);
//     imageIndex++;
//     if(imageIndex>=imageArray2.length){
//         imageIndex=0;
//     }

// }

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


// document.getElementsByClassName("prev")[0].addEventListener("click",function(){
//     imageIndex--;
//     if(imageIndex<0){
//         imageIndex=imageArray2.length-1;
//     }
//     slideImage.setAttribute("src",imageArray2[imageIndex]);
// })

// document.getElementsByClassName("next")[0].addEventListener("click",function(){
//     imageIndex++;
//     if(imageIndex>=imageArray2.length){
//         imageIndex=0;
//     }
//     slideImage.setAttribute("src",imageArray2[imageIndex]);
// })

// setInterval(changeImage2,10000);