package org.study.record;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.DbManager;

public class Attendancerecord extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		//获取传来的名字、学号、专业
		req.setCharacterEncoding("utf-8");
		//防止乱码
		String Stuid = req.getParameter("Stuid");
		String name = req.getParameter("name");
		String Signtime = req.getParameter("Signtime");


		try {//判断数据库有没这个用户名
			Statement stat=DbManager.connection.createStatement();
			String sql="SELECT * FROM SignRecord WHERE name='"+name+"';";
			ResultSet results=stat.executeQuery(sql);
			results.next();
			if(results.getRow()==1) {//第一个数据
				req.setAttribute("info", "您今天已经签到了哦!");
				req.setAttribute("backPage","Signin.jsp");
				req.getRequestDispatcher("info.jsp").forward(req, resp);	
			}
			
			else {
				String sql1="INSERT INTO SignRecord(Stuid,name,Signtime)VALUES('"+Stuid+"','"+name+"','"+Signtime+"');";
			if(stat.executeUpdate(sql1)!=0) {
				req.setAttribute("info", "签到成功！");
				req.setAttribute("backPage","Signin.jsp");
				req.getRequestDispatcher("info.jsp").forward(req, resp);	
				}
			}
		
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}