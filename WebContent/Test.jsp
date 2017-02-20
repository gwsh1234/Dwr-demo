<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/Dwr-demo/dwr/util.js"></script>
<script type="text/javascript" src="/Dwr-demo/dwr/engine.js"></script>
<script type='text/javascript' src='/Dwr-demo/dwr/interface/DwrPush.js'></script>
<script type='text/javascript'  src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
<script>
$(document).ready(function(){
		console.log("设置翻转的激活");
		dwr.engine.setActiveReverseAjax(true);
		
		$("#button").click(function(){
			var data = $("#data").val();
			DwrPush.Send(data);
		});
	});
function callback(msg){
	$("#ul").html($("#ul").html()+"<br />"+msg);
}
</script>
</head>
<body>
	<ul id="ul">
</ul>
<br/>
<hr>
	<input type="text" id="data" name='data' />&nbsp;&nbsp;&nbsp;&nbsp;
	<input type='button' id="button" value="publish">
</body>
</html>