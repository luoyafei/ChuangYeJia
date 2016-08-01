<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		
		<title>
			用户个人中心
		</title>
		
		<!-- Bootstrap core CSS -->
		<link href="<%=path %>/assets/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="<%=path %>/assets/bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>
		<link href="<%=path %>/assets/bootstrap-3.3.5/docs/examples/carousel/carousel.css" rel="stylesheet">

		<!-- Bootstrap core JavaScript -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=path %>/assets/jQuery/2.x/jquery-2.1.4.min.js"></script>
		<script src="<%=path %>/assets/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
		<script src="<%=path %>/assets/bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
		
		
		<!-- uikit -->
		<script src="<%=path%>/assets/uikit/uikit.js"></script>
		<link href="<%=path%>/assets/uikit/uikit.css" rel="stylesheet"/>
		
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
			
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="" src="<%=path %>/assets/img/user/333.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div class="logo-img" style="width: 100%;">
								<span>
									<img src="<%=path %>/assets/img/user/logo.png" style="width: 12%;height: 5%; margin-bottom: 0px;padding-bottom: 0px;">
								</span>
								<span>
									<a style="font-size: 14px;text-decoration: none;">
										<span style="display: block;">ID:姓名/昵称</span>
									</a>
								</span>
								<span>
									<img src="<%=path %>/assets/img/user/level.png" style="width: 12%;height: 5%; margin-bottom: 0px;padding-bottom: 0px;">
								</span>
							</div>
							<p style="margin-bottom: 0px;font-size: 32px;">
								<br>
								个人创业历程
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
					<p style="margin-bottom: 4px;">
						PERSONAL&nbsp;&nbsp;&nbsp;CENTER
					</p>
					<p style="float: right;">
						随经济全球化以及生产专业化现象的普遍，社会分工和协同合作已经成为了一种创业趋势。
					</p>
					<h2 style="margin-top: 0;" style="color: black;">
						个人中心
					</h2>
				</div>
			</div>
			
			<div class="marketing-nav">
				<ul class="nav nav-tabs marketing-nav-content" role="tablist" id="myTab">
					<li role="presentation" class="active">
						<a href="#home" role="tab" data-toggle="tab" style="color: #398BE5;">
							我的资料
						</a>
					</li>

					<li role="presentation">
						<a href="#alterpassword" role="tab" data-toggle="tab" style="color: black;">
							密码修改
						</a>
					</li>
				</ul>
			</div>
			
			
			<!--
				作者：diamond
				时间：2016-07-31
				描述：这里是修改基本信息的tab
			-->

			<div class="tab-content" style="background-color: white;border-bottom: solid #A9A9A9 2px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div class="tab-content-1" style="width: 80%;height: 720px;margin: 0 auto; background-color: white;">
						<div class="form-horizontal" role="form" style="margin-left: 0px;"  method="post" method="post" enctype="multipart/form-data">
							
							<label id="modifyInfoError" style="text-align: center;color: #398BE5; width: 100%;"></label>
							
							
							<div class="form-group" style="margin-right: 0px;margin-left: -45px;">
								<div style="margin-top: 23px;">
									<label for="nickname" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">昵称</label>
									<div class="col-sm-10">
										<input type="text" id="nickname" maxlength="16" name="uid.nickname" class="form-control" style="background-color: #F5F5F5;" value="<s:property value='#session.user.userNickName'/>" />
									</div>
								</div>
								<hr class="featurette-divider" style="padding-bottom: 0px; margin-bottom: 0px;">
							</div>
							<div class="form-group" style="margin-right: 0px;margin-left: -45px;">
								<div style="margin-top: 23px;">
									<label class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">头像</label>
									<div class="col-sm-10">
										<article class="uk-comment">
		                                    <header class="uk-comment-header">
		                                        <img class="uk-comment-avatar" id="userImg" src="<s:property value='#session.user.userPhoto' />" alt="图片加载失败" height="50" width="50">
		                                        <h4 class="uk-comment-title">
													<input type="file" id="picture" style="display:inline;" name="picture" accept="image/*"/>
													<button id="uploadBtn" type="button" class="uk-button uk-button-danger" onclick="userphoto_upload()">
														<span id="uploadInfo">立即上传</span>
														<span id=”uploadOk“ class="" aria-hidden="true" style="display: none;"></span>
													</button>
												</h4>
												
		                                    </header>
		                                </article>
									</div>
								</div>
							</div>
							<div style="border-bottom: dashed #A9A9A9 1px;border-top: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -45px;;padding-top: 15px;">
									<label for="address" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">地址</label>
									<div class="col-sm-10">
										<input type="text" id="address" maxlength="16" name="uid.address" value="<s:property value='#session.user.userAddress'/>" class="form-control" style="background-color: #F5F5F5;">
									</div>
								</div>
							</div>
							
							<div style="border-bottom: dashed #A9A9A9 1px;">
								<div class="form-group" style="margin-right: 0px;margin-left: -45px;padding-top:15px;">
									<label for="profile" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">简介</label>
									<div class="col-sm-10">
										<textarea id="profile" name="uid.profile" style="width:100%;height:200px;"><s:property value='#session.user.userIntroduce'/></textarea>
									</div>
								</div>
							</div>
							<div style="margin: 50px auto;">
								<div class="form-group" style="margin: 0 auto; text-align: center;">
									<button type="submit" onclick="submitModifyInfo()" value="发送个人信息" class="btn btn-default" style="border: solid #A9A9A9 2px; border-radius: 10px;">
										发送
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--
					作者：diamond
					时间：2016-07-31
					描述：这里是修改密码的tab
				-->
				<div role="tabpanel" class="tab-pane" id="alterpassword">
				
					<div class="tab-content-1" style="width: 80%;height: 100%;margin: 0 auto; background-color: white;">
						<div class="form-horizontal" role="form" style="margin-left: 0px;">
						
						<label id="modifyError" style="text-align: center;color: #398BE5; width: 100%;">
						</label>
						
							<div class="form-group" style="margin-right: 0px;margin-left: -45px;;padding-top: 15px;">
								<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">原始密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" maxlength="16" name="password" style="background-color: #F5F5F5;" id="password" />
								</div>
							</div>
							<hr class="featurette-divider" style="padding-bottom: 0px; margin-top: 0px; margin-bottom: 0px;">
							<div class="form-group" style="margin-right: 0px;margin-left: -45px;;padding-top: 15px;">
								<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">新&nbsp;密&nbsp;码&nbsp;</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" maxlength="16" name="newPassword" style="background-color: #F5F5F5;" id="newPassword" />
								</div>
							</div>
							<hr class="featurette-divider" style="padding-bottom: 0px; margin-top: 0px; margin-bottom: 0px;">
							<div class="form-group" style="margin-right: 0px;margin-left: -45px;;padding-top: 15px;">
								<label for="create-project-name1" class="col-sm-2 control-label" style="font-size: 18px;font-weight: normal;">重复密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" maxlength="16" name="reNewPassword" style="background-color: #F5F5F5;" id="reNewPassword" />
								</div>
							</div>
							<hr class="featurette-divider" style="padding-bottom: 0px; margin-top: 0px; margin-bottom: 0px;">
							<div style="margin: 50px auto;">
								<div class="form-group" style="margin: 0 auto; text-align: center;">
									<button class="btn btn-default" onclick="submitModifyPassword()" value="提交修改密码"style="border: solid #A9A9A9 2px; border-radius: 10px;">
										发送
									</button>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	
	<jsp:include page="../module/bottom.jsp" flush="true" />
				
	</body>
	<script src="<%=path%>/assets/manualSource/js/complete_data.js"></script>	
	<script charset="utf-8">
		$('#myTab a').click(function(e) {
			e.preventDefault()
			$(this).tab('show')
		});
		$(document).ready(function() {
			$("td").attr("style", "border-top: solid #333333 1px;");
		});
		
	</script>
</html>