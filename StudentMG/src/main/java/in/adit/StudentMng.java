/*
 */
package in.adit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentMng extends HttpServlet
{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String city = req.getParameter("city");
		int date = Integer.parseInt(req.getParameter("dob"));
		
		PrintWriter out = res.getWriter();
		
		out.println("Hello, Welcome " + name);
		out.println();
		out.println();
		out.println("Your Detail is shown below : ");
		out.println();
		out.println();
		out.println("Name : " + name);
		out.println();
		out.println("Password : " + password);
		out.println();
		out.println("Email Id : " + email);
		out.println();
		out.println("City : " + city);
		out.println();
		
		
	}
}