function CheckAddConsult() {

	var consultId = document.getElementById("consultId");
	var cName = document.getElementById("cName");
	var description = document.getElementById("description");
	var picName = document.getElementById("picName");
	var picPhone2 = document.getElementById("picPhone2");
	var picPhone3 = document.getElementById("picPhone3");
	var maxNum = document.getElementById("maxNum");
	
	// 상담아아디 체크
	if (!check(/^C[0-9]{4,11}$/, consultId,
			"[상담 코드]\nC와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 C로 시작하세요"))
		return false;
	// 상담명 체크
	if (cName.value.length < 4 || cName.value.length > 12) {
		alert("[상담명]\n최소 4자에서 최대 12자까지 입력하세요");
		cName.select();
		cName.focus();
		return false;
	}
	// 상담설명 체크
	if (description.value.length < 4 || description.value.length > 500) {
		alert("[상담설명]\n최소 4자에서 최대 500자까지 입력하세요");
		description.select();
		description.focus();
		return false;
	}
	// 담당자 이름 체크
	if (picName.value.length < 1 || picName.value.length > 12) {
		alert("[담당자명]\n최소 4자에서 최대 12자까지 입력하세요");
		picName.select();
		picName.focus();
		return false;
	}
	// 담당자 전화번호2 체크
	if (picPhone2.value.length < 3 || picPhone2.value.length > 4 || isNaN(picPhone2.value)) {
		alert("[전화번호 가운데자리]\n최소 3자에서 최대 4자까지의 숫자로 입력하세요");
		picPhone2.select();
		picPhone2.focus();
		return false;
	}
	
	// 담당자 전화번호3 체크
	if (picPhone3.value.length < 3 || picPhone3.value.length > 4 || isNaN(picPhone3.value)) {
		alert("[전화번호 마지막자리]\n최소 3자에서 최대 4자까지의 숫자로 입력하세요");
		picPhone3.select();
		picPhone3.focus();
		return false;
	}
	
	// 상담 인원수 체크
	if (maxNum.value.length == 0 || isNaN(maxNum.value)) {
		alert("[인원수]\n숫자만 입력하세요");
		maxNum.select();
		maxNum.focus();
		return false;
	}

	if (maxNum.value < 0) {
		alert("[인원수]\n음수를 입력할 수 없습니다");
		maxNum.select();
		maxNum.focus();
		return false;
	} 


	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newConsult.submit()
}
