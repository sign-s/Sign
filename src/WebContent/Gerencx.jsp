<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <title>Java系列课程签到网站   >> 查看教室签到情况</title> -->
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
					<h1>个人信息查询</h1>
				</div>
				<div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 请输入个人学号进行个人信息查询！
				</div>
				
				<!-- <FORM action="searchByConditionServlet1" Method="post" >
   <br>输入查询信息:<Input type=text name="searchMess">
   <Input type =radio name="radio" value="cosmetic_regNo">个人学号<Input type=submit name="g" value="查询">
</Form> -->
				
<!--  -->				
<FORM action="searchByConditionServlet1" Method="post" >
		  <select name="radio">
		  <option value="-1">全部</option>
		  <option value="cosmetic_regNo">学号</option>
		  <option value="cosmetic_name">姓名</option>
		  <option value="cosmetic_className">专业名称</option>
		  <option value="cosmetic_DormNumber">寝室号</option>
		  </select>	
	
		<br>输入查询信息:<Input type=text name="searchMess">
		<br>输入姓名查询:<Input type=text name="name">
		<br>输入专业名称查询:<Input type=text name="zhuanye">
		<br>输入宿舍号查询:<Input type=text name="sushehao">
		

		
		<button class="btn btn-block btn-success" type="submit">查找</button>	
<!--  -->				
				
				<div class="row-fluid">
					<div class="span12">
						<table class="table table-hover">
							<tbody id="data">
								<tr>
									<td>id</td>
			        				 <td>学号</td>
							          <td>姓名</td>
							          <td>专业名称</td>
							          <td>寝室号</td>
							          <td>图片</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					
				</div>
			</div>
		</div>
	</div>

<script>
var data = JSON.parse('<%= request.getAttribute("data") %>');

var table = document.getElementById("data");
var currentRow, currentCell;
for (var i=0; i<data.cosmetic.length; ++i)
{	  
  currentRow = table.insertRow(-1);
  for (var x in data.cosmetic[i])
  {
	currentCell = currentRow.insertCell(-1);
	if (x != "img")
	{
		currentCell.innerHTML = data.cosmetic[i][x];
	}
	else
	{
		currentCell.innerHTML = "<img src='" + data.cosmetic[i][x] + "' />";	
	}
  }  
}
</script>

</body>
</html>