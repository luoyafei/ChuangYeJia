<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>

<script>
	function barHide() {
		if ($(window).scrollTop() > 100) {
			$("#navbar").hide();
		} else {
			$("#navbar").show();
		}
	}
</script>

<%-- <nav class="navbar navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <img class="navbar-brand" src="/ChuangYeJia/assets/img/logo2.png" alt="logo.jpg" style="width: 200px;height: 90px;padding-top: 0px;margin-top: 0px;">
      
      <ul class="nav navbar-nav navbar-right">
      
      		<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("index")?"active":"" %>><a class="a-item" href="/ChuangYeJia/index.jsp">首页</a></li>
			<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("project")?"active":"" %>><a class="a-item" href="#">创业公司</a></li>
			<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("partner")?"active":"" %>><a class="a-item" href="#">合伙人</a></li>
			<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("product")?"active":"" %>><a class="a-item" href="#">产品</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" style="background: none;">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				</a>
				<jsp:include page="person_icon.jsp" flush="true"></jsp:include>
			</li>
      </ul>
    </div>
  </div>
</nav>
 --%>
<nav class="navbar navbar-fixed-top" id="navbar">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<img class="navbar-brand" src="/ChuangYeJia/assets/img/logo2.png" alt="logo.jpg" style="width: 200px;height: 90px;padding-top: 0px;margin-top: 0px;">
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="navbar-form pull-right">
						<ul class="nav navbar-nav">
							<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("index")?"active":"" %>><a class="a-item" href="/ChuangYeJia/index.jsp">首页</a></li>
							<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("project")?"active":"" %>><a class="a-item" href="#">创业公司</a></li>
							<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("partner")?"active":"" %>><a class="a-item" href="#">合伙人</a></li>
							<li class=<%=(String)request.getAttribute("flag")!=null && ((String)request.getAttribute("flag")).equals("product")?"active":"" %>><a class="a-item" href="#">产品</a></li>
							<div class="navbar-form navbar-left" role="search">
								<div class="form-group" style="margin-top: 8px;">
									<a type="submit"><span class="glyphicon glyphicon-search"></span></a>
								</div>
								<input type="text" class="form-control input-sm" id="inputSearch" placeholder="" style="margin-top: 5px;height: 20px; padding: 0px 10px;" />
							</div>
							<li>
								<a class="dropdown-toggle" data-toggle="dropdown" style="background: none;">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</a>
								
								
								<jsp:include page="person_icon.jsp" flush="true"></jsp:include>
							</li>
						</ul>

					</div>
				</div>
			</div>
		</nav>