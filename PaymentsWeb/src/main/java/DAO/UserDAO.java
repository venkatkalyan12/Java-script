package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import Entity.user_details;

public class UserDAO {
    Connection con;

    public UserDAO() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "root", "9490");
    }

    public int RegisterDb(user_details u) throws SQLException {
    	
    	 String DatePattern = "yyyy-MM-dd";
         SimpleDateFormat format = new SimpleDateFormat(DatePattern);
         
        String query = "INSERT INTO usersdb(FirstName, LastName, PhoneNo, EMailId, DateOfBirth, Address, PassWord, CurrWalletBalance) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, u.getFirstName());
        ps.setString(2, u.getLastName());
        ps.setString(3, u.getPhno());
        ps.setString(4, u.getEmailId());
        ps.setString(5, format.format(u.getDateOfBirth()));
        ps.setString(6, u.getAddress());
        ps.setString(7, u.getPassWord());
        ps.setInt(8, 0);

        int rowsAffected = ps.executeUpdate();
        ps.close();
        return rowsAffected;
    }
    
    public int LoginDb(String Phno, String Password) throws SQLException {
        String lquery = "SELECT PhoneNo, PassWord, UserId FROM usersdb WHERE PhoneNo = ? AND PassWord = ?";
        PreparedStatement pstmt = con.prepareStatement(lquery);
        pstmt.setString(1, Phno);
        pstmt.setString(2, Password);
        ResultSet res = pstmt.executeQuery();
        if (res.next()) {
            return res.getInt("UserId");
        }
        res.close(); 
        pstmt.close();
        return 0;
    }
    
    public String UserNameDb(int userID) throws SQLException {
        String userq = "SELECT FirstName, LastName FROM usersdb WHERE UserId = ?";
        PreparedStatement pstmt = con.prepareStatement(userq);
        pstmt.setInt(1, userID);
        ResultSet res = pstmt.executeQuery();
        if (res.next()) {
            return res.getString("FirstName") + " " + res.getString("LastName");
        }
        res.close();
        pstmt.close();
        return null;
    }
    
    public user_details getUserDetails(String Phno) throws SQLException {
        String userq = "SELECT * FROM usersdb WHERE PhoneNo = ?";
        PreparedStatement pstmt = con.prepareStatement(userq);
        pstmt.setString(1, Phno);
        ResultSet res = pstmt.executeQuery();
        if (res.next()) {
        	user_details u = new user_details();
            u.setUserId(res.getInt("UserId"));
            u.setFirstName(res.getString("FirstName"));
            u.setLastName(res.getString("LastName"));
            u.setPhno(res.getString("PhoneNo"));
            u.setEmailId(res.getString("EMailId"));
            u.setDateOfBirth(res.getDate("DateOfBirth"));
            u.setAddress(res.getString("Address"));
            u.setPassWord(res.getString("PassWord"));
            u.setCurrWalletBalance(res.getDouble("CurrWalletBalance"));
            res.close(); 
            pstmt.close();
            return u;
        }
        res.close();
        pstmt.close();
        return null;
    }
    
    public int getUserId(String Phno) throws SQLException {
        String userq = "SELECT UserId FROM usersdb WHERE PhoneNo = ?";
        PreparedStatement pstmt = con.prepareStatement(userq);
        pstmt.setString(1, Phno);
        ResultSet res = pstmt.executeQuery();
        if (res.next()) {
            int UserId = res.getInt("UserId");
            res.close();
            pstmt.close();
            return UserId;
        }
        res.close();
        pstmt.close();
        return 0;
    }
}
