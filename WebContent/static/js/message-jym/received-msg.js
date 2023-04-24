
$.ajax({
	url: "receivedMessageListOk.message",
	type: "post",
	data: {userId: "3"},
	async: false,
	success: function(jsonResult){
		console.log(jsonResult);
	}
});
