
let myImage=document.getElementById("aboutImage");
let imageArray=["/resources/image/nav/about/hidden_company01.jpg","/resources/image/nav/about/hidden_company02.jpg","/resources/image/nav/about/hidden_company03.jpg"];
let imageIndex=0;

function changeImage(){
    myImage.setAttribute("src",imageArray[imageIndex]);
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }

    
    console.log(imageIndex);
}

document.getElementsByClassName("prev")[0].addEventListener("click",()=>{
    imageIndex--;
    if(imageIndex<0){
        imageIndex=imageArray.length-1;
    }

    myImage.setAttribute("src",imageArray[imageIndex]);
})

document.getElementsByClassName("next")[0].addEventListener("click",()=>{
    imageIndex++;
    if(imageIndex>=imageArray.length){
        imageIndex=0;
    }
    myImage.setAttribute("src",imageArray[imageIndex]);
})

setInterval(changeImage,10000);
