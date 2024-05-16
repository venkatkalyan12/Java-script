package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import DAO.BankAccountDAO;
import Entity.BankAccount;
import Entity.user_details;

@WebServlet("/AccListServlet")
public class AccListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AccListServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {
			BankAccountDAO Bdb = new BankAccountDAO();
			user_details sessionUser = (user_details) session.getAttribute("userd");
			int userId = sessionUser.getUserId();

			session.setAttribute("Wamount", sessionUser.getCurrWalletBalance());
			List<BankAccount> balist = Bdb.BankAcctList(userId);
			session.setAttribute("Balist", balist);

			response.setContentType("text/html");
			response.getWriter().write("LOGIN SUCCESSFUL");
			RequestDispatcher rd = request.getRequestDispatcher("Dashboard.jsp");
			rd.include(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			response.setContentType("text/html");
			response.getWriter().write("ERROR: Unable to retrieve bank account list.");
			RequestDispatcher rd = request.getRequestDispatcher("memberRegistration.jsp");
			rd.include(request, response);
		}
	}
}
