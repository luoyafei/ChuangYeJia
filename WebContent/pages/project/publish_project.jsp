<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<title>
			发布项目
		</title>
		<!-- Bootstrap core CSS -->
		<link href="<%=path%>/assets/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="<%=path%>/assets/bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>
		<script charset="utf-8" src="<%=path%>/assets/ke/kindeditor.js"></script>
		<link href="<%=path%>/assets/bootstrap-3.3.5/docs/examples/carousel/carousel.css" rel="stylesheet">

		<!-- Bootstrap core JavaScript
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=path%>/assets/jQuery/2.x/jquery-2.1.4.min.js"></script>
		<script src="<%=path%>/assets/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
		<script src="<%=path%>/assets/bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>

		<style>
			body {
				font-family: "微软雅黑";
				padding-bottom: 0px;
			}
			
			li a {
				color: snow;
			}
			
			.row .img {
				margin-right: 5px;
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
			
			#choicelabel a {
				color: black;
			}
			
			#choicelabel .active {
				color: #398BE5;
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


	</head>

	<body onscroll="barHide()" style="background-color: #F5F5F5;">

		<jsp:include page="/pages/module/index_bar.jsp" flush="true" />

		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-bottom: 0px;">
			<!-- Indicators -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="" src="<%=path %>/assets/img/project/333.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div class="logo-img" style="width: 100%;">
								<span><img src="<%=path %>/assets/img/project/head.png" style="width: 12%;height: 5%; margin-bottom: 0px;padding-bottom: 0px;"></span>
								<span>
									<a style="font-size: 14px;text-decoration: none;">
											<span style="display: block;">用户名</span>
								</a>
								<a style="font-size: 14px;text-decoration: none;">
									<span style="display: block;">信用等级:4</span>
								</a>
								</span>
								<span><img src="<%=path %>/assets/img/project/level.png" style="width: 12%;height: 5%; margin-bottom: 0px;padding-bottom: 0px;"></span>
							</div>

							<p style="margin-bottom: 0px;font-size: 32px;">
								<br> 个人创业历程
							</p>
							<br />
							<br />
							<br />
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;width: 68%;">
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">HOW&nbsp;&nbsp;&nbsp;&nbsp;TO&nbsp;&nbsp;&nbsp;&nbsp;CREATE</p>
					<p style="float: right;">随经济全球化以及生产专业化现象的普遍，社会分工和协同合作已经成为了一种创业趋势。</p>
					<h2 style="margin-top: 0;" style="color: black;">项目分类</h2>
				</div>
			</div>

			<div class="marketing-nav">
				<ul class="nav nav-tabs marketing-nav-content" role="tablist" id="myTab">
					<li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab" style="color: #398BE5;">创建项目</a></li>
				</ul>
			</div>

			<div class="tab-content" style="background-color: white;border-bottom: solid #A9A9A9 2px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div class="tab-content-1" style="width: 80%;height: 1100px;margin: 0 auto; background-color: white;">
						<form class="form-horizontal" role="form" style="margin-left: 0px;" action="<%=path %>/action/project/action_publish_project.php" method="post" enctype="multipart/form-data">

							<div class="form-group" style="margin-right: 0px;margin-left: -10px;">
								<div style="margin-top: 23px;">
									<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;width: 100%;text-align: left;font-weight: normal;">项目名称</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" name="project_name_detail" style="background-color: #F5F5F5;" id="create-project-name1" placeholder="">
									</div>
								</div>
								<hr class="featurette-divider" style="padding-bottom: 0px; margin-bottom: 0px;">
							</div>

							<h4>项目类型</h4>
							<div id="choicelabel" style="border-bottom: dashed #A9A9A9 1px;padding-bottom: 10px;">
								
								<div class="btn-group" data-toggle="buttons">
								  <label class="btn btn-default active">
								    <input type="radio" name="project_catagory" id="project_catagory1" autocomplete="off" checked value="1">移动互联网
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory2" autocomplete="off" value="2">电子商务
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory3" autocomplete="off" value="3">文化艺术
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory4" autocomplete="off" value="4">教育体育
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory5" autocomplete="off" value="5">汽车
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory6" autocomplete="off" value="6">旅游户外
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory7" autocomplete="off" value="7">房产
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory8" autocomplete="off" value="8">营销广告
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory9" autocomplete="off" value="9">硬件
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory10" autocomplete="off" value="10">工具软件
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory11" autocomplete="off" value="11">企业服务
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory12" autocomplete="off" value="12">搜索安全
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory13" autocomplete="off" value="13">医疗健康
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory14" autocomplete="off" value="14">媒体资讯
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory15" autocomplete="off" value="15">生活消费
								  </label>
								   <label class="btn btn-default">
								    <input type="radio" name="project_catagory" id="project_catagory16" autocomplete="off" value="0">其他
								  </label>
								</div>
							</div>

							<h4>项目需求</h4>
							<div id="choicelabel" style="border-bottom: dashed #A9A9A9 1px;padding-bottom: 10px;">

								<div class="btn-group" data-toggle="buttons">
									  <label class="btn btn-default">
									    <input type="radio" name="project_require" id="project_require1" autocomplete="off" checked value="1">资金
									  </label>
									  <label class="btn btn-default">
									    <input type="radio" name="project_require" id="project_require2" autocomplete="off" value="2">技术
									  </label>
									  <label class="btn btn-default">
									    <input type="radio" name="project_require" id="project_require3" autocomplete="off" value="3">运营
									  </label>
									  <label class="btn btn-default active">
									    <input type="radio" name="project_require" id="project_require4" autocomplete="off" value="4">市场
									  </label>
								</div>

							</div>

							<h4>运营阶段</h4>
							<div id="choicelabel" style="border-bottom: dashed #A9A9A9 1px;padding-bottom: 10px;">
								
								<div class="btn-group" data-toggle="buttons">
									  <label class="btn btn-default active">
									    <input type="radio" name="business_status" id="business_status1" autocomplete="off" checked value="1">概念阶段
									  </label>
									  <label class="btn btn-default">
									    <input type="radio" name="business_status" id="business_status2" autocomplete="off" value="2">产品研发中
									  </label>
									  <label class="btn btn-default">
									    <input type="radio" name="business_status" id="business_status3" autocomplete="off" value="3">产品已经上线
									  </label>
								</div>
							</div>

							<div style="border-bottom: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -10px;;padding-top: 15px;">
									<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;width: 100%;text-align: left;font-weight: normal;">产品归属地</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" name="introduce_address_main" style="background-color: #F5F5F5;" id="create-project-name1" placeholder="">
									</div>
								</div>
							</div>
							<!--
                            	作者：635142812@qq.com
                            	时间：2016-04-21
                            	描述：增加项目的简介编辑
                            -->
							<div style="border-bottom: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -10px;;padding-top: 15px;">
									<label for="brief" class="col-sm-2 control-label" style="font-size: 18px;width: 100%;text-align: left;font-weight: normal;">项目简介&nbsp;&nbsp;</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" name="brief" style="background-color: #F5F5F5;" id="brief" placeholder="">
									</div>
								</div>
							</div>

							<script>
								//此处是使用KE在线编辑器
								KE.show({
									id: 'content2',
									resizeMode: 1,
									allowPreviewEmoticons: false,
									allowUpload: false,
									items: [
										'fontname', 'fontsize', '|', 'textcolor', 'bgcolor', 'bold', 'italic', 'underline',
										'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
										'insertunorderedlist', '|', 'emoticons', 'image', 'link'
									]
								});
							</script>

							<div style="border-bottom: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -10px;padding-top:15px;">
									<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;width: 100%;text-align: left;font-weight: normal;">详细内容&nbsp;&nbsp;</label>
									<div class="col-sm-12">
										<textarea id="content2" name="project_content_detail" style="width:100%;height:200px;visibility:hidden;"></textarea>
									</div>
								</div>
							</div>

							<div style="border-bottom: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -45px;padding-top: 15px;">
									<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">上传封面</label>
									<div class="col-sm-10">
										<div>
											<input type="file" class="project_upload_class" style="display: none;" name="file1"></input>
											<input type="file" class="project_upload_class" style="display: none;" name="file2"></input>
											<input type="file" class="project_upload_class" style="display: none;" name="file3"></input>
										</div>
										<div style="text-align: center;">
											<a class="btn btn-default" style="border: solid #A9A9A9 2px; border-radius: 10px;" onclick="project_upload()">立即上传</a>
											<span>&nbsp;(1~3张图片)</span>
										</div>
										
										<script>
											function project_upload() {
												$(".project_upload_class").attr("style", "display: inline;");
											}
										</script>
									</div>
								</div>
							</div>

							<div style="margin: 50px auto;">
								<div class="form-group" style="margin: 0 auto; text-align: center;">
									<button type="submit" class="btn btn-default" name="submit_create_project" value="创建项目"style="border: solid #A9A9A9 2px; border-radius: 10px;">发送</button>
								</div>
							</div>

						</form>

					</div>
				</div>

			</div>

		</div>


	</body>
	<script>
		$(document).ready(function() {
			
			$("td").attr("style", "border-top: solid #333333 1px;");
		});
	</script>

</html>

<!--<?
		}
	}
} else {
	//echo "please login";
	echo "<script>window.location.href='../../pages/module/not_login_redirect.php';</script>";  //登陆界面

	//echo "<script>window.location.href='../../pages/user/login.php";
}
?>
-->