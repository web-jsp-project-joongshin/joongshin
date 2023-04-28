const $p = $('p.description');
let text = '';
message = JSON.parse(message);

message.contentsList.forEach(line => text += line + `<br>`);

$p.append(text);