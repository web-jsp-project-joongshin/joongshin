//li tags
const $lists = $('ul.sticky-nav li');

//sticky-nav에 인덱스 이동하는 click event를 줍니다.
$('div.observer-container>section').each ( (i, section) => {
	let left = section.getBoundingClientRect().left;

	// getBoundingClientRect은 새로고침 시 현재 사용자가 보고 있는 좌표를 0으로 하는 상대적인 좌표를 반환하므로, 
	// window.scrollY만큼을 더하여 절대 좌표로 변환하여 사용합니다.
	//이후 120을 빼주어 h2태그가 헤더 바로 밑에서 보이도록 설정하였습니다.
	let top = section.getBoundingClientRect().top + window.scrollY - 120;

	let scroll_options = {
		left: left, 
		top: top,
		behavior: "smooth"
	};

	$lists.eq(i).on('click', () => { active(i); window.scrollTo(scroll_options); })
});

function active(index) {
	$lists.filter('.active').removeClass('active');
	$lists.eq(index).addClass('active');
}
