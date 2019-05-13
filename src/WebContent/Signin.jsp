<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
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
					<h1>签到系统</h1>
				</div>
				<div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 请点击下方头像签到！
				</div>


 	<div class="container-fluid">
	<div class="row-fluid">
						<div class="span8">
							<form action="searchByConditionServlet" Method="post"
								class="form-search">
								<input class="input-medium search-query" type="text"
									name="searchMess" />
								<button name="g" type="submit" class="btn">查找</button>
							</form>

<!-- 							<from action="SignServlet" method="post" name=form>

							<button class="btn btn-success btn-block" type="button" name="g">签到</button>
							</from> -->

							<FORM action="SignServlet" method="post" name=form>
								<tr>
									<td>学号</td>
									<td><Input type=text name="Stuid" value="<%=session.getAttribute("StudentNumber")%>"></td>
									<td>姓名</td>
									<td><Input type=text name="name" value="<%=session.getAttribute("username")%>"></td>
									<td>签到时间</td>
									<td><Input type=text name="Signtime" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime())%>"></td>
									
									<td>签到日期</td>
									<td><Input type=text name="SignDate" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime())%>"></td>
									
									<td>签到课时</td>
									<td><select name="Classhour">
									<option value="第一节课">第一节课</option>
	   										 <option value="第二节课">第二节课</option>
	  										 <option value="第三节课">第三节课</option>
	   										 <option value="第四节课">第四节课</option>
	   										 <option value="第五节课">第五节课</option>
	 										 </select>
									</td><!-- 判断签到课时 name="Classhouse" 衔接Attendancerecord.java -->
									
									<button class="btn btn-success btn-block" type="submit" name="g">签到</button>
									 <!-- <br><Input type=submit name="g" value="提交"> -->
									
								</tr>
							</FORM>
							
							
							<h2>
						Hi同学
					</h2>
					<p>
						欢迎使用本签到系统，本签到系统提供了签到、查询等功能。<br>
						欢迎来体验哦！
					</p>
							
							
						</div>

						<div class="span4">
						
						<%-- --%>
		<a id="modal-766614" href="#modal-container-766614" role="button" class="btn" data-toggle="modal">温馨提示：</a>
			
			<div id="modal-container-766614" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						同学
					</h3>
				</div>
				<div class="modal-body">
					<p>
						请在本页面进行签到，注：一天只可签到一次！
					</p>
				</div>
				<div class="modal-footer">
					 <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
			</div>
			</div>
		<%-- --%>
		
		<br><br>
						<div class="alert">
						 <button type="button" class="close" data-dismiss="alert" name="name">×</button>
						<h4>
							提示!
						</h4> <strong><%=session.getAttribute("username")%>童鞋，请签到！</strong> 
					</div>
					
					
					<div class="alert alert-info">
						 <button type="button" class="close" data-dismiss="alert" name="Stuid">×</button>
						<h4>
							提示!
						</h4> <strong>你的学号是：<%=session.getAttribute("StudentNumber")%></strong> 
					</div>
		
							<div class="alert alert-success">
						 <button type="button" class="close" data-dismiss="alert" name="Signtime">×</button>
						<h4>
							提示!
						</h4> <strong>所学专业：<%=session.getAttribute("studentmajor")%></strong> 
					</div>
					
					
					<div class="alert alert-error">
						 <button type="button" class="close" data-dismiss="alert" name="Signtime">×</button>
						<h4>
							提示!
						</h4> <strong>你的寝室号是：<%=session.getAttribute("stuDormNumber")%></strong> 
					</div>
		
<%-- 									<div class="alert">
						 <button type="button" class="close" data-dismiss="alert" name="Signtime">×</button>
						<h4>
							提示!
						</h4> <strong>所学专业：<%=session.getAttribute("studentmajor")%></strong> 
					</div> --%>
		
		
		
		
			 <!-- <button class="btn btn-block btn-warning" type="button" >按钮</button> -->
		

		</div>
			
	</div>
</div>
				
<!-- 				<FORM action="searchByConditionServlet" Method="post" >
   <br>输入查询信息:<Input type=text name="searchMess"><br>
   <Input type =radio name="radio" value="cosmetic_className">学生专业
   <br><Input type=submit name="g" value="提交">
</Form> -->






<br /><br />

				<div class="row-fluid">
					<div class="span6">
						<table id="data" class="table table-hover">
							<tbody >
								<tr class="success">
								
							         <!--  <td>姓名</td>
							          <td>图片</td> -->
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="span6">
						<table id="data" class="table table-hover">
							<tbody >
								<tr class="success">
								
							         <!--  <td>姓名</td>
							          <td>图片</td> -->
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


<!-- 时间提取 -->
	<%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(d);
	%>
<!-- 时间提取End -->
</body>
</html>