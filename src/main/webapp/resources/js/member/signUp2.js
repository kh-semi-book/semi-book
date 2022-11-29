var m_birth1 = document.getElementById("m-birth1"); // 년
var m_birth2 = document.getElementById("m-birth2"); // 월
var m_birth3 = document.getElementById("m-birth3"); // 일


var arrayMonth = [31,28,31,30,31,30,31,31,30,31,30,31];

if((m_birth1 % 4 == 0 && m_birth1 % 100 != 0) || m_birth1 % 400 == 0){
    arrayMonth[1] = 29;

}

for (var i = m_birth3.length; i > 0 ; i--){
    m_birth3.remove(m_birth3.selectedIndex);
}

// 이메일

/* $("select[name=memberEmail].on("change", funtion(){

})

 */