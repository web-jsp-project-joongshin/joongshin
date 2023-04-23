const $banner = $('.banner');
const $image_divs = $('div.banner .image');
const $first_div = $('#first-temp');
const $last_div = $('#last-temp');
const $prev_btn = $('button.prev');
const $next_btn = $('button.next');
const $page_number = $('div.page-number');
let count = 1;
let check = true;

// 메인 배너
$image_divs.each(function(i, div) {
    $(this).css('background-image', `url('../../static/image/main-banner-images/00${i+1}.png`);
})

$first_div.css('background-image', `url('../../static/image/main-banner-images/006.png')`);
$last_div.css('background-image', `url('../../static/image/main-banner-images/001.png')`);

$prev_btn.css('background', `url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTIiIGhlaWdodD0iNTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxIDEpIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbC1vcGFjaXR5PSIuMiIgZmlsbD0iIzAwMCIgY3g9IjI1IiBjeT0iMjUiIHI9IjI1Ii8+CiAgICAgICAgPHBhdGggZD0iTTIyLjI4NSAzMy42OTlhMSAxIDAgMCAwIDEuMzE5LjA5OGwuMDk1LS4wODIgOC03LjgxN2ExIDEgMCAwIDAgLjEwOC0xLjMwNmwtLjA4LS4wOTYtNy43MjMtOC4xODJhMSAxIDAgMCAwLTEuNTM1IDEuMjc2bC4wOC4wOTYgNy4wNDkgNy40NjktNy4yOTcgNy4xM2ExIDEgMCAwIDAtLjA5OCAxLjMxOWwuMDgyLjA5NXoiIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIvPgogICAgPC9nPgo8L3N2Zz4K')`);
$next_btn.css('background', `url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTIiIGhlaWdodD0iNTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxIDEpIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbC1vcGFjaXR5PSIuMiIgZmlsbD0iIzAwMCIgY3g9IjI1IiBjeT0iMjUiIHI9IjI1Ii8+CiAgICAgICAgPHBhdGggZD0iTTIyLjI4NSAzMy42OTlhMSAxIDAgMCAwIDEuMzE5LjA5OGwuMDk1LS4wODIgOC03LjgxN2ExIDEgMCAwIDAgLjEwOC0xLjMwNmwtLjA4LS4wOTYtNy43MjMtOC4xODJhMSAxIDAgMCAwLTEuNTM1IDEuMjc2bC4wOC4wOTYgNy4wNDkgNy40NjktNy4yOTcgNy4xM2ExIDEgMCAwIDAtLjA5OCAxLjMxOWwuMDgyLjA5NXoiIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIvPgogICAgPC9nPgo8L3N2Zz4K')`)
$page_number.prop('innerHTML', `${count}/${$image_divs.length}`);

let slide = setInterval(() => autoSlide(), 2000);

$prev_btn.on("click", function() {
    if(!check) return;
    check = false;
    clearInterval(slide);
    $banner.css('transform', `translate(${-970 * --count}px)`);
    $banner.css('transition', 'transform 0.7s');
    $page_number.prop('innerHTML', `${count}/${$image_divs.length}`)

    if(count === 0) {
        $page_number.prop('innerHTML', `6/${$image_divs.length}`);
        setTimeout(() => {
            $banner.css('transition', 'transform 0s');
            $banner.css('transform', 'translate(-5820px)');
        }, 700);
        count = 6;
    }
    slide = setInterval(() => autoSlide(), 2000);
    setTimeout(() => (check = true), 700);
});

$next_btn.on("click", function() {
    if(!check) return;
    check = false;
    clearInterval(slide);
    $banner.css('transform', `translate(${-970 * ++count}px)`);
    $banner.css('transition', 'transform 0.7s');
    $page_number.prop('innerHTML', `${count}/${$image_divs.length}`)

    if(count === 7) {
        $page_number.prop('innerHTML', `1/${$image_divs.length}`);
        setTimeout(() => {
            $banner.css('transition', 'transform 0s');
            $banner.css('transform', 'translate(-970px)');
        }, 700);
        count = 1;
    }
    slide = setInterval(() => autoSlide(), 2000);
    setTimeout(() => (check = true), 700);
});

function autoSlide() {
    check = false;
    $banner.css('transform',`translate(${-970 * ++count}px)`);
    $banner.css('transition', 'transform 0.7s');
    $page_number.prop('innerHTML', `${count}/${$image_divs.length}`)
  
    if (count === 7) {
        $page_number.prop('innerHTML', `1/${$image_divs.length}`);
        setTimeout(() => {
            $banner.css('transition', 'transform 0s');
            $banner.css('transform', 'translate(-970px)');
        }, 700);
      count = 1;
    }
    setTimeout(() => (check = true), 700);
  }