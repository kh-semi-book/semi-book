

    const selected = document.getElementById("selected");

    
    const emailValue =selected.options[selected.selectedIndex].value;
    const selectedEmailValue = document.getElementById("memberEmail2");


function selectBoxChange(){


    if(selected.val()== '1'){ //직접입력일 경우
        selectedEmailValue[1].val('');                //값 초기화
        selectedEmailValue[1].attr("disabled",false); //활성화
   }else{ //직접입력이 아닐경우
        selectedEmailValue[1].val($(this).val());      //선택값 입력
        selectedEmailValue[1].attr("disabled",true); //비활성화
    }


}

	// 이메일
	// $("select[id= selected]").change(function() {
	// 	if($(this).val()== '1'){ //직접입력일 경우
    //         $("#memberEmail2").val('');                        //값 초기화
    //         $("#memberEmail2").attr("disabled",false); //활성화
    //    }else{ //직접입력이 아닐경우
    //         $("#memberEmail2").val($(this).val());      //선택값 입력
    //         $("#memberEmail2").attr("disabled",true); //비활성화
    //    }

	// });
