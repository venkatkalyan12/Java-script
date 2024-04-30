import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String dateOfBirth = request.getParameter("DateOfBirth");
        String mobileNo = request.getParameter("MobileNo");
        String address = request.getParameter("Address");
        String email = request.getParameter("Email");
        String password = request.getParameter("password");
        
        // Create a User object with the provided details
        user_details user = new user_details(firstname, lastname, dateOfBirth, mobileNo, address, email, password);
        
        // Instantiate RegisterDAO and call the insert method
        RegisterDAO rd = new RegisterDAO();
        String result = rd.insert(user);
        response.getWriter().print(result);
    }

}
