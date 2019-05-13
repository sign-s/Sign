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
					<h2>学生签到信息查询系统</h2>
				</div>
				<div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 输入学生信息查询相关信息！
				</div></div></div></div>
				
			


<div class="separate-div"></div>
  
  <article class="article-right">
	<section id="book-query-div">
	  <!-- <h5>查询学生签到信息</h5> -->
	  <form action="SignQuery.do" method="post">
		<!-- <p>学号：<input type="text" name="Stuid" /></p> 
		<p>姓名：<input type="text" name="name" /></p>
		<p>签到课时：<select name="Classhour">
		  <option value="-1">全部</option>
		  <option value="0">第一节课</option>
		  <option value="1">第二节课</option>
		  <option value="2">第三节课</option>
		  <option value="3">第四节课</option>
		  <option value="4">第五节课</option>
		</select></p> -->
		
		<tr>
		<td>学号:</td>
		<td><Input type=text name="Stuid" ></td>
		
		<td>姓名:</td>
		<td><Input type=text name="name" ></td>
		
		<td>学号:</td>
		<td>
		<select name="Classhour">
		  <option value="-1">全部</option>
		  <option value="0">第一节课</option>
		  <option value="1">第二节课</option>
		  <option value="2">第三节课</option>
		  <option value="3">第四节课</option>
		  <option value="4">第五节课</option>
		</select>
		</td>
		</tr>
		
		<!-- <button name="g" type="submit" class="btn" />查找</button> -->
		 <button class="btn btn-block btn-success" type="submit">查找</button>
		<input type="hidden" name="flag" value="query" />
      </form>
	</section>
  </article>

<!--   <article class="article-right">
	<section id="book-query-div">
	  <h5>签到信息查询结果</h5>
	  <table id="data" style="width:600px; background-color:#E1E1E1;" border="1" align="center">
    	<thead><tr>
          <td>学号</td>
          <td>姓名</td>
          <td>签到时间</td>
          <td>签到日期</td>
          <td>签到课时</td>
        </tr></thead>
      <tbody align="center">
      </tbody>
	</section>
  </article> -->

 <!--<div class="row-fluid">
					<div class="span6">
						<table class="table table-hover">
							<tbody id="data">
								<tr>
									
			        				 <td>学号</td>
							          <td>姓名</td>
							          <td>签到时间</td>
							          <td>签到日期</td>
							          <td>签到课时</td>

								</tr>
							</tbody>
						</table>
					</div>
					
					
				</div> -->
<!-- -->
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<table class="table table-bordered" id="data">
				<thead>
					<tr class="info">
						<th>
							学号
						</th>
						<th>
							姓名
						</th>
						<th>
							签到时间
						</th>
						<th>
							签到日期
						</th>
						<th>
							签到课时
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!--  -->				
				
				
<!-- 					<div class="span6">
						<table id="data" class="table table-hover">
							<tbody >
								<tr class="success">
								
							          <td>姓名</td>
							          <td>图片</td>
								</tr>
							</tbody>
						</table>
					</div -->

<script>
var data = JSON.parse('<%= request.getAttribute("data") %>');

var table = document.getElementById("data");
var currentRow, currentCell;
for (var i=0; i<data.books.length; ++i)
{	  
  currentRow = table.insertRow(-1);
  for (var x in data.books[i])
  {
	currentCell = currentRow.insertCell(-1);
	currentCell.innerHTML = data.books[i][x];
  }  
}
</script>
</body>
</html>