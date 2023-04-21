/**
 * 
*/

const $infoInputs = $("div.form input[type='text'], textarea");
const $errorMsg = $("div.notification-error");
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const specialCharacterRegex = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gim;
const birthRegex = /^(19[0-9][0-9]|20\d{2}).?(0[0-9]|1[0-2]).?(0[1-9]|[1-2][0-9]|3[0-1])$/;
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/
const emailFirstRegex =  /[`~!@#$%^&*|\\\'\";:\/?]/;
const emailLastRegex = /[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

let infoBlurMessages = ["요청자 이메일:  반드시 입력해야 합니다.", "제목: 반드시 입력해야 합니다.", "설명: 반드시 입력해야 합니다.","숨고 가입 이메일: 반드시 입력해야 합니다.","숨고 가입 휴대폰 번호: 반드시 입력해야 합니다."];
let infoRegexMessages = ["올바르지 않은 이메일 형식입니다.", "올바르지 않은 제목 입니다.", "올바르지 않은 이름 형식입니다.","올바르지 않은 이메일 형식입니다.","올바르지 않은 핸드폰 번호입니다."];
const $infoHelp = $("div.form div.notification-error");
let infoCheck;

let infoCheckAll = [false, false, false, false, false];


$infoInputs.on("blur", function(){
    let i = $infoInputs.index($(this));
    let value = $(this).val();
	const splitEmail = value.split('@');
	let emailFirst = splitEmail[0];
	let emailSecond = splitEmail[1];
	if(emailSecond==null){
		emailSecond='';
	}
	
    $(this).next().hide();
    $(this).next().fadeIn(500);

    if(!value){
		console.log(infoBlurMessages[i])
        $infoHelp.eq(i).text(infoBlurMessages[i]);
        infoCheck = false;
        infoCheckAll[i] = infoCheck;
        return;
    }

    infoCheckAll[i] = infoCheck;
	
	switch(i){
		
        case 0:
				console.log(emailSecond)
            var condition1 = emailLastRegex.test(emailSecond);
            var condition2 = emailSecond.substring(emailSecond.indexOf(".") + 1).length > 1;
            var condition3 = !emailFirstRegex.test(emailFirst);
            var condition4 = value.includes('@');
            infoCheck = condition1 && condition2 && condition3 && condition4;
			break;
        case 1:
			infoCheck = value.length < 21;
            break;
            
        case 2:
            infoCheck = value.length < 200;
            break;
        case 3:
            var condition1 = emailLastRegex.test(emailSecond);
            var condition2 = emailSecond.substring(emailSecond.indexOf(".") + 1).length > 1;
            var condition3 = !emailFirstRegex.test(emailFirst);
			var condition4 = value.includes('@');
            infoCheck = condition1 && condition2 && condition3 && condition4;
			break;
			
        case 4:
           infoCheck = phoneRegex.test(value);
            if(infoCheck){
                $(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
            }
            break;
			
    }

	if(i==2 && !infoCheck){
		document.getElementById("request_description_error").style.display = 'block';
	}

    if(!infoCheck){
		
        $infoHelp.eq(i).text(infoRegexMessages[i]);
		
        return;
    }else{
	$infoHelp.hide();
}
	
    $infoHelp.eq(i).text("");
});



function goJoin(){
    $infoInputs.trigger("blur");
    if(infoCheckAll.filter(check => check).length != $infoInputs.length){
        let modalMessage = "<span>모든 정보를 정확히 입력하셔야</span><span>다음 단계로 진행됩니다.</span>";
        showWarnModal(modalMessage);
        return;
    }

    $("div.basic-info-container dd").each(function(i){
        $(this).text($infoInputs.eq(i).val());
    });

    step = 3;

    $("div.info").hide();
    $("div.join").show();

}



