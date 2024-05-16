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

import DAO.BankAccountDAO;
import Entity.BankAccount;

@WebServlet("/AddBankAccServlet")
public class AddBankAccServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddBankAccServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bankAccountNumber = request.getParameter("bankno");
        String bankName = request.getParameter("bankname");
        String bankAccountId = request.getParameter("accttypeid");
        String bankIFSCCode = request.getParameter("bankifsc");
        String bankAccountPin = request.getParameter("bankpin");

        BankAccount bankAccount = new BankAccount();
        bankAccount.setBankAcctNo(bankAccountNumber);
        bankAccount.setBankAcctName(bankName);
        bankAccount.setBankAcctTypeId(Integer.parseInt(bankAccountId));
        bankAccount.setBankIFSCCode(bankIFSCCode);
        bankAccount.setBankPin(bankAccountPin);
        bankAccount.setCurrBankBal(500);

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("user");
        bankAccount.setUserId(userId);

        try {
            BankAccountDAO db = new BankAccountDAO();
            if (db.AddBankAcct(bankAccount) > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("/BankAcctList");
                rd.forward(request, response);
            } else {
                response.setContentType("text/html");
                response.getWriter().write("Please enter the correct bank account details.");
                RequestDispatcher rd = request.getRequestDispatcher("/AddBankAcct.jsp");
                rd.include(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().write("Error adding bank account. Please try again.");
            RequestDispatcher rd = request.getRequestDispatcher("/AddBankAcct.jsp");
            rd.include(request, response);
        }
    }
}
