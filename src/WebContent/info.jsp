<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="css/bootstrap-combined.min.css" rel="stylesheet">
<!-- <link href="css/layoutit.css" rel="stylesheet"> -->
<link rel="shortcut icon" href="img/favicon.png">
<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="js/jquery.htmlClean.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckeditor/config.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<title>信息页面</title>
</head>
<body>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h3 class="text-center text-info">
				签到系统提示信息
			</h3>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<div class="alert">
				 <button type="button" class="close" data-dismiss="alert">×</button>
				<h4>
					提示!
				</h4> <strong>操作结果:</strong> <%=request.getAttribute("info")%>
				<%-- <a href="<%=request.getAttribute("backPage")%>">返回上一步</a> --%>
			</div><button class="btn btn-block btn-warning" type="button" onclick="window.location.href='<%=request.getAttribute("backPage")%>';">返回上一页面</button>
		</div>
	</div>
</div>


<%-- 	<h3>
		操作结果:<%=request.getAttribute("info")%></h3>
	<p>
		<a href="<%=request.getAttribute("backPage")%>">返回上一步</a> --%>

</body>
</html>

