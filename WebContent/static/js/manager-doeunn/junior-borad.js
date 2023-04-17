const $arrows = $('.arrow');
const $boardList = $('.board-list li');
const $inquiriesList = $('.inquiries-list li');

$arrows.eq(0).css('transform', 'rotate(180deg)')
$inquiriesList.hide();

$arrows.eq(0).on('click', function() {
    const deg = this.style.transform;
    $(this).css('transform',deg === 'rotate(180deg)' ? 'rotate(0deg)' : 'rotate(180deg)');
    $boardList.slideToggle(300);
})

$arrows.eq(1).on('click', function() {
    const deg = this.style.transform;
    $(this).css('transform',deg === 'rotate(180deg)' ? 'rotate(0deg)' : 'rotate(180deg)');
    $inquiriesList.slideToggle(300);
})