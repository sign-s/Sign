package org.study.Grxx;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.DbManager;

public class Gerenxinxi extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		//防止乱码//Post
		req.setCharacterEncoding("utf-8");
		
		//传值
		String radio=req.getParameter("radio");
		String searchMess=req.getParameter("searchMess");
		//Gerencx.jsp传一个姓名吧
		String name=req.getParameter("name");
		//那我还要传一个专业名称
		String zhuanye=req.getParameter("zhuanye");
		//那我还要传一个寝室号
		String sushehao=req.getParameter("sushehao");
		StringBuffer sql = new StringBuffer("SELECT * FROM student");	
	
		//判断
				if(radio!=null && !radio.isEmpty()) {
					if (radio.equals("cosmetic_regNo")) 
					{
					sql.append(" WHERE regNo='" +searchMess+ "'");
					}
					}
				//这里再加一个判断吧
				if(radio!=null && !radio.isEmpty()) {
					if(radio.equals("cosmetic_name"))
					{
						sql.append(" WHERE name='" +name+ "'");
					}
				}
				//那不行我还要加一个专业名称
				if(radio!=null && !radio.isEmpty()) {
					if(radio.equals("cosmetic_className"))
					{
						sql.append(" WHERE className='" +zhuanye+ "'");
					}
				}
				//我就最后加一个宿舍号
				if(radio!=null && !radio.isEmpty()) {
					if(radio.equals("cosmetic_DormNumber"))
					{
						sql.append(" WHERE DormNumber='" +sushehao+ "'");
					}
				}
				
				//到这里就关闭了
				sql.append(";");//关闭
	
				
				try {//查询
					Statement stat = DbManager.connection.createStatement();
					ResultSet results = stat.executeQuery(sql.toString());
					StringBuffer data = new StringBuffer("{\"cosmetic\":[");
					while (results.next()) {
						data.append("{\"id\":\"" + results.getString(1)+ "\",\"regNo\":\"" + results.getString(2) + "\",\"name\":\"" + results.getString(3) + "\",\"className\":\"" + results.getString(4) + "\",\"DormNumber\":\"" + results.getInt(5) + "\",\"img\":\"" + results.getString(6) + "\"},");
					}
					if (data.charAt(data.length() - 1) == ',') {
						data.deleteCharAt(data.length() - 1);
					}
					data.append("]}");
					System.out.println(data);
					req.setAttribute("data", data);
					req.getRequestDispatcher("Gerencx.jsp").forward(req, resp);
					}
				catch (SQLException e) {
					e.printStackTrace();
				}	
			}
		}