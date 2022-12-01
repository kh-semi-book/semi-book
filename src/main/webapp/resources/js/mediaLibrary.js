let prev;
$(".media-youtube-link").click(function() {
    // console(this.children[1]);
    
    if(prev!=undefined){
        prev.classList.remove("mediaClick");
        prev.children[1].classList.remove("playLogo");
    }

    bigVideo.src=this.children[0].alt;
    this.classList.add("mediaClick");
    this.children[1].classList.add("playLogo");

    prev=event.currentTarget;

});