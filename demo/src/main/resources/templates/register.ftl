<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Register | Nadhif - Responsive Admin Template</title>
		
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Import google fonts -->
        <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="../assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="../assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="../assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="../assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="../assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="../assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="../assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="../assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="../assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="../assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		
		<!-- Theme CSS -->
		<link href="../assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="../assets/css/style.css" rel="stylesheet" />
		<link href="../assets/css/add-ons.min.css" rel="stylesheet" />
		
		<style>
			
			canvas {
			
			  background-color: #eee;
			  display: block;
			  margin: 0 auto;
			  position:absolute;
			  z-index:0;
			}
		
			footer {
				display: none;
			}
		</style>
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="../assets/plugins/modernizr/js/modernizr.js"></script>
		<script>
			function check_register(){
				if($('#pwd_confirm').val() == $('#passWord').val()){
					var param = {};
					param.email=$('#email').val();
					param.passWord = $('#passWord').val();
					param.userName = $('#userName').val();
					$.ajax({
						url:"../register/registerpd",
						type:"POST",
						data:param,
						dataType:"json",
						success:function(data){
							if(data.flag==1){
								alert("注册成功");
								location.href="../login";
							}else{
								alert("邮箱已注册");
							}
						},
						error:function(){
							alert("网络异常");
						}
					});
				}else{
					alert("两次密码不一致");
				}
			}
		</script>
		
	</head>

	<body>
	

		<!-- Start: Content -->
		<div class="container-fluid content">
		<canvas id="canvas"></canvas>
			<div class="row">
			
				
	<script>
					var canvas = document.getElementById("canvas");
					var ctx = canvas.getContext("2d");
					var cw = canvas.width = window.innerWidth,
					  cx = cw / 2;
					var ch = canvas.height = window.innerHeight,
					  cy = ch / 2;
					
					ctx.fillStyle = "#000";
					var linesNum = 16;
					var linesRy = [];
					var requestId = null;
					
					function Line(flag) {
					  this.flag = flag;
					  this.a = {};
					  this.b = {};
					  if (flag == "v") {
					    this.a.y = 0;
					    this.b.y = ch;
					    this.a.x = randomIntFromInterval(0, ch);
					    this.b.x = randomIntFromInterval(0, ch);
					  } else if (flag == "h") {
					    this.a.x = 0;
					    this.b.x = cw;
					    this.a.y = randomIntFromInterval(0, cw);
					    this.b.y = randomIntFromInterval(0, cw);
					  }
					  this.va = randomIntFromInterval(25, 100) / 100;
					  this.vb = randomIntFromInterval(25, 100) / 100;
					
					  this.draw = function() {
					    ctx.strokeStyle = "#ccc";
					    ctx.beginPath();
					    ctx.moveTo(this.a.x, this.a.y);
					    ctx.lineTo(this.b.x, this.b.y);
					    ctx.stroke();
					  }
					
					  this.update = function() {
					    if (this.flag == "v") {
					      this.a.x += this.va;
					      this.b.x += this.vb;
					    } else if (flag == "h") {
					      this.a.y += this.va;
					      this.b.y += this.vb;
					    }
					
					    this.edges();
					  }
					
					  this.edges = function() {
					    if (this.flag == "v") {
					      if (this.a.x < 0 || this.a.x > cw) {
					        this.va *= -1;
					      }
					      if (this.b.x < 0 || this.b.x > cw) {
					        this.vb *= -1;
					      }
					    } else if (flag == "h") {
					      if (this.a.y < 0 || this.a.y > ch) {
					        this.va *= -1;
					      }
					      if (this.b.y < 0 || this.b.y > ch) {
					        this.vb *= -1;
					      }
					    }
					  }
					
					}
					
					for (var i = 0; i < linesNum; i++) {
					  var flag = i % 2 == 0 ? "h" : "v";
					  var l = new Line(flag);
					  linesRy.push(l);
					}
					
					function Draw() {
					  requestId = window.requestAnimationFrame(Draw);
					  ctx.clearRect(0, 0, cw, ch);
					
					  for (var i = 0; i < linesRy.length; i++) {
					    var l = linesRy[i];
					    l.draw();
					    l.update();
					  }
					  for (var i = 0; i < linesRy.length; i++) {
					    var l = linesRy[i];
					    for (var j = i + 1; j < linesRy.length; j++) {
					      var l1 = linesRy[j]
					      Intersect2lines(l, l1);
					    }
					  }
					}
					
					function Init() {
					  linesRy.length = 0;
					  for (var i = 0; i < linesNum; i++) {
					    var flag = i % 2 == 0 ? "h" : "v";
					    var l = new Line(flag);
					    linesRy.push(l);
					  }
					
					  if (requestId) {
					    window.cancelAnimationFrame(requestId);
					    requestId = null;
					  }
					
					  cw = canvas.width = window.innerWidth,
					    cx = cw / 2;
					  ch = canvas.height = window.innerHeight,
					    cy = ch / 2;
					
					  Draw();
					};
					
					setTimeout(function() {
					  Init();
					
					  addEventListener('resize', Init, false);
					}, 15);
					
					function Intersect2lines(l1, l2) {
					  var p1 = l1.a,
					    p2 = l1.b,
					    p3 = l2.a,
					    p4 = l2.b;
					  var denominator = (p4.y - p3.y) * (p2.x - p1.x) - (p4.x - p3.x) * (p2.y - p1.y);
					  var ua = ((p4.x - p3.x) * (p1.y - p3.y) - (p4.y - p3.y) * (p1.x - p3.x)) / denominator;
					  var ub = ((p2.x - p1.x) * (p1.y - p3.y) - (p2.y - p1.y) * (p1.x - p3.x)) / denominator;
					  var x = p1.x + ua * (p2.x - p1.x);
					  var y = p1.y + ua * (p2.y - p1.y);
					  if (ua > 0 && ub > 0) {
					    markPoint({
					      x: x,
					      y: y
					    })
					  }
					}
					
					function markPoint(p) {
					  ctx.beginPath();
					  ctx.arc(p.x, p.y, 2, 0, 2 * Math.PI);
					  ctx.fill();
					}
					
					function randomIntFromInterval(mn, mx) {
					  return ~~(Math.random() * (mx - mn + 1) + mn);
					}
				</script>
	
				<!-- Main Page -->
				<div class="body-register">
					<div class="center-register" style="position:relative;z-index:1;">
						<a href="#" class="logo pull-left hidden-xs">
							<img src="../assets/img/logo1.png" height="55" alt="NADHIF Admin" />
						</a>

						<div class="panel panel-register">
							<div class="panel-title-register text-right">
								<h2 class="title text-uppercase"><i class="fa fa-user"></i>&nbsp; 账号注册 &nbsp;</h2>
							</div>
							<div class="panel-body">
								<form>
									<div class="form-group">
										<label>用户名</label>
										<input name="userName" id="userName" type="text" class="form-control" required="required" />
									</div>

									<div class="form-group">
										<label>E-mail</label>
										<input name="email" id="email" type="email" class="form-control" required="required" />
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<label>密码</label>
												<input name="passWord" id="passWord" type="password" class="form-control" required="required" />
											</div>
											<div class="col-sm-6">
												<label>密码确认</label>
												<input name="pwd_confirm" id="pwd_confirm" type="password" class="form-control" required="required" />
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-8">
											<div class="checkbox-custom checkbox-default">
												<input id="AgreeTerms" name="agreeterms" type="checkbox" required="required" />
												<label for="AgreeTerms">我同意<a href="#"><small><strong><font color="black">使用条款</font></strong></small></a></label>
											</div>
										</div>
										<div class="col-sm-4 text-right">
											<button  type="button" class="btn btn-primary hidden-xs bk-margin-top-10" onclick="check_register()"> &nbsp;注 &nbsp; 册&nbsp; </button>
										</div>
									</div>

									<div class="text-with-hr"></div>
									<br />
									<br />
									<p class="text-center">我已经有账号？ <a href="../login"><small>登录</small></a>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- End Main Page -->				
		
			</div>
		</div><!--/container-->
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="../assets/vendor/js/jquery.min.js"></script>
		<script src="../assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="../assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../assets/vendor/skycons/js/skycons.js"></script>
		
		<!-- Plugins JS-->
		
		<!-- Theme JS -->		
		<script src="../assets/js/jquery.mmenu.min.js"></script>
		<script src="../assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="../assets/js/pages/page-register.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>