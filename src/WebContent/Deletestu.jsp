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
					<h2>学生信息删除系统</h2>
				</div>
				<div class="alert alert-error">
				 <button type="button" class="close" data-dismiss="alert">×</button>
				<h4>
					提示!
				</h4> <strong>警告!</strong> 输入学生信息删除相关信息！
				<!-- <div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 输入学生信息删除相关信息！ -->
				</div></div></div></div>


  <div class="separate-div"></div>
  
  <article class="article-right">
	<section id="book-del-div">
	  <!-- <h5>删除学生</h5> -->
	  <form action="deletestu.do" method="post">
		<p>学号：<input type="text" name="logname" /></p>
		<!-- <input type="submit" value="删除" /> -->
		
		<button class="btn btn-block btn-danger" type="submit">删除</button>
		<input type="hidden" name="flag" value="delete" />
      </form>
	</section>
  </article>
  
  

</body>
</html>