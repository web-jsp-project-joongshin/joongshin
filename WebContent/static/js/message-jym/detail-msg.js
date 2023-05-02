const $p = $('p.description');
let text = '';
message = JSON.parse(message);

message.contentsList.forEach(line => text += line + `<br>`);

$p.append(text);

$('button.reply').on('click', function(){
	location.href = `/write.message?send_user_id=${message.sendUserId}7receive_user_id=${message.recieveUserId}`;
});