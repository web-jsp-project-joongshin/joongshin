/* 버튼 클릭하면 숨겨져있는 요소들 보임 */
const radioButtons = document.getElementsByName("radio-button");
const hiddenDivs = document.querySelectorAll('[id^="hidden-div-"]');

for (let i = 0; i < radioButtons.length; i++) {
  radioButtons[i].addEventListener("click", function() {
    for (let j = 0; j < hiddenDivs.length; j++) {
      if (hiddenDivs[j].id === "hidden-div-" + (i+1)) {
        hiddenDivs[j].style.display = "block";
      } else {
        hiddenDivs[j].style.display = "none";
      }
    }
  });
}