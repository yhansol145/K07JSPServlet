package servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
서블릿 클래스 작성 시
1. HttpServlet 클래스를 상속한다.
2. 요청을 받을 doGet() 혹은 doPost() 메소드를 오버라이딩 한다.
 */
public class DirectServletPrint extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
	//protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
		writer.println("<head><title>DirectServletPrint</title></head>");
		writer.println("<body>");
		writer.println("<h2>Servlet에서 직접 출력합니다.</h2>");
		writer.println("<p>jsp로 포워드 하지 않습니다.");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
	}
	

}
