const $msgList = $('.page-body .container ul.row');

showMessageList();

function showMessageList() {
	messages = JSON.parse(messages);
	console.log(messages);
	let text = '';
	
	messages.forEach(msg => {
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
	                        <p>2023. 04. 25</p>
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
	
	$msgList.append(text);
}

