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
		String logname = req.getParameter("logname");//��ȡ�û���
		String password = req.getParameter("password");//��ȡ����
		
		try {
			Statement stat = DbManager.connection.createStatement();
			//��ѯ
			String sql = "SELECT * FROM user WHERE logname='" + logname + "' AND password='" + password + "';";
			ResultSet results = stat.executeQuery(sql);
			results.last();
			if (results.getRow() == 1) {
				// ƥ��ɹ���
				String name = results.getString(3);
				req.getSession().setAttribute("username", name);//username��Ӧhome.jsp��������
				// ƥ��ɹ����ص�home.jsp
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}
			else { //ƥ�䲻�����ص�¼����
				req.setAttribute("info", "�û������������");
				req.setAttribute("backPage", "login.jsp");
				req.getRequestDispatcher("info.jsp").forward(req, resp);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}
