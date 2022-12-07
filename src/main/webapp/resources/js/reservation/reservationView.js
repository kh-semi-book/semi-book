function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}



const reservationChange = document.getElementById("rsc-btn-change");
if(reservationChange!=null){
    reservationChange.addEventListener("click",()=>{
        alert("예약 취소/변경시 예약과로 전화주시기 바랍니다. (02-2277-9999)");
    });
    
}

