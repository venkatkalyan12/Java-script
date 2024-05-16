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

import DAO.UserDAO;
import Entity.user_details;

@WebServlet("/LoginServlets")
public class LoginServlets extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlets() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phoneNumber = request.getParameter("Phno");
        String password = request.getParameter("PassWord");
        int userId = 0;
        String userName = null;

        try {
            UserDAO db = new UserDAO();
            userId = db.LoginDb(phoneNumber, password);
            userName = db.UserNameDb(userId);

            if (userId != 0) {
                HttpSession session = request.getSession(true);
                user_details sessionUser = db.getUserDetails(phoneNumber);

                session.setAttribute("user", userId);
                session.setAttribute("name", userName.toUpperCase());
                session.setAttribute("userd", sessionUser);

                RequestDispatcher rd = request.getRequestDispatcher("/BankAcctList");
                rd.forward(request, response);
            } else {
                response.setContentType("text/html");
                response.getWriter().write("LOGIN FAILED PLEASE ENTER THE CREDENTIALS");
                RequestDispatcher rd = request.getRequestDispatcher("memberRegistration.jsp");
                rd.include(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().write("ERROR: Database connection problem.");
            RequestDispatcher rd = request.getRequestDispatcher("memberRegistration.jsp");
            rd.include(request, response);
        }
    }
}
