
var TopMenu, TopMenuPosition; // 전역변수로 지정한다.
TopMenu = document.getElementById('side-table'); // 고정될 메뉴바를 인식한다.
TopMenuPosition = TopMenu.offsetTop; // 고정될 메뉴바의 처음 위치를 인식한다.
// 스크롤이 되면 실행될 함수
function submenu_bar_fixed(){
    // 스크롤되는 값과 고정될 메뉴바 위치를 비교해서 고정시킬 class 적용 또는 해제 한다.
    if ( window.pageYOffset >= TopMenuPosition ) {
        TopMenu.classList.add("side-sticky");
    } else {
        TopMenu.classList.remove("side-sticky");
    }
}
// 스크롤이 되면 실행될 함수 지정
document.addEventListener('scroll',submenu_bar_fixed);