
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Entity.BankAccount;

public class BankAccDAO {

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "9490");
    }

    public int addBankAcct(BankAccount ba) throws SQLException {
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("INSERT INTO bankaccount VALUES (?, ?, ?, ?, ?, ?)")) {

            ps.setString(1, ba.getBankAcctNo());
            ps.setString(2, ba.getBankAcctName());
            ps.setLong(3, ba.getBankAcctTypeId());
            ps.setString(4, ba.getBankIFSCCode());
            ps.setString(5, ba.getPhone());
            ps.setDouble(6, ba.getCurrBankBal());

            return ps.executeUpdate();
        }
    }

    public List<BankAccount> bankAcctList(String phone) throws SQLException {
        List<BankAccount> balist = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement("SELECT BankAcctNo, BankAcctName, BankIFSCCode, CurrBankBalance FROM BankAccount WHERE phone=?")) {

            st.setString(1, phone);

            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    BankAccount b = new BankAccount();
                    b.setBankAcctNo(rs.getString("BankAcctNo"));
                    b.setBankAcctName(rs.getString("BankAcctName"));
                    b.setBankIFSCCode(rs.getString("BankIFSCCode"));
                    b.setCurrBankBal(rs.getDouble("CurrBankBalance"));
                    balist.add(b);
                }
            }
        }

        return balist;
    }
}
