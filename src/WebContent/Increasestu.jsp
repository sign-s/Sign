<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="page-header" align="center">
					<h2>学生信息添加系统</h2>
				</div>
				<div class="alert alert-success">
				 <button type="button" class="close" data-dismiss="alert">×</button>
				<h4>
					提示!
				</h4> <strong>警告!</strong> 请注意正确学号及姓名等！
				
				</div></div></div></div>


<article class="article-right">
	<section id="book-add-div">
	  <h5>添加学生</h5>
	  <p>学号：<input type="text" id="logname" />（*学号唯一且不能重复）</p>
	  <p>密码：<input type="text" id="password" /></p>
	  <p>姓名：<input type="text" id="name" /></p>
	  <p>寝室号：<input type="text" id="HomeNumber" /></p>
	  <p>权限：<input type="text" id="role" /></p>
	  <p>专业名称：<select id="major">
	    <option value="软件技术">软件技术</option>
	    <option value="信息安全与管理">信息安全与管理</option>
	    <option value="电子信息工程技术">电子信息工程技术</option>
	    <option value="移动应用开发">移动应用开发</option>
	    <option value="数字媒体应用技术机4">数字媒体应用技术机</option>
	  </select></p>
	 <!--  <p>参与活动：<select id="promotion">
	    <option value="0">促销商品</option>
	    <option value="1">新书上架</option>
	    <option value="2">其他</option>
	  </select></p> -->
	  <!-- <button onclick="onClick()">添加学生</button> -->
	  <button class="btn btn-block btn-warning" onclick="onClick()">添加学生</button>
	</section>
</article>
  
  
 <script>
function onClick()
{
  // 准备要发送的数据
  var sendData = "logname=" + document.getElementById("logname").value
                 + "&password=" + document.getElementById("password").value
                 + "&name=" + document.getElementById("name").value
                 + "&HomeNumber=" + document.getElementById("HomeNumber").value
                 + "&role=" + document.getElementById("role").value
                 + "&major=" + document.getElementById("major").value
/*                  + "&promotion=" + document.getElementById("promotion").value */
                 + "&flag=add";
    
  // 准备ajax对象
  var ajax = new XMLHttpRequest();
  
  // 打开post请求
  ajax.open("post", "increasestu.do");
  
  // 使用post请求时必须设置报头
  ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  
  // 发送数据
  ajax.send(sendData);
  
  // 设置ajax状态改变时的响应函数
  ajax.onreadystatechange = function () {
    if (ajax.readyState == 4 && ajax.status == 200) { // 服务端发来的响应已经解析完毕，客户端可以使用了
	  console.log(ajax.responseText);
	  
	  // 服务端的数据格式："result":"添加书籍成功"
	  // 将它解析成对象的形式，可以使用"."来引用
	  var data = JSON.parse(ajax.responseText);
	  alert(data.result);
	  
	  document.getElementById("logname").value = "";
      document.getElementById("password").value = "";
      document.getElementById("name").value = "";
      document.getElementById("HomeNumber").value = "";
      document.getElementById("role").value = "";
      document.getElementById("major").value = 0;
      /* document.getElementById("promotion").value = 0; */
	}
  }; 
}
</script> 
</body>
</html>