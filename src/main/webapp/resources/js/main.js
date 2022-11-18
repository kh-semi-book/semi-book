let myImage=document.getElementById("titleImage");
let imageArray=["/resources/image/mainimg1.jpeg","/resources/image/mainImg2.jpeg","/resources/image/mainImg3.jpeg"];
let imageIndex=0;

function changeImage(){
    myImage.setAttribute("src",imageArray[imageIndex]);
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }

   
    console.log(imageIndex);
}

document.getElementById("prev").addEventListener("click",function(){
    imageIndex--;
    if(imageIndex<0){
        imageIndex=imageArray.length-1;
    }
    alert("클릭");
    myImage.setAttribute("src",imageArray[imageIndex]);
})

document.getElementById("next").addEventListener("click",function(){
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }
    myImage.setAttribute("src",imageArray[imageIndex]);
})

setInterval(changeImage,10000);


