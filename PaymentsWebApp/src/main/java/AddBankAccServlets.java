
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.SQLException;

import Entity.BankAccount;

@WebServlet("/AddBankAccServlets")
public class AddBankAccServlets extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddBankAccServlets() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bankAcctNo = request.getParameter("bankno");
        String bankName = request.getParameter("bankname");
        String bankAcctId = request.getParameter("accttypeid");
        String bankIFSCCode = request.getParameter("bankifsc");
        String bankAcctPin = request.getParameter("bankpin");
        
        BankAccount ba = new BankAccount();
        ba.setBankAcctNo(bankAcctNo);
        ba.setBankAcctName(bankName);
        ba.setBankAcctTypeId(Integer.parseInt(bankAcctId));
        ba.setBankIFSCCode(bankIFSCCode);
        ba.setBankPin(Integer.parseInt(bankAcctPin));
        ba.setCurrBankBal(500);
        
        HttpSession session = request.getSession();
        String phone = (String) session.getAttribute("uname");
        ba.setPhone(phone);

        try {
            BankAccDAO db = new BankAccDAO();
            if (db.addBankAcct(ba) > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("/Dashboard.jsp");
                rd.forward(request, response);
            } else {
                response.setContentType("text/html");
                response.getWriter().write("PLEASE ENTER THE CORRECT BANK ACCOUNT DETAILS");
                RequestDispatcher rd = request.getRequestDispatcher("/AddBankAcct.jsp");
                rd.include(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
