const $msgTabButtons = $('li.chat-filter-item');
const $comments = $('.page-body .container ul.row li');

$.ajax({
	url: "sendMessageListOk.message",
	data: {userId: "3"},
	async: false,
	success: function(result) {
		//console.log(result);
		result = JSON.parse(result);

		$comments.each(function(i, li) {
			let $proStatus = $(li).find('.chat-item section .service-info .pro-status');
			let $lastMessage = $(li).find('.chat-item .last-message');
			let messageVO = result[i];

			$proStatus.children('h5').text(messageVO.userName);
			$lastMessage.children('p').text(messageVO.messageContents);
		});
	}
});

$msgTabButtons.each((i, btn) => {
	$(btn).on('click', function() {
		if($(this).is('selected')) return;
		
		$msgTabButtons.eq(i == 0 ? 1 : 0).removeClass('selected');
		$(this).addClass('selected');
		
		if(i == 0) {
			$.ajax({
				url: "sendMessageListOk.message",
				data: {userId: "3"},
				async: false,
				success: function(result) {
					//console.log(result);
					result = JSON.parse(result);
	
					$comments.each(function(i, li) {
						let $proStatus = $(li).find('.chat-item section .service-info .pro-status');
						let $lastMessage = $(li).find('.chat-item .last-message');
						let messageVO = result[i];

						$proStatus.children('h5').text(messageVO.userName);
						$lastMessage.children('p').text(messageVO.messageContents);
					});
				}
			});
		}
		
		if(i == 1) {
			$.ajax({
				url: "receivedMessageListOk.message",
				data: {userId: "3"},
				async: false,
				success: function(result) { 
					//console.log(result);
					result = JSON.parse(result);
					
					$comments.each(function(i, li) {
						let $proStatus = $(li).find('.chat-item section .service-info .pro-status');
						let $lastMessage = $(li).find('.chat-item .last-message');
						let messageVO = result[i];

						$proStatus.children('h5').text(messageVO.userName);
						$lastMessage.children('p').text(messageVO.messageContents);
					});
				}
			});
		}
	});
});


