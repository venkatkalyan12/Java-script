package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import DAO.UserDAO;
import Entity.user_details;

@WebServlet("/Servlets.RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Fname = request.getParameter("fname");
        String Lname = request.getParameter("lname");
        String Phno = request.getParameter("phno");
        String Email = request.getParameter("email");
        String Dob = request.getParameter("dob");
        String Address = request.getParameter("address");
        String Password = request.getParameter("password");
        String ConfirmPassWord = request.getParameter("Confirm");
        String DatePattern = "yyyy-MM-dd"; 

        SimpleDateFormat format = new SimpleDateFormat(DatePattern);
        Date dateb = null;

        try {
            dateb = new Date(format.parse(Dob).getTime());
        } catch (ParseException e) {
            e.printStackTrace(); 
        }

        if (Password.equals(ConfirmPassWord)) {
            user_details u = new user_details();
            u.setFirstName(Fname);
            u.setLastName(Lname);
            u.setPhno(Phno);
            u.setEmailId(Email);
            u.setDateOfBirth(dateb);
            u.setAddress(Address);
            u.setPassWord(ConfirmPassWord);

            try {
                UserDAO udb = new UserDAO();
                if (udb.RegisterDb(u) > 0) {
                    response.setContentType("text/html");
                    response.getWriter().write("REGISTRATION SUCCESSFUL");
                    RequestDispatcher rd = request.getRequestDispatcher("/DashBoard.jsp");
                    rd.include(request, response);
                } else {
                    response.setContentType("text/html");
                    response.getWriter().write("Registration failed. Please try again.");
                    RequestDispatcher rd = request.getRequestDispatcher("memberRegistration.jsp");
                    rd.include(request, response);
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        } else {
            response.setContentType("text/html");
            response.getWriter().write("Passwords do not match");
            RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
            rd.include(request, response);
        }
    }
}
