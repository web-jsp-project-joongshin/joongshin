$("div.join").hide();
let step = 1;

// term
const $requiredChecks = $("input[type='checkbox'].required");

function goInfo(){
    let check = false;
    $requiredChecks.each(function(i, requiredCheck){
        check = $(requiredCheck).is(":checked");
        return check;
    });

    if(!check){
        let modalMessage = "<span>서비스를 이용하시기 위해서는</span><span>필수 약관에 동의해주세요!</span>";
        showWarnModal(modalMessage);
        return;
    }

    step = 2;

    $("div.term").hide();
    $("div.join").hide();
    $("div.info").show();
    $("div#back").show();

    $([document.documentElement,document.body]).animate({
        scrollTop:0
    },300);
}

// info
const $infoInputs = $("div.info input[type='text']");
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const specialCharacterRegex = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gim;
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/
let infoBlurMessages = ["이름을 입력하세요.", "휴대폰 번호를 입력하세요."];
let infoRegexMessages = ["영문 혹은 한글로 2자~20자로 입력해주세요.","휴대폰 번호를 확인하세요."];
const $infoHelp = $("div.info p.help");
let infoCheck;
let infoCheckAll = [false, false, false, false, false];

$infoInputs.eq(1).on("focus", function(){
    $(this).val($(this).val().replaceAll("-", ""));
});

$infoInputs.on("blur", function(){
    let i = $infoInputs.index($(this));
    let value = $(this).val();


    $(this).next().hide();
    $(this).next().fadeIn(500);

    if(!value){
        $infoHelp.eq(i).text(infoBlurMessages[i]);
        showHelp($(this), "error.png");
        infoCheck = false;
        infoCheckAll[i] = infoCheck;
        return;
    }

    switch(i){
        case 0:
            infoCheck = value.length > 1 && value.length < 21 && nameRegex.test(value) && !specialCharacterRegex.test(value);
            break;

        case 1:
            infoCheck = phoneRegex.test(value);
            if(infoCheck){
                $(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
            }
            break;
    }

    infoCheckAll[i] = infoCheck;

    if(!infoCheck){
        $infoHelp.eq(i).text(infoRegexMessages[i]);
        showHelp($(this), "error.png");
        return;
    }

    $infoHelp.eq(i).text("");
    showHelp($(this), "pass.png");
});

function showHelp($input, fileName){
    $input.next().attr("src", "/static/images/" + fileName);

    if(fileName == "pass.png") {
        $input.css("border", "1px solid rgba(0, 0, 0, 0.1)");
        $input.css("background", "rgb(255, 255, 255)");
        $input.next().attr("width", "18px");
    }else {
        $input.css("border", "1px solid rgb(255, 64, 62)");
        $input.css("background", "rgb(255, 246, 246)");
    }
}

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

    $([document.documentElement,document.body]).animate({
        scrollTop:0
    },300);
}

// join
const $joinInputs = $("div.join input[type='text'], div.join input[type='password']");
const passwordNumberRegex =/[0-9]/g;
const passwordEnglishRegex = /[a-z]/ig;
const emailFirstRegex =  /[`~!@#$%^&*|\\\'\";:\/?]/;
const emailLastRegex = /[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
let joinBlurMessages = ["비밀번호를 입력하세요.", "비밀번호 확인을 위해 한번 더 입력하세요.", "이메일을 입력하세요."];
let joinRegexMessages = ["8자리 이상의 비밀번호를 입력하세요.", "위 비밀번호와 일치하지 않습니다. 다시 입력해주세요.", "이메일 주소를 확인해주세요.", "이메일 주소를 확인해주세요."];
const $joinHelp = $("div.join p.help");
let joinCheck;
let joinCheckAll = [false, false, false, false];
checkEmail = false;

$joinInputs.on("blur", function(){
    let i = $joinInputs.index($(this));
    let value = $(this).val();

    $(this).next().hide();
    $(this).next().fadeIn(500);

    if(!value){
        joinCheck = false;
	} else {
    	switch(i){
        
        case 0:
            let numberCheck = value.search(passwordNumberRegex);
            let englishCheck = value.search(passwordEnglishRegex);

            var condition1 = (numberCheck >= 0 && englishCheck >= 0)
            var condition2 = value.length > 8 && value.length < 21;
            var condition3 = value.search(/\s/) < 0;
            
            joinCheck = condition1 && condition2 && condition3;
            break;
        case 1:
            joinCheck = $joinInputs.eq(i-1).val() == value;
            break;
        case 2:
            joinCheck = !emailFirstRegex.test(value);
            break;
        case 3:
            var condition1 = emailLastRegex.test(value);
            var condition2 = value.substring(value.indexOf(".") + 1).length > 1;
            joinCheck = condition1 && condition2;
            break;
    }
    

}

joinCheckAll[i] = joinCheck;

if(!joinCheck){
    $joinHelp.eq(i).text(joinRegexMessages[i]);
    $joinHelp.eq(i).css('color', 'red');
} else {
    $joinHelp.eq(i).text("");
}
    
   

	if(i == 2) {
		$("select.email").trigger("change");
		return;
	}

	
});

$("select.email").on("change", function(){
    $("div.email-last input").val($(this).val());
    $joinInputs.eq(3).trigger("blur");
    if(!$(this).val()){
        $("div.email-last input").prop("readonly", false);
        return;
    }
    $("div.email-last input").prop("readonly", true);

	/*이메일 합치기*/
	$("input[name='userEmail']").val($("div.email-first input").val() + '@' + $("div.email-last input").val())
	
	/*이메일 중복검사*/
	$.ajax({
		url: "checkEmailOk.user",
		type: "post",
		data: {userEmail: $("input[name='userEmail']").val()},
		async: false,
		success: function(result){
			let $help = $("div.email-select-wrap").next();
			checkEmail = false;
			result = JSON.parse(result);
			if(result.check){
				$help.text("사용가능");
				$help.css('color', '#2bb673');
    			showHelp($(".email-wrap input[type=text]"), "pass.png");
				checkEmail = true;
			}else{
		 		$help.text("이미 사용중인 이메일입니다.");
				$help.css('color', 'red')
		        showHelp($(".email-wrap input[type=text]"), "error.png");
				checkEmail = false;
			}
		}
	});
});


 


function send(){
    $joinInputs.trigger("blur");
    if(joinCheckAll.filter(check => check).length != $joinInputs.length){
        let modalMessage = "<span>모든 정보를 정확히 입력하셔야</span><span>가입이 완료됩니다.</span>";
        showWarnModal(modalMessage);
        return;
    }

    document.join.submit();
}



