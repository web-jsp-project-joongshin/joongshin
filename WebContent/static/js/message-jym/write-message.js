function send() {
	let contents = $('textarea#reco').val();
	
	if(contents == "") return;
	
	$.ajax({
		url: "/writeOk.message",
		data: { 
			contents: contents,
			receiveUserId: 6 
		},
		success: function(result) {
			if(result) location.href = "/messageListOk.message";
		}
	});
}