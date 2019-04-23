<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="../assets/vendor/js/jquery.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=rQP7j1hUTagCPynZ2gnZNv1vkD8VEd4K"></script>

<script type="text/javascript" src="http://cdn-hangzhou.goeasy.io/goeasy.js"></script>
<script type="text/javascript">
	var goEasy = new GoEasy({
		appkey: 'BC-9c088edbd6ca4ca6b34e2d20033f727d'
	});
	goEasy.subscribe({
		channel:'demo_channel',
		onMessage: function(message){
			$('#channel').val(message.content);
		}
	});
</script>

</head>
<body>
<div>
	<input type="text" id="channel"  />
</div>

<div class="progress">
	<div class="progress-bar progress-bar-success" role="progressbar"
		 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
		 style="width: 90%;">
		<span class="sr-only">90% 完成（成功）</span>
	</div>
</div>
<div class="progress">
	<div class="progress-bar progress-bar-info" role="progressbar"
		 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
		 style="width: 30%;">
		<span class="sr-only">30% 完成（信息）</span>
	</div>
</div>
<div class="progress">
	<div class="progress-bar progress-bar-warning" role="progressbar"
		 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
		 style="width: 20%;">
		<span class="sr-only">20% 完成（警告）</span>
	</div>
</div>
<div class="progress">
	<div class="progress-bar progress-bar-danger" role="progressbar"
		 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
		 style="width: 10%;">
		<span class="sr-only">10% 完成（危险）</span>
	</div>
</div>

<button id="button1" onclick = "selectMap()" value="223333" >222222222</button>
<button id="button2" onclick = "setMap()">33333333</button>
<button id="button3" class="btn" value ="7">44444444444</button>
<div>
	<div id = "gra" style="width:1000px;height:800px;border:#ccc solid 1px;font-size:12px">
							
						</div>
</div>
	
</body>
</html>