package jdbc;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Studentxinxi extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		//防止乱码//Post
		req.setCharacterEncoding("utf-8");
		
		//传值
		String radio=req.getParameter("radio");
		String searchMess=req.getParameter("searchMess");
		StringBuffer sql = new StringBuffer("SELECT * FROM student");	
	
		//判断
				if(radio!=null && !radio.isEmpty()) {
					if (radio.equals("cosmetic_className")) 
					{
					sql.append(" WHERE className='" +searchMess+ "'");
					}
					}
				sql.append(";");//关闭
	
				
				try {//查询
					Statement stat = DbManager.connection.createStatement();
					ResultSet results = stat.executeQuery(sql.toString());
					StringBuffer data = new StringBuffer("{\"cosmetic\":[");
					while (results.next()) {
						data.append("{\"img\":\"" + results.getString(6) + "\",\"name\":\"" + results.getString(3) + "\"},");
					}
					if (data.charAt(data.length() - 1) == ',') {
						data.deleteCharAt(data.length() - 1);
					}
					data.append("]}");
					System.out.println(data);
					req.setAttribute("data", data);
					req.getRequestDispatcher("Signin.jsp").forward(req, resp);
					}
				catch (SQLException e) {
					e.printStackTrace();
				}	
			}
		}			