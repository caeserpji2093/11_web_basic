package _04_jQuery_ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxEx02")
public class AjaxEx02 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		boolean isPC = Boolean.parseBoolean(request.getParameter("isPC"));
		
		System.out.println("id : " + id);
		System.out.println("isPC : " + isPC);
	
	}

}
