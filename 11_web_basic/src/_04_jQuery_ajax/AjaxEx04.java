package _04_jQuery_ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxEx04")
public class AjaxEx04 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String result = "N";
		String[] userList = {"user1" , "user2", "user3"};
		for (int i = 0; i < userList.length; i++) {
			if (id.equals(userList[i])) {
				result = "Y";
			}
		}
		
		PrintWriter out = response.getWriter();
		out.print(result);
	}
	
}
