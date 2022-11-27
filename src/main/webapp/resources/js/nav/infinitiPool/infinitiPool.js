let myImage=document.getElementById("mainImage");
let imageArray=["/resources/image/nav/infinitiPool/infinity1.jpg",
                "/resources/image/nav/infinitiPool/infinity2.jpg",
                "/resources/image/nav/infinitiPool/infinity3.jpg",
                "/resources/image/nav/infinitiPool/infinity4.jpg",
                "/resources/image/nav/infinitiPool/infinity5.jpg",
                "/resources/image/nav/infinitiPool/infinity6.jpg",
                "/resources/image/nav/infinitiPool/infinity7.jpg"];
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


