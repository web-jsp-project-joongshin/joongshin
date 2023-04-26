const $msgContainer = $('.page-body .container ul.row');
const $selectionTabs = $('.chat-filter .chat-filter-item');

let messagesJSONArray;

if(messages) {
	messagesJSONArray = JSON.parse(messages);
	
	showMessageList();	
}

const $msgList = $('.page-body .container ul.row li');

$selectionTabs.eq(0).on('click', function() {
	location.href = path + "/messageListOk.message?receive=false";
});

$selectionTabs.eq(1).on('click', function() {
	location.href = path + "/messageListOk.message?receive=true";
});

$msgList.each(function(i, li) {
	$(li).on('click', function() {
		location.href = path + "/messageOk.message?receive=" + (i == 1) + "&messageId=" + messagesJSONArray[i].messageId;
	});
});

function showMessageList() {
	//console.log(messages);
	let text = '';
	
	messagesJSONArray.forEach(msg => {
		text += `
			<li data-name="chat-list" class="col-12">
	            <div class="chat-item">
	                <div class="badge-list"></div>

	                <section class="row user-info align-items-start">
	                    <div class="service-info col">
	                        <div class="pro-status">
	                            <h5> ${msg.userName} </h5>
	                        </div>
	                    </div>
	                </section>
	                <div class="row last-message">
	                    <p>${msg.messageContents}</p>
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
	
	if(messages.length == 0){
		text += `
			<li>
		        <div>
					쪽지 기록이 없습니다.
				</div>
			</li>
		`
	}
	
	$msgContainer.append(text);
}

