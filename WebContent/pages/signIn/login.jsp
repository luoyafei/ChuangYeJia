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
			创业加登陆
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
		
		.alert {
			padding: 0;
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
					<img class="" src="<%=path%>/assets/img/user/333.png" alt="">
					<div class="container" style="padding-right: 0px;padding-left: 0px;">
						<div class="carousel-caption">
							<div class="logo-img" style="width: 100%;">
								<span>
									<img src="<%=path%>/assets/img/user/logo.png" style="width: 18%;height: 6%; margin-bottom: 0px;padding-bottom: 0px;">
								</span>
								<span>
									<a style="font-size: 22px;text-decoration: none;">
										<span style="display: block;">创业加</span>
										<br />
									</a>
								</span>
							</div>
							<p style="margin-bottom: 0px;font-size: 34px;">
								个人登陆
							</p>
							<span style="border-top: solid white 2px;" style="font-family: sans-serif;">Hello!Welcome to Enterperse Plus</span>
							<br />
							<br />
							<br />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;width: 68%;">
			<!-- Three columns of text below the carousel -->
			<div class="content-main" style="width: 100%;height: 550px;background-color: white;overflow: hidden;border-bottom: solid #A9A9A9 2px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;">
				<div class="content-main-top" style="height: 27%;">
					<div style="width: 80%;height: 100%;margin: 50px auto;">
								<form action="userSignIn!execute.action" method="post">
                                    <div class="form-group">
									    <label for="exampleInputEmail1" style="text-align: right;margin-top: 6px;" class="col-sm-2 control-label">账&nbsp;&nbsp;&nbsp;户</label>
									    <div class="col-sm-10">
									    	<input type="email" class="form-control" name="ud.email"  id="exampleInputEmail1" placeholder="邮箱:123@163.com">
									    
										    <div class="alert alert-danger alert-email" role="alert" style="display: none">
												请输入您的邮箱
											</div>
											<div class="alert alert-danger alert-check-email" role="alert" style="display:none;">
												<span class="email-error">
												</span>
											</div>
									    	<hr />
									    </div>
									</div>
									 <div class="form-group">
									    <label for="exampleInputPassword1" style="text-align: right;margin-top: 6px;" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;码</label>
									    <div class="col-sm-10">
									    	<input type="password" class="form-control" name="ud.password" id="exampleInputPassword1" placeholder="密码">
									    	<div class="alert alert-danger alert-password" role="alert" style="display: none;">
												请输入您的密码
											</div>
										    <hr />
									    </div>
									</div>
									
									<div class="form-group">
									    <label for="identifyCode" style="text-align: right;margin-top: 6px;" class="col-sm-2 control-label">验证码</label>
									    <div class="col-sm-10">
											<input type="text" style="width: 60%;float: left;" class="form-control" name="ud.identifyCode" id="identifyCode" placeholder="请直接输入数字结果，如:8">
											<div class="alert alert-danger alert-identifycode" role="alert" style="display: none">
												请输入验证码
											</div>
											<div class="alert alert-danger alert-check-identifycode" role="alert" style="display:none;">
												<span class="identifycode-error">
												</span>
											</div>
											<div style="width: 23%;height: 32px;float: right;" onclick="changeImg()">
												<span class="badge" id="regetIdentify">
													<img alt="看不清，换一张" id="validateCodeImg" src="userSignIn!identifyCode.action" style="width:100%;height:100%;">
												</span>
												<script type="text/javascript">
													function changeImg(){
					 									document.getElementById("validateCodeImg").src = "userSignIn!identifyCode.action?i="+Math.random();
													}
												</script>
											</div>
									    </div>
									</div>
                                    
                                    <div class="form-group">
										<label for="exampleInputPassword1" style="text-align: right;" class="col-sm-2 control-label">
										</label>
										<div class="col-sm-10" style="margin-top: 20px;">
											<input type="checkbox" checked="checked">
											下次自动登陆</input>
											<div style="float: right;"><a href="#">忘记密码</a></div>
										</div>
										
									</div>
									
									<div style="text-align: center;">
										<button type="submit" class="btn btn-default" style="color: #398BE5;" name="login" value="登陆">
											登陆
										</button>
										<a class="btn btn-default" style="color: #398BE5;" href="register.jsp">注册</a>
									</div>
								</form>
<script>
	
								
function checkemail() {
	var email = $("#exampleInputEmail1").val().trim();
	var alertemail = $(".alert-email");
	var checkemail = $(".alert-check-email");
	if (email === "") {
		alertemail.attr("style", "display:inline-block;");
		checkemail.attr("style", "display:none;");
	}
	//当email的输入非空时，进行ajax验证
	var xmlhttp = null;
	if (email !== "") {
		alertemail.attr("style", "display:none;");
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP")
		}
		if (xmlhttp === null) {
			alert("无法创建XMLHttpRequest对象");
			return;
		}
		xmlhttp.open("GET", "../../action/ajax/registerAJAX.php?username=" + email, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				if (xmlhttp.status == 200) {
					var result = xmlhttp.responseText;
					//alert(result);
					checkemail.attr("style", "display:inline-block;");
					
					
					var is_registered = result.charAt(0);
					if(is_registered == "1") {
						$(".email-error").text("该账户存在");
					} else {
						$(".email-error").text("该邮箱尚未注册");
					}

				} else {
					alert(xmlhttp.status);
				}
			}
		}
		xmlhttp.send(null);
	}
}

function chechpassword() {
	var password = $("#exampleInputPassword1").val().trim();
	if (password === "") {
		$(".alert-password").attr("style", "display:inline-block;");
	} else {
		$(".alert-password").attr("style", "display:none;");
	}
}

function checkdata() {
	var email = $("#exampleInputEmail1").val().trim();
	var password = $("#exampleInputPassword1").val().trim();
	var identifyCode = $("#identifyCode").val().trim();
	if (email === "" || password === "" || identifyCode === "") {
		alert("请您将信息填写完整");
		return false;
	} else if(!checkIdentifyCode()) {
		alert("请将验证码填写正确！")
		return false;
	} else {
		return true;
	}
}
</script>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../module/bottom.jsp" flush="true" />
		
	</body>
	<script>
	$(document).ready(function() {
		$("td").attr("style", "border-top: solid #333333 1px;");
	});
</script>
</html>