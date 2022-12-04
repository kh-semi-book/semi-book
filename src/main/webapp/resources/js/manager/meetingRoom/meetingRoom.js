// 돌아가기 버튼 
const goToMeetingRoom = document.getElementById("return");

goToMeetingRoom.addEventListener("click", () => {

    const pathname = location.pathname; 

    const url = pathname.substring(0, 20)
    console.log(url);

    location.href = url;

});