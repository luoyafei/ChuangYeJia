<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>
<%@ page import="com.chuangyejia.bean.*" %>
<ul class='dropdown-menu' role='menu' id='user-menu-cont'>
<%
	/* session.setAttribute("user", new User()); */
	session.removeAttribute("user");
	User user = null;
	if(session.getAttribute("user") != null) {
		user = (User)session.getAttribute("user");
%>
	<li><a>欢迎您！<%="飞哥" %></a>
	<li><a href='../../pages/user/user_center.jsp'>编辑资料</a></li>
	<li><a href='../../pages/user/my_news_bak.jsp'>消息提醒</a></li>
	<li><a href='../../pages/user/user_control.jsp'>个人中心</a></li>
	<li><a href='http://oa001.w176-e0.ezwebtest.com/main/main.html'>创业者之家</a></li>
	<li class='divider'></li>
	<li><a href=''>注销</a></li>
<%
	} else {
%>

	<li><a href='/ChuangYeJia/pages/signIn/login.jsp'>登陆</a></li>
	<li><a href='/ChuangYeJia/pages/signIn/register.jsp'>注册</a></li>
<%
	}
%>
</ul>