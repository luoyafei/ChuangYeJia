<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<title>查看用户资料</title>

	 <!-- Bootstrap core JavaScript
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=path%>/assets/jQuery/2.x/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/assets/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
    <script src="<%=path%>/assets/bootstrap-3.3.5/docs/assets/js/vendor/holder.min.js"></script>
    <script src="<%=path%>/assets/bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<%=path%>/assets/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=path%>/assets/bootstrap-3.3.5/docs/examples/dashboard/dashboard.css" rel="stylesheet" />
	<script src="<%=path%>/assets/bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>
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
					<img class="" src="<%=path %>/assets/img/content_detail/333.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div class="logo-img" style="width: 100%;">
								<span>
									<img data-holder-rendered="true" src="<s:property value='#session.user.userPhoto'/>" style="width: 100px; height: 100px;" class="img-circle" />
								</span>
								<span>
									<a style="font-size: 14px;text-decoration: none;">
										<s:property value="#session.user.userNickName"/>，您好
									</a> 
								</span>
								<span>
								<img src="<%=path %>/assets/img/user/level.png" style="width: 12%;height: 5%; margin-bottom: 0px;padding-bottom: 0px;">
								</span>
							</div>
							<p style="margin-bottom: 0px;font-size: 32px;">
								<br>
								用户资料
							</p>
							<br />
							<br />
							<br />
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;width: 100%;">
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">
						WHO&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;AM
					</p>
					<p style="float: right;">
						随经济全球化以及生产专业化现象的普遍，社会分工和协同合作已经成为了一种创业趋势。
					</p>
					<h2 style="margin-top: 0;" style="color: black;">
						个人中心
					</h2>
				</div>
			</div>
			
			<div class="uk-block uk-block-muted" style="width:100%;height: 400px;">

                <div class="uk-container">

                    <div class="uk-grid uk-grid-match" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-2 uk-row-first">
                            <div class="uk-panel">
                             	<div class="uk-thumbnail uk-thumbnail-large">
									<img  style="height: 300px;" src='<s:property value="#session.user.userPhoto"/>' />
								</div>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-panel">
                                <ul class="uk-list uk-list-line">
									<li>用户昵称:&nbsp;&nbsp;&nbsp;&nbsp;<span><s:property value="#session.user.userNickName"/></span></li>
									<li>用户邮箱:&nbsp;&nbsp;&nbsp;&nbsp;<span><s:property value="#session.user.userEmail"/></span></li>
									<li>所属地址:&nbsp;&nbsp;&nbsp;&nbsp;<span><s:property value="#session.user.userAddress"/></span></li>
									<li>用户简介:&nbsp;&nbsp;&nbsp;&nbsp;<span><s:property value="#session.user.userIntroduce"/></span></li>
								</ul>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            
            <div class="uk-width-medium-1-2 uk-container-center">
                <div class="uk-panel uk-panel-box uk-panel-box-primary" style="text-align: center">
					<h4>当前团队状态：</h4>
				</div>
            </div>
			<hr class="featurette-divider">
			
			
			<div style="width: 80%;margin: 0 auto;">
				<div class="main-right" style="width: 100%;text-align: center;height: 100%;float: right;padding-top: 20px;">
					<a class="btn btn-default" onclick="connect_our_im()" style="border: solid #A9A9A9 2px; border-radius: 10px;">联系ta</a>
				</div>
			</div>
			
			<hr class="featurette-divider">
			
			<div class="uk-grid">
			    <div class="uk-width-3-10">
					<label style="border-radius: 10px;margin-right: 20px;float: right;font-size: 24px">认证情况：</label>
				</div>
			    <div class="uk-width-7-10">
			    	<div class="uk-grid uk-grid-small">
                           <div class="uk-width-1-3">
							<a class="btn btn-default" style="border: solid #398BE5 3px; border-radius: 10px;color: #398BE5;margin-right: 20px;">实名认证</a>
						</div>
						<div class="uk-width-1-3">
							<a class="btn btn-default" style="border: solid #398BE5 3px; border-radius: 10px;color: #398BE5;margin-right: 20px;">实名认证</a>
						</div>
						<div class="uk-width-1-3">
							<a class="btn btn-default" style="border: solid #398BE5 3px; border-radius: 10px;color: #398BE5;margin-right: 20px;">实名认证</a>
						</div>
                       </div>
				</div>
			</div>
		</div>	


</body>
<script>$('#myTab a').click(function(e) {
	e.preventDefault()
	$(this).tab('show')
})
$(document).ready(function() {
	$("td").attr("style", "border-top: solid #333333 1px;");
});
</script>
</html>
