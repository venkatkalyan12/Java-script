import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/paymentswebapplication";
            String dbUsername = "root";
            String dbPassword = "9490";
            conn = DriverManager.getConnection(url, dbUsername, dbPassword);

           
            String sql = "SELECT Email_id FROM newproject.new_table WHERE Email_id = ? AND Password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

          
            rs = pstmt.executeQuery();

            if (rs.next()) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Registration.jsp");
                dispatcher.forward(request, response);
            } else {
            	
                response.sendRedirect("Login.html?error=invalid_credentials");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
//            response.sendRedirect("Login.html?error=db_error");
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
