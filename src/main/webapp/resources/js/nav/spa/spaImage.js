// 이미지 비율 조정 
function imgSize(which){
    var width = eval("document."+which+".width");
    var height = eval("document."+which+".height");
    var temp = 0; 
    var max_width= 600;   // 이미지의 가로 최대 크기    
    var max_height = 400; // 이미지의 세로 최대 크기
    
    if ( width > max_width ) {  // 이미지가 600보다 크다면 너비를 600으로 맞우고 비율에 맞춰 세로값을 변경한다.      
        height = height/(width / max_width);
        eval("document."+which+".width = max_width");     
        eval("document."+which+".height = height");
        width = max_width;     
    }
 
    if( height > max_height ) {
        width = width/(height / max_height);
        eval(document.getElementById(which).width = width);
        eval(document.getElementById(which).height = max_height);
    }
}