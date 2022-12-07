
const options="width=1200, height=500, top=50, left=100";

const bookRoomNum = document.getElementsByClassName("bookRoomNum");
// const bookNo = document.getElementsByClassName("bookNo");
var temp;
// for(let book of bookRoomNum){
for(let roomNum of bookRoomNum){
   
    roomNum.addEventListener("click",function(){
        
        const bookNum=this.parentElement.parentElement.children[2].innerText;
        window.open("/manager/test?bookNum="+bookNum,"popupWindow", options);
    });


}

const updateBtn = document.getElementById("updateBtn");


updateBtn.addEventListener("click", function(){ // 저장 버튼이 클릭이 되었을 때
    

    const confirmText="객실 : "+bookRoomNum1.value
                    +"\n인원수 : "+ bookHeadCount.value
                    +"\n체크인 : "+ checkIn.value
                    +"\n체크아웃 : "+ checkOut.value
                    +"\n진행상태 : "+ roomProcess.value
                    +"\n\n저장하시겠습니까?"

    if(confirm(confirmText)){

        // 3) AJAX를 이용해서 내용 DB에 저장
        // $.ajax({
        //     url : "/comment/insert",
        //     data : {"commentContent" : commentContent.value,
        //             "memberNo" : memberNo,
        //             "boardNo" : boardNo },
        //     type : "post",
        //     success : function(result){

        //         if(result > 0){ // 등록 성공
        //             alert("댓글이 등록되었습니다.");

        //             commentContent.value = ""; // 작성했던 댓글 삭제

        //             selectCommentList(); // 비동기 댓글 목록 조회 함수 호출
        //             // -> 새로운 댓글이 추가되어짐

        //         } else { // 실패
        //             alert("댓글 등록에 실패했습니다...");
        //         }

        //     },

        //     error : function(req, status, error){
        //         console.log("댓글 등록 실패")
        //         console.log(req.responseText);
        //     }
        // });

    }

    
});

const input1=document.querySelector("[name='inputDate1']").value;
const input2=document.querySelector("[name='inputDate2']").value;
const textInput=document.getElementsByClassName("search-option-input")[0];

document.getElementById("searchOptionBtn").addEventListener("click",(e)=>{

	if(textInput.value.trim().length==0){
		alert("검색어를 입력해주세요");
		e.preventDefault();
	}else{
	
    if((input1!=''&&input2=='')||(input1==''&&input2!='')){
        alert("날짜를 모두 선택해주세요");
    }
    }
})