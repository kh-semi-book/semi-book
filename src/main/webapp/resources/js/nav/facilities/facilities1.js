let myImage=document.getElementById("mainImage");
let imageArray=["/resources/image/nav/facilities/kiz/kiz1.jpg", 
                "/resources/image/nav/facilities/kiz/kiz2.jpg"];
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

