<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息页面</title>
</head>
<body>
	<h3>
		操作结果:<%=request.getAttribute("info")%>z</h3>
	<p>
		<a href="<%=request.getAttribute("backPage")%>">返回上一步</a>
</body>
</html>