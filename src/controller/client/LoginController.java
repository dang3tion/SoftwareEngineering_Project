package controller.client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/jsp/page/Login.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("login") != null) {
			String email = request.getParameter("email").trim();
			String password = request.getParameter("password").trim();
			if (!isLogined(email, password)) {

				request.setAttribute("msg", "Sai tên tài khoản hoặc mật khẩu");
				doGet(request, response);
			} else {
				System.out.println("dungs");
				HttpSession sess = request.getSession();
				sess.setAttribute("token", "token");
				response.sendRedirect(request.getContextPath() + "/admin");
			}
		} else if (request.getParameter("logout") != null) {
			System.out.println("logout");
			HttpSession sess = request.getSession();
			sess.removeAttribute("token");
			doGet(request, response);

		}

	}

	private boolean isLogined(String email, String password) {
		if (email.equals("admin") && password.equals("admin")) {
			return true;
		} else {
			return false;
		}
	}
}
