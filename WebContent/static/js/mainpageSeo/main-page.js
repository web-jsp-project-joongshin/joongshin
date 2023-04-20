/* 자동슬라이드 */

let banner_left = 0;
let img_cnt = 0;
let first = 1;
let last;
let interval;

$(document).ready(function () {
  let $rolling_wraps = $('.rolling_wrap a');
  $rolling_wraps.each(function (i) {
    // a 요소의 left 속성 값 지정
    $(this).css('left', banner_left + 'px');
    // banner_left 변수값 증가시키기
    banner_left += this.offsetWidth + 10;
    // a 요소에 id 속성 지정
    $(this).attr('id', 'content' + ++img_cnt);
  });

  last = img_cnt;
  startAction();

  $('.content').mouseover(stopAction).mouseleave(startAction);
});

function startAction() {
  // 속도 지정 간격으로 아래 함수 실행
  interval = setInterval(function () {
    var $rolling_wraps = $('.rolling_wrap a');
    // 순회하며 각각의 a 요소에 대해 아래 동작 수행
    $('.rolling_wrap a').each(function () {
      // a 요소의 left 속성 값 지정
      $(this).css('left', $(this).offset().left - 1 + 'px');
    });

    // 첫 번째 a 요소와 마지막 a 요소 가져오기
    let $first_content = $('#content' + first);
    let $last_content = $('#content' + last);

    // 첫 번째 a 요소의 offsetLeft 값이 해당 요소의 너비의 음수보다 작아졌을 경우 아래 동작 수행
    if ($first_content.offset().left < -$first_content.width()) {
      // 첫 번째 a 요소를 마지막 a 요소 바로 다음 위치에 배치
      $first_content.css('left', $last_content.offset().left + $last_content.width() + 10 + 'px');
      // first, last 변수값 갱신
      first++;
      last++;
      if (last > img_cnt) {
        last = 1;
      }
      if (first > img_cnt) {
        first = 1;
      }
    }
  }, 20);
}

function stopAction() {
  clearInterval(interval);
}

/* 슬라이드 */
const $banner = $('div.banner');
const $image_divs = $('div.banner div.image');
const $first_div = $('#first-temp');
const $last_div = $('#last-temp');
const $prev = $('div.prev');
const $next = $('div.next');
const $dots = $('div.dot');
let count = 1;
let check = true;
let clickCheck = false;
let temp;

$image_divs.each((i, num) => $(num).css('background-image', `url(${i + 1}.png)`));
$first_div.css('background-image', `url(7.png)`);
$last_div.css('background-image', `url(1.png)`);

let slide = setInterval(() => autoSlide(), 3000);

changeButtonStyle();

function changeButtonStyle() {
  $dots.each((i, num) => $(num).css('background', 'none'));
  $dots.eq(count - 1).css('background', '#313131');
  clickCheck = true; //선택 버튼이 변경되는 순간 mouseout 이벤트 막기
}

$dots.each((i, dot) => {
  $(dot).on('mouseover', () => {
    clickCheck = $(dot).css('background-color') == 'rgb(49, 49, 49)';
    $(dot).css('background', '#313131');
  });
  $(dot).on('mouseout', () => {
    if (clickCheck) {
      return;
    }
    $(dot).css('background', 'none');
  });

  $(dot).on('click', () => {
    clickCheck = true;
    clearInterval(slide);
    count = Number($(dot).attr('class').split(' ')[1]);
    $banner.css('transform', `translate(${-1500 * count}px)`);
    $banner.css('transition', 'transform 0.7s');
    changeButtonStyle();
    slide = setInterval(() => autoSlide(), 2000);
  });
});

$prev.on('click', function () {
  if (!check) {
    return;
  }
  check = false;
  clearInterval(slide);
  $banner.css('transform', `translate(${-1500 * --count}px)`);
  $banner.css('transition', 'transform 0.7s');

  if (count == 0) {
    setTimeout(() => {
      $banner.css('transition', 'transform 0s');
      $banner.css('transform', `translate(-10500px)`);
    }, 700);
    count = 7;
  }
  changeButtonStyle();
  slide = setInterval(() => autoSlide(), 2000);
  setTimeout(() => {
    check = true;
  }, 700);
});

$next.on('click', function () {
  if (!check) {
    return;
  }
  check = false;
  clearInterval(slide);
  $banner.css('transform', `translate(${-1500 * ++count}px)`);
  $banner.css('transition', 'transform 0.7s');

  if (count == 8) {
    setTimeout(() => {
      $banner.css('transition', 'transform 0s');
      $banner.css('transform', `translate(-1500px)`);
    }, 700);
    count = 1;
  }
  changeButtonStyle();
  slide = setInterval(() => autoSlide(), 2000);
  setTimeout(() => {
    check = true;
  }, 700);
});

function autoSlide() {
  check = false;
  $banner.css('transform', `translate(${-1500 * ++count}px)`);
  $banner.css('transition', 'transform 0.7s');

  if (count == 8) {
    setTimeout(() => {
      $banner.css('transition', 'transform 0s');
      $banner.css('transform', `translate(-1500px)`);
    }, 700);
    count = 1;
  }
  changeButtonStyle();
  setTimeout(() => {
    check = true;
  }, 700);
}


