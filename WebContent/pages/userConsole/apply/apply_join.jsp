<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

 	<title>申请加入</title>
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
          
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="" src="<%=path %>/assets/img/user/333.png" alt="">
                    <div class="container" style="padding-right: 0px;padding-left: 0px;">
                        <div class="carousel-caption">
                            <div class="logo-img" style="width: 100%;">
                                <span>
                                    <img src="<%=path %>/assets/img/user/logo.png" style="width: 18%;height: 6%; margin-bottom: 0px;padding-bottom: 0px;">
                                </span>
                                <span>
                                    <a style="font-size: 22px;text-decoration: none;">
                                        <span style="display: block;">创业加</span>
                                        <br />
                                    </a>
                                </span>
                            </div>
                            <p style="margin-bottom: 0px;font-size: 34px;">
                              	申请加入
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
        <div class="container marketing" style="background-color: #F5F5F5; padding:50px 0px;width: 78%;">
            
            <div class="content-main" style="width: 100%;height: 100%;background-color: white;overflow: hidden;border-bottom: solid #A9A9A9 2px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;">
                <div class="content-main-top" style="height: 100%;">
                
                <s:debug></s:debug>
                
                    <div style="width: 80%;height: 100%;margin: 50px auto;">
                                <form action="" method="post" onsubmit="return checkdata()">

                                    <input type="hidden" name="user_a_id" value ='1'/>

                                     <div class="form-group">
                                        <label for="name" style="text-align: right;margin-top: 6px;" class="col-md-2 control-label">合同名</label>
                                        <div class="col-md-10">
                                            <input type="text" maxlength="16" class="form-control" name="contract_name" id="name" onblur="chechName()" placeholder="合同名">
                                            <div class="alert alert-danger alert-password" role="alert" style="display: none;">
                                                	请输入合同名称
                                            </div>
                                            <hr />
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="content" class="col-sm-2 control-label" style="text-align: right;margin-top: 6px;">合同内容&nbsp;&nbsp;</label>
                                        <div class="col-sm-10">
                                            <textarea id="content" name="contract_content" style="width:100%;height:200px;"></textarea>
                                        </div>
                                    </div>


                                    <div style="text-align: center;">
                                        <button type="submit" class="btn btn-default" style="color: #398BE5;margin-top: 40px;">
                                          	  发送申请
                                        </button>
                                    </div>
									<input type="hidden" name="join" value='<s:property value='#parameters.join'/>' />
                                </form>
                                <script>

	                                function chechName() {
	                                    var name = $("#name").val().trim();
	                                    if (name === "") {
	                                        $(".alert-password").attr("style", "display:inline-block;");
	                                    } else {
	                                        $(".alert-password").attr("style", "display:none;");
	                                    }
	                                }
	
	                                function checkdata() {
	                                    var name = $("#name").val().trim();
	                                    var content = $("#content").val().trim();
	                                    if (name === "" || content === "") {
	                                        alert("请您将信息填写完整");
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
        <jsp:include page="../../module/bottom.jsp" flush="true" />
           
        </body>
        <script>
        $(document).ready(function() {
            $("td").attr("style", "border-top: solid #333333 1px;");
        });
    </script>
</html>
