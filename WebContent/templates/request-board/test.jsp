<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<script type="text/javascript">
function hideDiv(elem) {
    if(elem.value == "Mac")
	document.getElementById('hideDiv').style.display = "none";
    else
        document.getElementById('hideDiv').style.display = 'block';
}
</script>
</head>
<body>

<select class="form-control input-lg" onchange="hideDiv(this)" name="category">
  <option value="Iphone">Iphone</option>
  <option value="Mac">Mac</option>
</select>

<div id="hideDiv" class="form-group">
  <label class="" for="Name">Name</label>
  <input type="text"/>
</div>
</body>
</html>