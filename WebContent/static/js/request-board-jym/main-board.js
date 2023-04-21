
const $banner = $("div.slick-track");
const $divs = $("div.slick-track div.slick-slide");

const $prev = $("div.prev");
const $next = $("div.next");


let check = true;
let clickCheck = false;

// $image_divs.each((i, image_div) => {$(image_div).css("background-image", `url(00${i + 1}.png)`)});
// $first_div.css("background-image", `url(00${$image_divs.length}.png)`);
// $last_div.css("background-image", `url(001.png)`);

// function changeButtonStyle(){
//     $dots.css("background", "none");
//     $dots.eq(count - 1).css("background-color", "#313131");
//     clickCheck = true; //선택 버튼이 변경되는 순간 mouseout 이벤트 막기
// }


// $dots.hover(function(){
//     clickCheck = $(this).css("background-color") == "rgb(49, 49, 49)";
//     $(this).css("background", "#313131");
// }, function(){
//     if(clickCheck){return;} 
//     $(this).css("background", "none");
// });

// $dots.on("click", function(){
//     clickCheck = true;
//     clearInterval(slide);
//     count = parseInt($(this).prop("classList")[1]);
//     changeBanner(0);
//     slide = setInterval(() => {++count, changeBanner(0)}, 2000);
// });


$(".slick-prev").on("click", function(){
    if(!check) {return;}
    check = false;
    const arrow = {next: 0, prev: 1};
    $banner.css("transform", `translate(${-510}px)`);
    $banner.css("transition", "transform 0.7s");
});

$(".slick-next").on("click", function(){
    console.log("clicked!")
    if(!check) {return;}
    check = false;
    let direction = 0;
    $banner.css("transform", `translate(${510}px)`);
    $banner.css("transition", "transform 0.7s");
   
});


function slideBanner(){
    $banner.css("transform", `translate(${-510}px)`);
    $banner.css("transition", "transform 0.7s");
}


//정방향: 0, 역방향: 1
function changeBanner(direction){
    check = false;
    
    if(direction==1) {
        $banner.css("transform", `translate(${510}px)`);
        $banner.css("transition", "transform 0.7s");
    } else{
        $banner.css("transform", `translate(${-510}px)`);
        $banner.css("transition", "transform 0.7s");
    }
    
}