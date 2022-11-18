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


