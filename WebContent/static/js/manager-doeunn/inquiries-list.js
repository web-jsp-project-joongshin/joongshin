const $arrows = $('.arrow');
const $naviTitle = $('.navi-title');
const $boardList = $('.board-list li');
const $inquiriesList = $('.inquiries-list li');
const $checkboxTop = $('.check-top');
const $checkboxes = $('.pcheckbox');

// 사이드 바 이벤트 관련 코드
$boardList.hide();
$arrows.eq(1).css('transform', 'rotate(180deg)');

$naviTitle.eq(0).on('click', function() {
	const deg = $arrows[0].style.transform;
    $arrows.eq(0).css('transform',deg === 'rotate(180deg)' ? 'rotate(0deg)' : 'rotate(180deg)');
    $boardList.slideToggle(300);
})

$naviTitle.eq(1).on('click', function() {
    const deg = $arrows[1].style.transform;
    $arrows.eq(1).css('transform',deg === 'rotate(180deg)' ? 'rotate(0deg)' : 'rotate(180deg)');
    $inquiriesList.slideToggle(300);
})

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

// 체크박스 관련 코드
$checkboxTop.on('click', function() {
    $checkboxes.prop('checked', $(this).is(':checked'));
})

$checkboxes.on('click', function() {
    $checkboxTop.prop('checked', $(this).filter(':checked').length === this.length);
})