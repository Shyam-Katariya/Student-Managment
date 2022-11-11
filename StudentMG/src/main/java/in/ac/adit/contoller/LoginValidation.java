package in.ac.adit.contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.adit.StudentDAO;
import in.ac.adit.model.Stu;

public class LoginValidation extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html");
		Stu stuLogin = new Stu();
		stuLogin.setEmail(request.getParameter("email"));
		stuLogin.setPassword(request.getParameter("password"));
		StudentDAO stuDaoLogin = new StudentDAO();

		boolean isValidateStu = stuDaoLogin.login(stuLogin);
		boolean name = stuDaoLogin.login(stuLogin);
		// System.out.println(id);
		if (isValidateStu) {
			HttpSession sessionLogin = request.getSession();
			sessionLogin.setAttribute("checkValidUser", "valid");
			sessionLogin.setAttribute("name", name);
			RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
			System.out.println("valid");

			// Student

			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			request.setAttribute("error", "invalid email | password");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			System.out.println("invalid");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}