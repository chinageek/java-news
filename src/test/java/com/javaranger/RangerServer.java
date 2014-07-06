package com.javaranger;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.nio.SelectChannelConnector;
import org.eclipse.jetty.webapp.WebAppContext;

public class RangerServer {
	public static final int PORT = 8083;
	public static final String CONTEXT = "/news";
	public static final String BASE_URL = "http://localhost:8080/news";

	public static void main(String[] args) throws Exception {
		//设定Spring的profile
		System.setProperty("spring.profiles.active", "dev");

		Server server = new Server();
		//设置在JVM退出时关闭Jetty的钩子。
		server.setStopAtShutdown(true);

		SelectChannelConnector connector = new SelectChannelConnector();
		connector.setPort(PORT);
		//解决Windows下重复启动Jetty居然不报端口冲突的问题.
		connector.setReuseAddress(false);
		server.setConnectors(new Connector[] { connector });

		WebAppContext webContext = new WebAppContext("src/main/webapp", CONTEXT);
		//设置使用当前线程的ClassLoder以解决JSP不能正确扫描taglib的tld文件的问题。
		webContext.setClassLoader(Thread.currentThread().getContextClassLoader());
		server.setHandler(webContext);
		server.start();

		System.out.println("Hit Enter in console to stop server");
		if (System.in.read() != 0) {
			server.stop();
			System.out.println("Server stopped");
		}
	}
}
