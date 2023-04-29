const $p = $('p.description');
let text = '';
message = JSON.parse(message);

message.contentsList.forEach(line => text += line + `<br>`);

$p.append(text);

$('.share-button-wrapper').on('click', function() {
	
});

let modalCheck;

function showShareModal(){
    modalCheck = false;
    $("div.warn-modal").css("animation", "popUp 0.5s");
    $("div.modal").css("display", "flex").hide().fadeIn(500);
    setTimeout(function(){modalCheck = true;}, 500);
}

$(".share-button-wrapper").on("click", function(){
    if(modalCheck){
        $("div.warn-modal").css("animation", "popDown 0.5s");
        $("div.modal").fadeOut(500);
    }
});