const $profile = $('section.profile').eq(0);
const $profile_header = $('section.fixed');

$(window).on('scroll', () => {
	if (
		$profile.offset().top + 84 <= window.scrollY + screen.height &&
		$profile.offset().top >= window.scrollY
	) {
		$profile_header.removeClass('show');
		return;
	}
	$profile_header.addClass('show');
});