<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:property value="sd.name"/>
	<s:property value="sd.address"/>
	<s:property value="sd.type"/>
	<s:property value="sd.require"/>
	<s:property value="sd.detail"/>
	<s:property value="sd.brief"/>
	<s:property value="sd.stage"/>
	
	<br />
	<s:property value="imgFileName"/>
	
	<s:debug></s:debug>
	
	<s:property value="#request.getRequestURI"/>
	<%-- <%
		out.print(request.getRequestURI());
	%> --%>
</body>
</html>