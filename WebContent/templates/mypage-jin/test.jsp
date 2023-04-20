<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HTML 문서</title>
</head>
<body>
	<input type="radio" name="radio-button" id="radio-button-1">
<input type="radio" name="radio-button" id="radio-button-2">
<div id="hidden-div-1" style="display: none;">Hidden Div 1</div>
<div id="hidden-div-2" style="display: none;">Hidden Div 2</div>
	
</body>
<script type="text/javascript">

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


</script>
</html>
