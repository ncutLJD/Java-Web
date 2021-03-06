<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" />  
<!-- 引入 Bootstrap -->
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

</style>

<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<title>小写转大写</title>
</head>
<body>
	<h3>小写转大写</h3>
	<form role="form" style="width:500px;">
		<div class="form-group">
			<h6>1.将小写转化为大写   2.将"."转化为"_" </h6>
		</div>
		<div class="form-group">
			<label for="text">转化文字：</label><input id="changText" class="form-control" 
			name="changText" type="text"/>
		</div>
		<button type="button" class="btn btn-default" onclick="change();">转化</button>
		<div class="checkbox">
			<textarea rows="3" cols="30" id="outText" name="outText" class="form-control"></textarea>
		</div>
	</form>
	
	
	
	
	
</body>
</html>

<script type="text/javascript">
	var text=$("#changText");
	function change(){
		$.ajax({
			type:"post",
			url:"../changeWord",        //需要到根目录进行访问
			data:{"text":text.val()},
			success:function(data){
				$("#outText").html(data);
				window.clipboardData.setData("text", data);  
			}
		});
	}
	
</script>