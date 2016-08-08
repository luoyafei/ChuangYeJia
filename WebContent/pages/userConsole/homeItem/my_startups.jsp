<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="headindStartups">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#startups1" href="#createStartups" aria-expanded="true" aria-controls="createStartups"> 我创建的公司 </a>
			</h4>
		</div>
		<div id="createStartups" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="headindStartups">
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>公司名称</th>
								<th>合伙人需求</th>
								<th>公司密码</th>
								<th>创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="" class="btn btn-default btn-xs">查看</a>
									<a href="" class="btn btn-default btn-xs">编辑</a>
									<button class="btn btn-danger btn-xs" onclick="delete_return_contract()">删除</button>
								</td>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="headingStartups2">
			<h4 class="panel-title">
				<a class="collapsed" data-toggle="collapse"
					data-parent="#startups1" href="#joinStartups"
					aria-expanded="false" aria-controls="joinStartups"> 我参与的项目 </a>
			</h4>
		</div>
		<div id="joinStartups" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="headingStartups2">
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>公司名称</th>
								<th>公司总监 </th>
								<th>合伙人需求</th>
								<th>创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><a href="" class="btn btn-default btn-xs">查看</a>
								<a href="" class="btn btn-default btn-xs">确认</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>