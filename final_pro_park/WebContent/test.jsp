<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function changeFunc($i) {
	    alert($i);
	  }
	  
</script>
</head>
<body>
test

<select id="selectBox" onchange="changeFunc(value);">
   <option value="1">Option #1</option>
   <option value="2">Option #2</option>
</select>
  
</body>
</html>