
//textarea에 글씨 넣으면 버튼 활성화
$(document).ready(function () {
    $('#reco').on('input change', function () {
        if ($("#reco").val() != '')  {
            $('#submit').prop('disabled', false);
            $('#submit').css('color', '#00c7ae');
        }
        else {
            $('#submit').prop('disabled', true);
        }
    });
});

//span text 없애는 코드
$(document).ready(function() {

    $('#reco').focusout(function() {
      if ($(this).val() == '') {
        $('#tab').text('글자를 입력해주세요');
        $(this).focus();
      } else {
        $('#tab').empty();
      }
    });
  });