const $msgContainer = $('.page-body .container ul.row');
const $selectionTabs = $('.chat-filter .chat-filter-item');
const $search = $('input.form-search-text-input');
let msgArray;
let isFirstList = true;

receive = receive ? receive : false;

if(messages) {
	msgArray = JSON.parse(messages)
	showMessageList(msgArray);
} else {
	location.href = "/messageListOk.message?receive=" + receive;
}

const $msgList = $('.page-body .container ul.row li.col-12');

$search.on('search', function() {
	location.href = `/messageListOk.message?receive=${receive}&keyword=` + this.value;
});

$selectionTabs.eq(0).on('click', function() {
	location.href = "/messageListOk.message?receive=false";
});

$selectionTabs.eq(1).on('click', function() {
	location.href = "/messageListOk.message?receive=true";
});

$msgList.each(function(i, li) {
	if(!$(li).is('#show-more') && !$(li).is('#no-list')) {
		$(li).on('click', function() {
			location.href = "/messageOk.message?receive=" + (i == 1) + "&messageId=" + msgArray[i].messageId;
		});
	}
});

//더보기 로딩 

let page = 0;

// 리스트 불러오기
clickMore();

function clickMore() {
	$('li#show-more').on('click', function() {
		page += 10;
		
		$('li#show-more').remove();
		
		
		console.log("딸깍")
		$.ajax({
			url: "messageListAppendOk.message",
			contentType: "charset=UTF-8",
			data: { 
				start: page,
				keyword: keyword,
				receive: receive	
			},
			async: false,
			success: function(result) {
				console.log(result);
				msgArray = JSON.parse(result);
				showMessageList(msgArray);
			}
		});
	});
}

function showMessageList(jsonArray) {
	
	let text = '';
	
	jsonArray.forEach(msg => {
		console.log(msg.contentsList);
		text += `
			<li data-name="chat-list" id="list-col" class="col-12">
	            <div class="chat-item">
	                <div class="badge-list"></div>

	                <section class="row user-info align-items-start">
						<div class="profile col-auto">
							<div class="user-profile-picture">
								<div style="background-image: url(/WEB-INF/upload/user/${msg.userProfileImage});">
								</div>
							</div>
						</div>
	                    <div class="service-info col">
	                        <div class="pro-status">
	                            <h5> ${msg.userName} </h5>
	                        </div>
	                    </div>
	                </section>
	                <div class="row last-message">
	                    <p>${msg.contentsList[0].substr(0, (msg.contentsList[0].length <= 30 ? msg.contentsList[0].length : 30) )}</p>
	                </div>
	                <div class="divider"></div>
	                <div class="row quote-info">
	                    <div class="updated-at">
	                        <p>${msg.messageUpdateDatetime}</p>
	                    </div>
	                </div>
	            </div>
	        </li>
		`
	});
	
	console.log(jsonArray.length);
	
	if(jsonArray.length == 0 && isFirstList){
		text += `
			<li id="no-list" class="col-12">
		        <div class="chat-item load-more">
					<span>쪽지 기록이 없습니다.</span>
				</div>
			</li>
		`
	} else if(jsonArray.length >= 10){
		text += `
			<li id="show-more" class="col-12">
	            <div class="chat-item load-more">
	                <span>더보기</span>
	            </div>
	        </li>
		`
	}
	
	isFirstList = false;
	
	$msgContainer.append(text);
	clickMore();
	
}

