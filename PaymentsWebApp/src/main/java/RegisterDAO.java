import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {

    private String dburl = "jdbc:mysql://localhost:3306/paymentswebapplication";
    private String dbUsername = "root";
    private String dbPassword = "9490";
    private String dbdriver = "com.mysql.cj.jdbc.Driver";

    public void loadDrive(String dbdriver) {
        try {
            Class.forName(dbdriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dburl, dbUsername, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public String insert(user_details user) {
        loadDrive(dbdriver);
        Connection con = getConnection();
        String sql = "INSERT INTO user_details (firstname, lastname, dateOfBirth, mobileNo, email, password, address) VALUES (?,?,?,?,?,?,?)";
        try {
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, user.getFirstname());
            pstmt.setString(2, user.getLastname());
            pstmt.setString(3, user.getDateOfBirth());
            pstmt.setString(4, user.getMobileNo());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getPassword());
            pstmt.setString(7, user.getAddress());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            
            return "User registered successfully!";
        } catch (SQLException e) {
            e.printStackTrace();
            return "Error while registering user.";
        }
    }

}
