package jdbc;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class SimpleServletListener implements ServletContextListener {
	public void contextInitialized(ServletContextEvent evt) {
		System.out.println("The app start!");
		DbManager.init();
	}

	public void contextDestroyed(ServletContextEvent evt) {
		System.out.println("The app destroyed!");
		DbManager.close();
	}
}
