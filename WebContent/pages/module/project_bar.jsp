<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>
<nav class="navbar navbar-fixed-top" id="navbar">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<img class="navbar-brand" src="../../assets/img/logo2.png" alt="logo.jpg" style="width: 200px;height: 90px;padding-top: 0px;margin-top: 0px;">
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="navbar-form pull-right">

						<ul class="nav navbar-nav">
							<li><a href="../../index.php">首页</a></li>
							<!-- <li class=<?echo $flag==1?"active":""?>><a class="a-item" href="../other_entity_list/project_list.php">项目</a></li>
							<li class=<?echo $flag==2?"active":""?>><a class="a-item" href="../other_entity_list/money_list.php">资金</a></li>
							<li class=<?echo $flag==3?"active":""?>><a class="a-item" href="../other_entity_list/technology_list.php">技术</a></li>
							<li class=<?echo $flag==4?"active":""?>><a class="a-item" href="../other_entity_list/business_list.php">运营</a></li>
							<li class=<?echo $flag==5?"active":""?>><a class="a-item" href="../other_entity_list/market_list.php">市场</a></li> -->
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group" style="margin-top: 8px;">
									<a type="submit"><span class="glyphicon glyphicon-search"></span></a>
								</div>
								<input type="text" class="form-control input-sm" id="inputSearch" placeholder="" style="margin-top: 5px;height: 20px; padding: 0px 10px;" />
							</form>
							<li>
								<a class="dropdown-toggle" data-toggle="dropdown">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</a>
									<!-- <?require("../module/person_icon.php");?> -->

							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>