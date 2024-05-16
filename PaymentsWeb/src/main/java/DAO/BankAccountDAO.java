package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Entity.BankAccount;

public class BankAccountDAO {
    
    Connection con;
    
    public BankAccountDAO() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "root", "9490");
    }
    
    public int AddBankAcct(BankAccount ba) throws SQLException {
        String bquery = "INSERT INTO BankAccount(UserId, BankAcctNo, BankAcctName, BankAcctTypeId, BankIFSCCode, BankAcctPin, CurrBankBalance) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(bquery);
        pstmt.setInt(1, ba.getUserId());
        pstmt.setString(2, ba.getBankAcctNo());
        pstmt.setString(3, ba.getBankAcctName());
        pstmt.setInt(4, ba.getBankAcctTypeId());
        pstmt.setString(5, ba.getBankIFSCCode());
        pstmt.setString(6, ba.getBankPin());
        pstmt.setDouble(7, ba.getCurrBankBal());
        
        int rowsAffected = pstmt.executeUpdate();
        pstmt.close();
        return rowsAffected;
    }
    
    public List<BankAccount> BankAcctList(int UserId) throws SQLException {
        List<BankAccount> balist = new ArrayList<BankAccount>();
        String Query = "SELECT BankAcctNo, BankAcctName, BankIFSCCode, CurrBankBalance, BankAcctPin FROM BankAccount WHERE UserId=?";
        PreparedStatement pstmt = con.prepareStatement(Query);
        pstmt.setInt(1, UserId);
        
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            BankAccount b = new BankAccount();
            b.setBankAcctNo(rs.getString("BankAcctNo"));
            b.setBankAcctName(rs.getString("BankAcctName"));
            b.setBankIFSCCode(rs.getString("BankIFSCCode"));
            b.setCurrBankBal(rs.getDouble("CurrBankBalance"));
            b.setBankPin(rs.getString("BankAcctPin"));
            balist.add(b);
        }
        
        rs.close();
        pstmt.close();
        return balist;
    }
    
    public String GetAcctVerified(String AccountNo) throws SQLException {
        String BankPin = null;
        String query = "SELECT BankAcctPin FROM BankAccount WHERE BankAcctNo=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, AccountNo);
        
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            BankPin = rs.getString("BankAcctPin");
        }
        
        rs.close();
        pstmt.close();
        return BankPin;
    }
}
