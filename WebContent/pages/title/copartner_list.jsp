<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

		<title>合伙人列表</title>

		<!-- Bootstrap core JavaScript
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=path %>/assets/jQuery/2.x/jquery-2.1.4.min.js"></script>
		<script src="<%=path %>/assets/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
		<script src="<%=path %>/assets/bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
	
		<!-- Bootstrap core CSS -->
		<link href="<%=path %>/assets/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="<%=path %>/assets/bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>
		<link href="<%=path %>/assets/bootstrap-3.3.5/docs/examples/carousel/carousel.css" rel="stylesheet">

		<!-- uikit -->
		<script src="<%=path%>/assets/uikit/uikit.js"></script>
		<link href="<%=path%>/assets/uikit/uikit.css" rel="stylesheet"/>
		<link href="<%=path%>/assets/uikit/tooltip.css" rel="stylesheet"/>
		<script src="<%=path%>/assets/uikit/tooltip.js"></script>
		<link href="<%=path%>/assets/uikit/slideshow.css" rel="stylesheet"/>
		<script src="<%=path%>/assets/uikit/uikit.js"></script>
		<script src="<%=path%>/assets/uikit/slideshow.js"></script>

		<style>
			body {
				font-family: "微软雅黑";
				padding-bottom: 0px;
				overflow-x: hidden;
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
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="" src="../../assets/img/project/project_list1.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div style="width: 50%;float: right;">
								<p style="font-size: 30px;padding: 0 auto;margin: 0 auto;">国家<span style="font-size: 62px;">最新</span>科研项目</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									人工智能3.0时代</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">正式<span style="font-size: 38px;">开启</span></p>
								<p style="font-size: 15px;padding: 0 auto;margin-top: 5px; margin-bottom: 0px;">&nbsp;&nbsp;&nbsp;详情请见公司内页......</p>
								<br />
								<p style="float: right;"><a role="button" href="javascript:void(0)" class="btn btn-primary btn-lg" style="padding: 4px 12px;border-radius: 30px;border: solid 2px;">更多内容</a></p>
								<br /><br /><br />
								<br /><br />
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide" src="../../assets/img/project/project_list1.png" alt="Second slide">
					<img class="" src="../../assets/img/project/project_list1.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div style="width: 50%;float: right;">
								<p style="font-size: 30px;padding: 0 auto;margin: 0 auto;">国家<span style="font-size: 62px;">最新</span>科研项目</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									人工智能3.0时代</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">正式<span style="font-size: 38px;">开启</span></p>
								<p style="font-size: 15px;padding: 0 auto;margin-top: 5px; margin-bottom: 0px;">&nbsp;&nbsp;&nbsp;详情请见公司内页......</p>
								<br />
								<p style="float: right;"><a role="button" href="javascript:void(0)" class="btn btn-primary btn-lg" style="padding: 4px 12px;border-radius: 30px;border: solid 2px;">更多内容</a></p>
								<br /><br /><br />
								<br /><br />
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="../../assets/img/project/project_list1.png" alt="Third slide">
					<img class="" src="../../assets/img/project/project_list1.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div style="width: 50%;float: right;">
								<p style="font-size: 30px;padding: 0 auto;margin: 0 auto;">国家<span style="font-size: 62px;">最新</span>科研项目</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									人工智能3.0时代</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">正式<span style="font-size: 38px;">开启</span></p>
								<p style="font-size: 15px;padding: 0 auto;margin-top: 5px; margin-bottom: 0px;">&nbsp;&nbsp;&nbsp;详情请见公司内页......</p>
								<br />
								<p style="float: right;"><a role="button" href="javascript:void(0)" class="btn btn-primary btn-lg" style="padding: 4px 12px;border-radius: 30px;border: solid 2px;">更多内容</a></p>
								<br /><br /><br />
								<br /><br />
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="../../assets/img/project/project_list1.png" alt="Third slide">
					<img class="" src="../../assets/img/project/project_list1.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div style="width: 50%;float: right;">
								<p style="font-size: 30px;padding: 0 auto;margin: 0 auto;">国家<span style="font-size: 62px;">最新</span>科研项目</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									人工智能3.0时代</p>
								<p style="font-size: 27px;padding: 0 auto;margin: 0 auto;">正式<span style="font-size: 38px;">开启</span></p>
								<p style="font-size: 15px;padding: 0 auto;margin-top: 5px; margin-bottom: 0px;">&nbsp;&nbsp;&nbsp;详情请见公司内页......</p>
								<br />
								<p style="float: right;"><a role="button" href="javascript:void(0)" class="btn btn-primary btn-lg" style="padding: 4px 12px;border-radius: 30px;border: solid 2px;">更多内容</a></p>
								<br /><br /><br />
								<br /><br />
							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span aria-hidden="true"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span aria-hidden="true"></span>
			</a>
		</div>
		
		
		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;width: 78%;">
			
			<div class="thumbtitle">
				<div class="contenttitle" style="margin-bottom: 10px;">
					<p style="margin-bottom: 4px;">WHAT&nbsp;&nbsp;&nbsp;&nbsp;WE&nbsp;&nbsp;&nbsp;&nbsp;DO</p>
					<p style="float: right;"><a role="button" href=<s:if test="#session.user == null">"/ChuangYeJia/pages/signIn/register.jsp"</s:if><s:else>"/ChuangYeJia/pages/userConsole/complete_data.jsp"</s:else> class="btn btn-lg" style="padding: 4px 12px;border-radius: 30px;border: solid 2px;">加入合伙人</a></p>
					<h2 style="margin-top: 0;" style="color: black;">合伙人分类</h2>
				</div>
			</div>

			<div class="categoryTab">
			    <ul id="copartnerCategory" class="nav nav-tabs" role="tablist">
			      <li role="presentation" class="active">
			      		<a href="#time" role="tab" data-toggle="tab" id="time-tab" style="color: #398BE5;" aria-controls="home" aria-expanded="true">综合</a>
			      </li>
			      <li class="" role="presentation">
			      		<a href="#fund" role="tab" data-toggle="tab" id="fund-tab" style="color: #398BE5;" aria-controls="fund" aria-expanded="true">资金</a>
			      </li>
			      <li class="" role="presentation">
			      		<a href="#technology" role="tab" data-toggle="tab" id="technology-tab" style="color: #398BE5;" aria-controls="technology" aria-expanded="true">技术</a>
			      </li>
			      <li class="" role="presentation">
			      		<a href="#popularize" role="tab" data-toggle="tab" id="popularize-tab" style="color: #398BE5;" aria-controls=popularize aria-expanded="true">推广</a>
			      </li>
			      <li class="" role="presentation">
			      		<a href="#operation" role="tab" data-toggle="tab" id="operation-tab" style="color: #398BE5;" aria-controls="operation" aria-expanded="true">运营</a>
			      </li>
			      <li class="" role="presentation">
			      		<a href="#other" role="tab" data-toggle="tab" id="other-tab" style="color: #398BE5;" aria-controls="other" aria-expanded="true">其他</a>
			      </li>
			     
			    </ul>
			    <div id="myTabContent" class="tab-content" style="background-color: #FFFFFF">
			      <div role="tabpanel" class="tab-pane fade active in" id="time" aria-labelledby="time-tab">

			<div class="uk-margin">
				<div class="uk-grid">
				
				    <div class="uk-width-medium-1-5 flagToClone">
						<div class="uk-thumbnail">
	                   		<figure class="uk-overlay uk-overlay-hover">
	                           <img src="" style="height: 194.15px;width:194.15px;" class="uk-overlay-spin userCover img-circle" alt="正在玩命加载中请稍后...">
	                           		<figcaption class="uk-overlay-panel uk-overlay-background  uk-overlay-bottom uk-overlay-slide-bottom">
	                             		<span class="userIntroduce"></span>
	                             	</figcaption> 
	                         </figure>
	                   		<div class="uk-thumbnail-caption">
	                   			<ul class="uk-list uk-list-line">
									<li class="category"></li>
									<li>
										<span class="glyphicon glyphicon-user" aria-hidden="true">
											<a class="nickname" href="" style="color: #1d8acb;">
											</a>
										</span>
									</li>
								</ul>
		                   			
	                   		</div>
	                   	</div>
					</div>
	
					
					
					
				</div>
			</div>



			      </div>
			      <div role="tabpanel" class="tab-pane fade" id="fund" aria-labelledby="fund-tab">
			        1
			      </div>
			      <div role="tabpanel" class="tab-pane fade" id="technology" aria-labelledby="technology-tab">
			        2
			      </div>
			      <div role="tabpanel" class="tab-pane fade" id="popularize" aria-labelledby="popularize-tab">
			        3
			      </div>
			      <div role="tabpanel" class="tab-pane fade" id="operation" aria-labelledby="operation-tab">
			        4
			      </div>
			      <div role="tabpanel" class="tab-pane fade" id="other" aria-labelledby="other-tab">
			        5
			      </div>
			     
			    </div>
			  </div>
		</div>
		
		
	<jsp:include page="../module/bottom.jsp" flush="true" />
	</body>
	<script>
	$('#copartnerCotegory a').click(function(e) {
		
		e.preventDefault();
		$(this).tab('show');
		
	});
	/* .userIntroduce .category .nickname .userCover
	.flagToClone
	.uk-grid */
		$(document).ready(function() {
			$("td").attr("style", "border-top: solid #333333 1px;");
			
			
			var introduce = $(".userIntroduce");
			var category = $(".category");
			var nickname = $(".nickname");
			var cover = $(".userCover");
			
			
			
			$.post('provideUsers!getUsers.action', {}, function(data, textStatus) {
				if(textStatus == "success") {
					//alert(JSON.stringify(data));
					
					var all = data.all;
					
					
					for(var i = 0; i < all.length-1; i++) {
						$(".uk-grid").append($(".flagToClone").clone().attr("class", "uk-width-medium-1-5"));
						
						/* cover.eq(i + 1).attr("src", data.all[i + 1].userPhoto);
						introduce.eq(i + 1).text("用户经历：" + data.all[i + 1].userIntroduce);
						category.eq(i + 1).text(data.all[i + 1].copartnerCategory);
						nickname.eq(i + 1).text(data.all[i + 1].userNickName);
						nickname.eq(i + 1).attr("href", "/ChuangYeJia/getUserMark.action?mark="+data.all[i + 1].userId); */
					}
					$(".userCover").each(function(index){
						$(this).attr("src", data.all[index].userPhoto);
					});
					$(".userIntroduce").each(function(index){
						var introduce = "暂无";
						if(data.all[index].userIntroduce!=undefined)
							introduce = data.all[index].userIntroduce;
						
						$(this).text("用户经历： " + introduce);
					});
					$(".nickname").each(function(index){
						$(this).text(data.all[index].userNickName);
					});
					$(".nickname").each(function(index){
						$(this).attr("href", "/ChuangYeJia/getUserMark.action?mark="+data.all[i].userId);
					});
					$(".category").each(function(index){
						$(this).text(data.all[index].copartnerCategory);
					});
					
					
					/* 
					cover.eq(0).attr("src", data.all[0].userPhoto);
					introduce.eq(0).text("用户经历：" + data.all[0].userIntroduce);
					category.eq(0).text(data.all[0].copartnerCategory);
					nickname.eq(0).text(data.all[0].userNickName);
					nickname.eq(0).attr("href", "/ChuangYeJia/getUserMark.action?mark="+data.all[0].userId);
					
					cover.eq(1).attr("src", data.all[1].userPhoto);
					introduce.eq(1).text("用户经历：" + data.all[1].userIntroduce);
					category.eq(1).text(data.all[1].copartnerCategory);
					nickname.eq(1).text(data.all[1].userNickName);
					nickname.eq(1).attr("href", "/ChuangYeJia/getUserMark.action?mark="+data.all[1].userId); */
					
					
					
					
					
				} else {
					alert("网络出错！请刷新重试！");
				}
			}, 'json');
		});
	</script>

</html>
