package jdbc;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class denglu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String logname = req.getParameter("logname");//获取用户名
		String password = req.getParameter("password");//获取密码
		
		try {
			Statement stat = DbManager.connection.createStatement();
			//查询
			String sql = "SELECT * FROM user WHERE logname='" + logname + "' AND password='" + password + "';";
			ResultSet results = stat.executeQuery(sql);
			results.last();
			if (results.getRow() == 1) {
				// 匹配成功！
				String name = results.getString(3);
				req.getSession().setAttribute("username", name);//username对应home.jsp的属性名
				// 匹配成功返回到home.jsp
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}
			else { //匹配不到返回登录界面
				req.setAttribute("info", "用户名或密码错误！");
				req.setAttribute("backPage", "login.jsp");
				req.getRequestDispatcher("info.jsp").forward(req, resp);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}
