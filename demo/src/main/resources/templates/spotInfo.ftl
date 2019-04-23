<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>景区智能推荐系统@HRBEU_DCY</title>

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="../assets/ico/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="../assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="../assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="../assets/ico/apple-touch-icon-152x152.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="../../assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="../../assets/vendor/skycons/css/skycons.css"
	rel="stylesheet" />
<link href="../../assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Plugins CSS-->
<link href="../../assets/plugins/bootkit/css/bootkit.css"
	rel="stylesheet" />
<link href="../../assets/plugins/scrollbar/css/mCustomScrollbar.css"
	rel="stylesheet" />
<link href="../../assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="../../assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<link href="../../assets/plugins/xcharts/css/xcharts.min.css"
	rel="stylesheet" />
<link href="../../assets/plugins/morris/css/morris.css" rel="stylesheet" />

<!-- Theme CSS -->
<link href="../../assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="../../assets/css/style.css" rel="stylesheet" />
<link href="../../assets/css/add-ons.min.css" rel="stylesheet" />

<!-- end: CSS file-->
<!-- start: JavaScript-->

<!-- Vendor JS-->
<script src="../../assets/vendor/js/jquery.min.js"></script>
<script src="../../assets/vendor/js/jquery-2.1.1.min.js"></script>
<script src="../../assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/vendor/skycons/js/skycons.js"></script>

<!-- Plugins JS-->
<script src="../../assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<script
	src="../../assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="../../assets/plugins/bootkit/js/bootkit.js"></script>
<script src="../../assets/plugins/moment/js/moment.min.js"></script>
<script src="../../assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
<script
	src="../../assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>
<script src="../../assets/plugins/flot/js/jquery.flot.min.js"></script>
<script src="../../assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
<script src="../../assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
<script src="../../assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
<script src="../../assets/plugins/flot/js/jquery.flot.time.min.js"></script>
<script src="../../assets/plugins/xcharts/js/xcharts.min.js"></script>
<script src="../../assets/plugins/autosize/jquery.autosize.min.js"></script>
<script
	src="../../assets/plugins/placeholder/js/jquery.placeholder.min.js"></script>
<script
	src="../../assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
<script
	src="../../assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
<script src="../../assets/plugins/raphael/js/raphael.min.js"></script>
<script src="../../assets/plugins/morris/js/morris.min.js"></script>
<script src="../../assets/plugins/gauge/js/gauge.min.js"></script>
<script src="../../assets/plugins/d3/js/d3.min.js"></script>
<!--<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>-->

<!-- Theme JS -->
<script src="../../assets/js/jquery.mmenu.min.js"></script>
<script src="../../assets/js/core.min.js"></script>

<!-- end: JavaScript-->

<!-- Head Libs -->
<script src="../assets/plugins/modernizr/js/modernizr.js"></script>

<script src="../../assets/js/bootstrap-select.js"></script>
<link href="../../assets/css/bootstrap-select.css" rel="stylesheet" />
<script src="../../assets/js/bootstrap-select.js"></script>
<link href="../../assets/css/bootstrap-select.css" rel="stylesheet" />
<script src="../../assets/js/bootstrap-datetimepicker.min.js"></script>
<link href="../../assets/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen" />
<script src="../../assets/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="../../assets/js/fileUtil.js"></script>
<link href="../../assets/css/star-rating.css" rel="stylesheet" />
<script src="../../assets/js/star-rating.js"></script>

<style>
.table>tbody>tr>td{
    border:0px;
    vertical-align: middle !important;
    margin:5px;
    padding:5px;
    }


</style>

<script>
	function graClassChange() {
		$('#graId').empty();
		var param = {};
		param.graClass = $('#graClass').val();

		$.ajax({
			traditional : true,
			async:false,
			url : "../spot/spotInfoByClass",
			type : "POST",
			data : param,
			dataType : "json",
			success : function(data) {
				for (var i = 0; i < data.graList.length; i++) {
					var option = '<option value="'+data.graList[i].graId+'">'
							+ data.graList[i].graName + '</option>';
					$("#graId").append(option);
				}
				$("#graId").selectpicker('refresh');
			},
			error : function() {
				console.log("class");
				alert("网络异常");
			}
		});
	}

	function graIdChange() {
		var param = {};
		param.graId = $('#graId').val();

		$.ajax({
			traditional : true,
			async:false,
			url : "../spot/spotInfoHtml",
			type : "POST",
			data : param,
			dataType : "json",
			success : function(data) {
				$('#spotInfoShow').replaceWith(data.spotHtml);
			},
			error : function() {
				console.log("id");
				alert("网络异常");
			}
		});
		
		
		$.ajax({
			traditional : true,
			async:false,
			url : "../comment/commentScoreCount",
			type : "POST",
			data : param,
			dataType : "json",
			success : function(data) {
				//星级替换代码
				$('#spotInfoPicture').attr("src","../images/spotInfoPicture/gra"+$('#graId').val()+".jpg");
				$('#graName').text($('#graId option:selected').text());
				$('#sumPeople').text(data.sumPeople+"");
				$('#oneStar').css("width",data.oneStar+"%");
				$('#oneStarText').text(data.oneStar+"%");
				$('#twoStar').css("width",data.twoStar+"%");
				$('#twoStarText').text(data.twoStar+"%");
				$('#threeStar').css("width",data.threeStar+"%");
				$('#threeStarText').text(data.threeStar+"%");
				$('#fourStar').css("width",data.fourStar+"%");
				$('#fourStarText').text(data.fourStar+"%");
				$('#fiveStar').css("width",data.fiveStar+"%");
				$('#fiveStarText').text(data.fiveStar+"%");
				$('#averageScore').text(data.averageScore);
				$('#averageStar').attr("value", data.averageScore+"");
				$('#averageStar').rating('refresh',{ 
					stars:5, 
					min: 0, 
					max: 5, 
					step: 1, 
					showClear: false, 
					}); 
					
				
				
				$('.kv-uni-star').rating({
		            theme: 'krajee-uni',
		            filledStar: '&#x2605;',
		            emptyStar: '&#x2606;'
		        });
		        $('.kv-uni-rook').rating({
		            theme: 'krajee-uni',
		            defaultCaption: '{rating} rooks',
		            starCaptions: function (rating) {
		                return rating == 1 ? 'One rook' : rating + ' rooks';
		            },
		            filledStar: '&#9820;',
		            emptyStar: '&#9814;'
		        });
		        //$('.caption').css("display","none");
			},
			error : function() {
				console.log("id");
				alert("网络异常");
			}
		});
	}
	
	function aprioriClick(id,c){
		$('#graClass').val(c);
		$('#graClass').selectpicker('refresh');
		graClassChange();
		$('#graId').val(id);
		$("#graId").selectpicker('refresh');
		
		graIdChange();
	}
	
	$(function(){
		graIdChange();
		
	});
</script>

</head>

<body>

	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a id="main-menu-toggle"><i
						class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a id="sidebar-menu"><i
						class="fa fa-navicon"></i></a></li>
			</ul>
			
			
		</div>
	</div>
	<!-- End: Header -->
	<div class="copyrights">
		
	</div>
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="../../assets/img/logo1.png" class="img-responsive" alt="" />
					</div>
					<!-- Sidebar Menu-->
					<div class="sidebar-menu">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								<div class="panel-body text-center">
									<div class="bk-avatar">
										<a href="${request.contextPath}/personInfo"><img
											src="../../images/${Session.user.headUrl}"
											class="img-circle bk-img-60" alt="" /></a>
									</div>
									<div class="bk-padding-top-10">
										<i class="fa fa-circle text-success"></i><small>
											${Session.user.userName}</small>
									</div>
								</div>
								<div class="divider2"></div>
								<li ><a href="${request.contextPath}/index"> <i class="fa fa-laptop"
										aria-hidden="true"></i><span>首页</span>
								</a></li>
								<li><a href="${request.contextPath}/route/routePageTests"> <i
										class="fa fa-envelope" aria-hidden="true"></i><span>旅游路线推荐</span>
								</a></li>
								<li class="active" ><a> <i class="fa fa-copy" aria-hidden="true"></i><span>景点信息查询</span>
								</a></li>
								<li ><a
									href="${request.contextPath}/comment/commentList"> <i
										class="fa fa-list-alt" aria-hidden="true"></i><span>旅行信息分享</span>
								</a></li>
								<li><a href="table.html"> <i class="fa fa-table"
										aria-hidden="true"></i><span>关于我们</span>
								</a></li>

							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">

					<div class="copyright text-center">
						<small>HRBEU@DongChunyin 2019</small>
					</div>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="index.html"><i class="icon fa fa-home"></i>Home</a></li>
							<li class="active"><i class="fa fa-copy"></i>景点信息查询</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>HRBEU</h2>
					</div>
				</div>
				<!-- End Page Header -->

				<div class="row">
					<select id="graClass" name="graClass" class="selectpicker"
						data-live-search="true" onchange="graClassChange()">
						<#list graClass as g>
						<option value="${g}">${g}</option>
						</#list>
					</select> <select id="graId" name="graId" class="selectpicker"
						data-live-search="true">
						<#list graList as g>
						<option value="${g.graId}">${g.graName}</option>
						</#list>
					</select>
					<button id="querySpotInfo" class="btn btn-primary"
						onclick="graIdChange()">查询信息</button>
					<span><font size="5" >已为您智能推荐以下景区：</font></span>
					<#list graAprioriList as gal >
						<button class="btn btn-success aprioriButton" value="${gal.graName}" onclick="aprioriClick('${gal.graId}','${gal.graClass}')" >${gal.graName}</button>
					</#list>	
					
					<div id="spotScaleShow" name="spotScaleShow"
						class="row panel-body bk-bg-white"
						style="padding-bottom: 0px; margin-bottom: 0px">
						<div class="col-xs-6 col-sm-4 bk-bg-white" style="padding-bottom: 0px; margin-bottom: 0px" >
						<br/>
					         <img id="spotInfoPicture" src="../images/spotInfoPicture/gra1.jpg" style="width:100%" />
					    </div>
						<div class="col-xs-6 col-sm-4 bk-bg-white" style="padding-bottom: 0px; margin-bottom: 0px" >
					         <p><h2><span id="graName">文化公园</span></h2></p>
					         <div id="graScaleShow" name="graScaleShow">
					         	<label class="form-inline"><h1><span id="averageScore">5.0</span></h1></label><label class="form-inline"><h4>分 </h4></label>
								<label class="form-inline"><input id="averageStar" name="averageStar" data-size="lg" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="5"></label>
								<label class="form-inline"> &nbsp;共<span id="sumPeople">999</span>人参与评分</label>
								<table class="table table-hover" style="width:80%" >
					         		<tr>
					         			<td><input id="commetScole" name="commetScole" data-size="sm" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="5"></td>
					         			<td><div class="progress bk-bg-white" style="width:100%">
											<div id="fiveStar" class="progress-bar progress-bar-success" role="progressbar"
												 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												 style="width: 90%;">
											</div>
										</div></td>
										<td><span id="fiveStarText" >90%</span></td>
					         		</tr>
					         		<tr>
					         			<td><input id="commetScole" name="commetScole" data-size="sm" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="4"></td>
					         			<td><div class="progress bk-bg-white" style="width:100%">
											<div id="fourStar" class="progress-bar progress-bar-success" role="progressbar"
												 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												 style="width: 90%;">
											</div>
										</div></td>
										<td><span id="fourStarText" >90%</span></td>
					         		</tr>
					         		<tr>
					         			<td><input id="commetScole" name="commetScole" data-size="sm" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="3"></td>
					         			<td><div class="progress bk-bg-white" style="width:100%">
											<div id="threeStar" class="progress-bar progress-bar-success" role="progressbar"
												 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												 style="width: 90%;">
											</div>
										</div></td>
										<td><span id="threeStarText" >90%</span></td>
					         		</tr>
					         		<tr>
					         			<td style="width:20%; border:0px"><input id="commetScole" name="commetScole" data-size="sm" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="2"></td>
					         			<td><div class="progress bk-bg-white" style="width:100%">
											<div id="twoStar" class="progress-bar progress-bar-success" role="progressbar"
												 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												 style="width: 90%;">
											</div>
										</div></td>
										<td style="width:10%"><span id="twoStarText" >90%</span></td>
					         		</tr>
					         		<tr>
					         			<td><input id="commetScole" name="commetScole" data-size="sm" class="kv-uni-star rating-loading" data-show-clear="false" data-show-caption="false" readonly="readonly" value="1"></td>
					         			<td><div class="progress bk-bg-white" style="width:100%">
											<div id="oneStar" class="progress-bar progress-bar-success" role="progressbar"
												 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												 style="width: 90%;">
											</div>
										</div></td>
										<td><span id="oneStarText" >90%</span></td>
					         		</tr>
					         	</table>
					         </div>
					    </div>
					</div>
					
					<div id="spotInfoShow" name="spotInfoShow"
						class="panel-body bk-bg-white"
						style="padding-bottom: 0px; margin-bottom: 0px">
					</div>
				</div>

				<!-- End Main Page -->


			</div>
		</div>
		<!--/container-->


		<!-- Modal Dialog -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title bk-fg-primary">Modal title</h4>
					</div>
					<div class="modal-body">
						<p class="bk-fg-danger">Here settings can be configured...</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Modal Dialog -->

		<div class="clearfix"></div>
</body>

</html>