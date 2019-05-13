<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
</head>
<body>
  <header>
  </header>

  <article class="article-right">
	<section id="book-query-div">
	  <h5>书籍查询结果</h5>
	  <table id="data" style="width:600px; background-color:#E1E1E1;" border="1" align="center">
    	<thead><tr>
          <td>书籍序列号</td>
          <td>书名</td>
          <td>单价</td>
          <td>库存</td>
          <td>作者</td>
        </tr></thead>
      <tbody align="center">
      </tbody>
	</section>
  </article>

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
