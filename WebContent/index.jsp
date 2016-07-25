<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">

	<head>
	
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

		<title>YANSPRO平台</title>

		<!-- Bootstrap core CSS -->
		<link href="assets/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="assets/bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>
		<link href="assets/bootstrap-3.3.5/docs/examples/carousel/carousel.css" rel="stylesheet">
		<link rel="shortcut icon" href="assets/img/icon1.jpg">
		<!-- Bootstrap core JavaScript
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="assets/jQuery/2.x/jquery-2.1.4.min.js"></script>
		<script src="assets/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
		<script src="assets/bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>

		
		
		<style type="text/css">
			body {
				font-family: "微软雅黑";
				padding-bottom: 0px;
				overflow-x: hidden;
			}

			li a {
				color: snow;
			}

			.nav .active a {
				border-bottom: solid #398BE5 3px;
				color: #398BE5;
				font-weight: bold;
			}

			#navbar ul a:hover {
				border-bottom: solid #398BE5 3px;
				color: #398BE5;
				background-color: transparent;
			}

			#inputSearch {
				border-radius: 20px;
				background-color: #A9A9A9;
			}

			.col-lg-3 {
				margin: 0 0;
				padding: 0 0;
			}

			.col-lg-4 {
				margin: 0 0;
				padding: 0 0;
			}

			.marketing .col-lg-4 {
    			margin-bottom: 0px;
   			}
		</style>

		<!-- <script>
			function barHide() {
				if ($(window).scrollTop() > 100) {
					$("#navbar").hide();
				} else {
					$("#navbar").show();
				}
			}
		</script>
 -->
	</head>

	<body onscroll="barHide()">
	
		<jsp:include page="/pages/module/index_bar.jsp" flush="true" />
			
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-bottom: 0px;">
			<!-- Indicators -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="" src="assets/img/indexpage/333.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div class="logo-img" style="width: 100%;">
								<span><img src="assets/img/logo.png" style="width: 18%;height: 8%; margin-bottom: 0px;padding-bottom: 0px;"></span>
							</div>

							<h1 style="margin-top: 0px; margin-bottom: 0px;color: #398BE5;">创业+</h1>
							<p style="margin-bottom: 0px;">
								<br> 欢迎来到创业加网站，在这里，我们能为你提供最具有潜力的项目，最可靠的资源，最优秀的团队，最专业的分析
							</p>
							<p style="padding-top: 10px;margin-bottom: 0px;">
								<a class="btn btn-primary" href="pages/team/create_team.jsp" role="button" style="border-radius: 20px;">创建你的团队</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;">
			<!-- Three columns of text below the carousel -->
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">WHAT&nbsp;&nbsp;&nbsp;&nbsp;WE&nbsp;&nbsp;&nbsp;&nbsp;DO</p>
					<p style="float: right;">随经济全球化以及生产专业化现象的普遍，社会分工和协同合作已经成为了一种创业趋势。</p>
					<h2 style="margin-top: 0;" style="color: black;">项目分类</h2>
				</div>
			</div>
			<div class="marketing-nav">
				<ul class="nav nav-tabs marketing-nav-content" role="tablist">
					<li role="presentation" class="active"><a href="#">综合</a></li>
					<li role="presentation"><a href="#" style="color: black;">按更新排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按热度排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按内容排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按运行阶段排列</a></li>
				</ul>
			</div>



			<div class="row" style="width: 100%;margin:0 auto">
<!-- 
			<?php
			if(is_array($project_list) && count($project_list,COUNT_NORMAL)>0){
				$num = 0;
				foreach ($project_list as $project) {
			?>
 -->
			<div class="col-lg-3 row-col-lg-3-1 row-col-lg-3-projectcatagory<? echo $num+1?>" style="position: relative;border-bottom: solid black 1px;">
				<div style="width: 97%;height: 220px;">
					<%-- <img class="img-thumb" src="<?echo $project['project_face'];?>" alt="Generic placeholder image" style="width:100%; height: 220px;"> --%>
				</div>

				<!--###########################此为鼠标移入后的显示###################################-->
				<div class="row-col-lg-3-projectcatagory-main<? echo $num+1?>" style="visibility: hidden; position:absolute;width:97%;height:220px;color: white; background:url(assets/img/indexpage/半透明.png);z-indent:2;left:0;top:0;">
					<div style="width: 60%;height: 55%;margin: 0 auto;">
						<div class="container">
							<a href = "pages/project/project_show.php">
							<img src="assets/img/indexpage/分享.png" style="width:150px;height:32px;margin: 20px auto;margin: 50px auto;" />
							</a>
						</div>
					</div>
					<div style="width: 80%;height: 45%; margin: 0 auto;overflow: hidden;">
						<div class="container projectcatagory-brief" style="font-size: 12px;width: 100%;height: 100%;font-family: STHeiti;">
								<h6 style="">
								<!-- 
								<?php
									echo "<a href='pages/project/project_show.php?projectid=".$project['project_id']."'>";
									echo $project["project_brief"];
									echo "</a>";
									?>
									 -->
								</h6>
							</a>
						</div>
					</div>
				</div>
				<h7>

					<!--
                    	作者：635142812@qq.com
                    	时间：2016-05-25
                    	描述：更改为所属团队
                   
					<?
						$pro = new Project($project['project_id']);
						$group = $pro -> get_group();
						// echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/user/other_show.php?userid=".$group[0]['user_id']."'/>";
						echo "所属团队：".$group[0]['group_name'];
					?>
					 -->
				</h7>
				<hr style="margin: 0 auto 0 auto;" />
				<h6 style="overflow: hidden;">
				<!-- 
				<?php
					echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/project/project_show.php?projectid=".$project['project_id']."'/>";
					echo "项目名称：".$project["project_name"];
					echo "</a>";
				?>
				 -->
				</h6>
			</div>
<!-- 
			<?php
			++$num;
				}
			}
			?>
 -->
			</div>
			<div class="jumbotitle">
				<div class="container">
					<a href="pages/other_entity_list/project_list.php"class="btn btn-lg" style="border-radius: 20px; border: solid black 2px; float: right;margin-top: 20px;">更多内容</a>
				</div>
			</div>
		</div>

		<!--##########################################		此处为资金对接细节	########################################################################-->

		<div class="container marketing" style="background-color: white; padding:50px 0px">
			<!-- Three columns of text below the carousel -->
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">WHAT&nbsp;&nbsp;&nbsp;&nbsp;WE&nbsp;&nbsp;&nbsp;&nbsp;HAVE</p>
					<p style="float: right;">'创业加' 提供了新的创业组合，交互，融合方式</p>
					<h2 style="margin-top: 0;">资金对接</h2>
				</div>
			</div>
			<div class="marketing-nav">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#">综合</a></li>
					<li role="presentation"><a href="#" style="color: black;">按更新排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按热度排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按金额排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按投资类型排列</a></li>
				</ul>
			</div>

			<div class="row" style="width: 100%;margin:0 auto">
<!-- 
			<?php
			if(is_array($fund_list) && count($fund_list,COUNT_NORMAL)>0){
				$num = 0;
				foreach ($fund_list as $fund) {
			?>
 -->
			<div class="col-lg-3 col-lg-4-moneyget<? echo $num+1?>" style="border-bottom: solid black 1px;">
				<div style="width: 97%;height: 220px;">
					<%-- <img class="img-thumb" src="<?echo $fund['fund_face']?>" alt="Generic placeholder image" style="width: 100%;height: 100%;"> --%>
				</div>
				<!--###########################此为鼠标移入后的显示###################################-->
				<div class="col-lg-4-moneyget-main<? echo $num+1?>" style="visibility: hidden; position:absolute;width:97%;height:220px;color: white; background:url(assets/img/indexpage/半透明.png);z-indent:2;left:0;top:0;">
					<div style="width: 60%;height: 55%;margin: 0 auto;">
						<div class="container">
							<!--<a href = "pages/project/project_show.php">-->
							<img src="assets/img/indexpage/分享.png" style="width:150px;height:32px;margin: 20px auto;margin: 50px auto;" />
						</div>
					</div>
					<div style="width: 80%;height: 45%; margin: 0 auto;overflow: hidden;">
						<div class="container projectcatagory-brief" style="font-size: 12px;width: 100%;height: 100%;font-family: STHeiti;">

							<a href="<!-- pages/money/money_show.php?fund_id=<?echo $fund_list[0]['fund_id']?> -->">
								<!-- <?echo $fund['fund_brief'];?>  -->
							</a>
						</div>
					</div>
				</div>
				<!-- 
					<?
						$f = new Fund($fund['fund_id']);
						$leader = $f->get_leader();
						echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/user/other_show.php?userid=".$leader[0]['user_id']."'>";
						echo "资金发起人：".$leader[0]['user_name'];
						echo "</a>";
					?>
					 -->
				</h7>
				<hr style="margin: 0 auto 0 auto;" />
				<h6 style="overflow: hidden;">
				<!-- 
					<?php
						echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/money/money_show.php?moneyid=".$fund['fund_id']."'>";
						echo "资金名称：".$fund["fund_name"];
						echo "</a>";
					?>
					
					 -->
				</h6>

			</div>

<!-- 
			<?php
			++$num;
				}
			}
			?>
	 -->
			</div>

			<div class="jumbotitle">
				<div class="container">
					<a href="pages/money/money_list.php" class="btn btn-lg" style="border-radius: 20px; border: solid black 2px; float: right;margin-top: 20px;margin-bottom: 20px;">更多内容</a>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<!--##########################################		此处为技术服务细节	########################################################################-->

		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px">
			<!-- Three columns of text below the carousel -->
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">WHAT&nbsp;&nbsp;CAN&nbsp;&nbsp;WE&nbsp;&nbsp;OFFER</p>
					<p style="float: right;">我公司开发的创业协同办公软件，可以轻松实现线上信息发布，组织架构，项目审批，创业日志，数据反馈，在线会议，财务管理，创业助手。</p>
					<h2 style="margin-top: 0;">技术服务</h2>
				</div>
			</div>
			<div class="marketing-nav">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#">综合</a></li>
					<li role="presentation"><a href="#" style="color: black;">按更新排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按热度排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按内容排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按生产规模排列</a></li>
				</ul>
			</div>

			<div class="row" style="width: 100%;margin:0 auto">
<!-- 
			<?php
			if(is_array($technology_list) && count($technology_list,COUNT_NORMAL)>0){
				$num = 0;
				foreach ($technology_list as $technology) {
			?>
 -->
			<div class="col-lg-3"  style="border-bottom: solid black 1px;">
				<div class="col-lg-4-technologyservice<? echo $num+1?>">
					<div style="width: 97%;height: 220px;">
						<%-- <img class="img-thumb" src="<?echo $technology['technology_face']?>" alt="Generic placeholder image" style="width:100%; height: 220px;"> --%>
					</div>

					<!--###########################此为鼠标移入后的显示###################################-->
					<div class="col-lg-4-technologyservice-main<? echo $num+1?>" style="visibility: hidden; position:absolute;width:97%;height:220px;color: white; background:url(assets/img/indexpage/半透明.png);z-indent:2;left:0;top:0;">

						<div style="width: 60%;height: 55%;margin: 0 auto;">
							<div class="container">
								<img src="assets/img/indexpage/分享.png" style="width:150px;height:32px;margin: 20px auto;margin: 50px auto;" />
							</div>
						</div>
						<div style="width: 80%;height: 45%; margin: 0 auto;overflow: hidden;">
							<div class="container projectcatagory-brief" style="font-size: 12px;width: 100%;height: 100%;font-family: STHeiti;">
<!-- 
								<a href = "pages/technology/technology_show.php" =<?echo $technology['technology_id'];?>">
									<p><?echo $technology['technology_name']?></p>
								</a>
 -->
							</div>
						</div>
					</div>
				<h7>
				<!-- 
					<?
						$tech = new Technology($technology['technology_id']);
						$leader = $tech->get_leader();
						echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/user/other_show.php?userid=".$leader[0]['user_id']."'>";
						echo "技术发起人：".$leader[0]['user_name'];
						echo "</a>";
					?>
					 -->
				</h7>
				<hr style="margin: 0 auto 0 auto;" />
				<h6 style="overflow: hidden;">
				
				<!-- 
				
					<?php
						echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/technology/technology_show.php?technologyid=".$technology['technology_id']."'>";
						echo "技术名称：".$technology["technology_name"];
						echo "</a>";
					?>
					
					 -->
				</h6>
				</div>
			</div>

<!-- 
			<?php
			++$num;
				}
			}
			?>
 -->
			</div>

			<div class="jumbotitle">
				<div class="container">
					<a href="pages/other_entity_list/technology_list.php"class="btn btn-lg" style="border-radius: 20px; border: solid black 2px; float: right;margin-top: 20px;">更多内容</a>
				</div>
			</div>
		</div>
		<!--##########################################		此处为运营管理细节	########################################################################-->

		<div class="container marketing" style="background-color: white; padding:50px 0px">
			<!-- Three columns of text below the carousel -->
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">HOW&nbsp;&nbsp;TO&nbsp;&nbsp;DO&nbsp;&nbsp;IT</p>
					<p style="float: right;">我公司开发的创业协同办公软件，可以轻松实现线上信息发布，组织架构，项目审批，创业日志，数据反馈，在线会议，财务管理，创业助手，企业云平台等功能。</p>
					<h2 style="margin-top: 0;">运营管理</h2>
				</div>
			</div>
			<div class="marketing-nav">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#">综合</a></li>
					<li role="presentation"><a href="#" style="color: black;">按更新排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按热度排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按服务排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按运营主体排列</a></li>
				</ul>
			</div>

			<div class="row" style="margin-left: 0px;">
<!-- 
			<?php
			if(is_array($operate_list) && count($operate_list,COUNT_NORMAL)>0){
				$num = 0;
				foreach ($operate_list as $operate) {
			?>
 -->
				<div class="col-lg-3 col-lg-3-businessmanager<? echo $num+1?>">
					<div style="width: 97%;height: 220px;">
						<%-- <img class="img-thumb" src="<?echo $operate['operate_face']?>" alt="Generic placeholder image" style="width: 100%;height: 220px;"> --%>
					</div>
					<!--###########################此为鼠标移入后的显示###################################-->
						<div class="col-lg-3-businessmanager-main<? echo $num+1?>" style="visibility: hidden; position:absolute;width:97%;height:220px;color: white; background:url(assets/img/indexpage/半透明.png);z-indent:2;left:0;top:0;">
							<div style="width: 60%;height: 55%;margin: 0 auto;">
							<div class="container">
								<img src="assets/img/indexpage/分享.png" style="width:150px;height:32px;margin: 20px auto;" />
							</div>
							<div style="width: 80%;height: 45%; margin: 0 auto;overflow: hidden;">
								<div class="container projectcatagory-brief" style="font-size: 12px;width: 100%;height: 100%;font-family: STHeiti;">
									<a href = "<!-- pages/manage/manage_show.php?manageid=<?echo $operate['operate_id'];?> -->">
										<!-- <p><?echo $operate['operate_brief'];?></p>
										 -->
									</a>
									</div>
								</div>
							</div>
						</div>
					<h7>
<!-- 
						<?
							$opr= new Operate($operate['operate_id']);
							$leader = $opr->get_leader();
							echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/user/other_show.php?userid=".$leader[0]['user_id']."'/>";
							echo "运营发起人：".$leader[0]['user_name'];
						?>
 -->
					</h7>
					<hr style="margin: 0 auto 0 auto;" />
					<h6 style="overflow: hidden;">
<!-- 
						<?php
							echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/manage/manage_show.php?manageid=".$operate['operate_id']."'>";
							echo "运营名称：".$operate["operate_name"];
							echo "</a>";
						?>
 -->
					</h6>
				</div>
<!-- 
			<?php
			++$num;
				}
			}
			?>
 -->
			</div>
			<div class="jumbotitle">
				<div class="container">
					<a href="pages/other_entity_list/business_list.php" class="btn btn-lg" style="border-radius: 20px; border: solid black 2px; float: right;margin-top: 20px;">更多内容</a>
				</div>
			</div>
		</div>

		<!--##########################################		此处为虚拟市场细节	########################################################################-->

		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px">
			<!-- Three columns of text below the carousel -->
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">WHAT&nbsp;&nbsp;&nbsp;&nbsp;YOU&nbsp;&nbsp;&nbsp;&nbsp;WANT</p>
					<p style="float: right;">用户通过具有创业社交性质的创业加网站可以清晰得区分出自身所具备的创业要素，并且发布真实有效的创业信息到相应的模块。</p>
					<h2 style="margin-top: 0;">虚拟市场</h2>
				</div>
			</div>
			<div class="marketing-nav">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#">综合</a></li>
					<li role="presentation"><a href="#" style="color: black;">按更新排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按热度排列</a></li>
					<li role="presentation"><a href="#" style="color: black;">按产品排列</a></li>
				</ul>
			</div>
			<div class="row" style="width: 100%;height: 100%; margin: 0 auto;">
<!-- 
			<?php
			if(is_array($product_list) && count($product_list,COUNT_NORMAL)>0){
				$num = 0;
				foreach ($product_list as $product) {
			?>
 -->
				<div class="col-lg-3">
					<div class="col-lg-4-dummymarket<? echo $num+1?>">
						<div style="width: 97%;height: 220px;">
							<%-- <img class="img-thumb" src="=<?echo $product['product_face']?>" alt="Generic placeholder image" style="width: 100%;height: 220px;" /> --%>
						</div>
						<!--###########################此为鼠标移入后的显示###################################-->
						<div class="col-lg-4-dummymarket-main<? echo $num+1?>" style="visibility: hidden; position:absolute;width:97%;height:220px;color: white; background:url(assets/img/indexpage/半透明.png);z-indent:2;left:0;top:0;">

							<div style="width: 25%;height: 100%;overflow: hidden;float:left;">
								<div class="projectcatagory-brief" style="font-size: 12px;width: 100%;height: 100%;font-family: STHeiti;">
									<div class="projectcatagory-brief-content">
										<img src="assets/img/indexpage/分享.png" style="width:150px;height:32px;margin: 20px auto;margin: 50px auto;" />
										<a href = "<!-- pages/product/product_show.php?projectid=<?echo $product['product_id'];?> -->">
										<!-- <p><?echo $product['product_brief']?></p>  -->
									</a>
									</div>
								</div>

							</div>
							<div style="width: 75%;height: 100%;float: right;overflow: hidden;">
							</div>
						</div>
					</div>
					<h7>
<!-- 
						<?
							$g_name = Group::get_group_name($product['group_id']);
							echo "所属团队：".$g_name[0]['group_name'];
						?>
 -->
					</h7>
					<hr style="margin: 0 auto 0 auto;" />
					<h6 style="overflow: hidden;">
<!-- 
						<?php
							echo "<a style='white-space: nowrap;text-overflow: ellipsis;' href='pages/product/product_show.php?productid=".$product_list[0]['product_id']."'>";
							echo "产品名称：".$product["product_name"];
							echo "</a>";
						?>
						
 -->
					</h6>
				</div>
<!-- 
			<?php
				++$num;
				}
			}
			?>
 -->
			</div>
			<div class="jumbotitle">
				<div class="container">
					<a href="pages/other_entity_list/market_list.php" class="btn btn-lg" style="border-radius: 20px; border: solid black 1px; float: right;margin-top: 20px;">更多内容</a>
				</div>
			</div>
			<hr class="featurette-divider" style="padding-bottom: 0px;padding-top: 0px; margin-top: 0px; margin-bottom: 0px; width: 100%;">
		</div>
		</div>
	</div>
	</div>
		<!-- <?require("pages/module/bottom.php");?> -->

		<!-- 点击登陆出现的登陆框 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">请登录</h4>
					</div>
					<div class="modal-body">
						<div class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-10">
									<input type="email" class="form-control" id="modal-email" placeholder="Email" onblur="checkModalEmail()">
								</div>
								<div class="modal-errorInfo">
									<span id="modal-gly-info" class="glyphicon"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<input type="password" class="form-control" id="modal-password" placeholder="Password">
								</div>
								<div class="modal-errorInfo">
									<span id="modal-gly-password-info" class="glyphicon"></span>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-default" id="modal-submit" onclick="checkModalData()">登陆</button>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		$(document).ready(function() {

			$("td").attr("style", "border-top: solid #333333 1px;");

			var $imgmouseover1 = $(".row-col-lg-3-projectcatagory-main1"); //项目类型的鼠标移入移出的特效
			$(".row-col-lg-3-projectcatagory1").mouseover(function() {
				$imgmouseover1.css("visibility","visible");
			}).mouseout(function() {
				/*$imgmouseover1.show();*/
				$imgmouseover1.css("visibility","hidden");
			});
			var $imgmouseover2 = $(".row-col-lg-3-projectcatagory-main2"); //项目类型的鼠标移入移出的特效
			$(".row-col-lg-3-projectcatagory2").mouseover(function() {
				$imgmouseover2.css("visibility","visible");
			}).mouseout(function() {
				/*$imgmouseover1.show();*/
				$imgmouseover2.css("visibility","hidden");
			});
			var $imgmouseover3 = $(".row-col-lg-3-projectcatagory-main3"); //项目类型的鼠标移入移出的特效
			$(".row-col-lg-3-projectcatagory3").mouseover(function() {
				$imgmouseover3.css("visibility","visible");
			}).mouseout(function() {
				/*$imgmouseover1.show();*/
				$imgmouseover3.css("visibility","hidden");
			});
			var $imgmouseover4 = $(".row-col-lg-3-projectcatagory-main4"); //项目类型的鼠标移入移出的特效
			$(".row-col-lg-3-projectcatagory4").mouseover(function() {
				$imgmouseover4.css("visibility","visible");
			}).mouseout(function() {
				/*$imgmouseover1.show();*/
				$imgmouseover4.css("visibility","hidden");
			});


			var $imgmouseovermoneyget1 = $(".col-lg-4-moneyget-main1"); //资金对接的鼠标移入移出的特效
			$(".col-lg-4-moneyget1").mouseover(function() {
				$imgmouseovermoneyget1.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovermoneyget1.css("visibility","hidden");
			});
			var $imgmouseovermoneyget2 = $(".col-lg-4-moneyget-main2"); //资金对接的鼠标移入移出的特效
			$(".col-lg-4-moneyget2").mouseover(function() {
				$imgmouseovermoneyget2.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovermoneyget2.css("visibility","hidden");
			});
			var $imgmouseovermoneyget3 = $(".col-lg-4-moneyget-main3"); //资金对接的鼠标移入移出的特效
			$(".col-lg-4-moneyget3").mouseover(function() {
				$imgmouseovermoneyget3.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovermoneyget3.css("visibility","hidden");
			});
			var $imgmouseovermoneyget4 = $(".col-lg-4-moneyget-main4"); //资金对接的鼠标移入移出的特效
			$(".col-lg-4-moneyget4").mouseover(function() {
				$imgmouseovermoneyget4.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovermoneyget4.css("visibility","hidden");
			});


			var $imgmouseovertechnologyservice1 = $(".col-lg-4-technologyservice-main1"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-technologyservice1").mouseover(function() {
				$imgmouseovertechnologyservice1.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovertechnologyservice1.css("visibility","hidden");
			});
			var $imgmouseovertechnologyservice2 = $(".col-lg-4-technologyservice-main2"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-technologyservice2").mouseover(function() {
				$imgmouseovertechnologyservice2.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovertechnologyservice2.css("visibility","hidden");
			});
			var $imgmouseovertechnologyservice3 = $(".col-lg-4-technologyservice-main3"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-technologyservice3").mouseover(function() {
				$imgmouseovertechnologyservice3.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovertechnologyservice3.css("visibility","hidden");
			});
			var $imgmouseovertechnologyservice4 = $(".col-lg-4-technologyservice-main4"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-technologyservice4").mouseover(function() {
				$imgmouseovertechnologyservice4.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseovertechnologyservice4.css("visibility","hidden");
			});


			var $imgmouseoverbusinessmanager1 = $(".col-lg-3-businessmanager-main1"); //运营管理的鼠标移入移出的特效
			$(".col-lg-3-businessmanager1").mouseover(function() {
				$imgmouseoverbusinessmanager1.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverbusinessmanager1.css("visibility","hidden");
			});
			var $imgmouseoverbusinessmanager2 = $(".col-lg-3-businessmanager-main2"); //运营管理的鼠标移入移出的特效
			$(".col-lg-3-businessmanager2").mouseover(function() {
				$imgmouseoverbusinessmanager2.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverbusinessmanager2.css("visibility","hidden");
			});
			var $imgmouseoverbusinessmanager3 = $(".col-lg-3-businessmanager-main3"); //运营管理的鼠标移入移出的特效
			$(".col-lg-3-businessmanager3").mouseover(function() {
				$imgmouseoverbusinessmanager3.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverbusinessmanager3.css("visibility","hidden");
			});
			var $imgmouseoverbusinessmanager4 = $(".col-lg-3-businessmanager-main4"); //运营管理的鼠标移入移出的特效
			$(".col-lg-3-businessmanager4").mouseover(function() {
				$imgmouseoverbusinessmanager4.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverbusinessmanager4.css("visibility","hidden");
			});


			var $imgmouseoverdummymarket1 = $(".col-lg-4-dummymarket-main1"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-dummymarket1").mouseover(function() {
				$imgmouseoverdummymarket1.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverdummymarket1.css("visibility","hidden");
			});
			var $imgmouseoverdummymarket2 = $(".col-lg-4-dummymarket-main2"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-dummymarket2").mouseover(function() {
				$imgmouseoverdummymarket2.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverdummymarket2.css("visibility","hidden");
			});
			var $imgmouseoverdummymarket3 = $(".col-lg-4-dummymarket-main3"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-dummymarket3").mouseover(function() {
				$imgmouseoverdummymarket3.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverdummymarket3.css("visibility","hidden");
			});
			var $imgmouseoverdummymarket4 = $(".col-lg-4-dummymarket-main4"); //技术服务的鼠标移入移出的特效
			$(".col-lg-4-dummymarket4").mouseover(function() {
				$imgmouseoverdummymarket4.css("visibility","visible");
			}).mouseout(function() {
				$imgmouseoverdummymarket4.css("visibility","hidden");
			});
 		});
	</script>
	
</html>
