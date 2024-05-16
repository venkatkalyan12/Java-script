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

import DAO.TransactionDAO;
import Entity.user_details;

@WebServlet("/AddMoneyTOWallet")
public class AddMoneyTOWallet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddMoneyTOWallet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Amount = request.getParameter("wamount");
        String AccountNo = request.getParameter("accountno");
        double txnamount = Double.parseDouble(Amount);
        HttpSession session = request.getSession();
        user_details sessionUser = (user_details) session.getAttribute("userd");
        String Phno = sessionUser.getPhno();
        System.out.println(txnamount + AccountNo + Phno);

        try {
            TransactionDAO txn = new TransactionDAO();
            String verifiedAccount = txn.VerifyAccountNo(AccountNo);
            if (verifiedAccount != null) {
                boolean transactionSuccess = txn.DoSelfBWTransaction(Phno, txnamount, verifiedAccount);
                if (transactionSuccess) {
                    response.setContentType("text/html");
                    double WalletBal = txn.getWalletBalance(Phno);
                    sessionUser.setCurrWalletBalance(WalletBal);
                    response.getWriter().write("Transaction Successful");
                    RequestDispatcher rd = request.getRequestDispatcher("/BankAcctList");
                    rd.include(request, response);
                } else {
                    response.setContentType("text/html");
                    response.getWriter().write("Transaction Failed. Please try again later.");
                    RequestDispatcher rd = request.getRequestDispatcher("AddMoneyToWallet.jsp");
                    rd.include(request, response);
                }
            } else {
                response.setContentType("text/html");
                response.getWriter().write("Invalid Account Number");
                RequestDispatcher rd = request.getRequestDispatcher("AddMoneyToWallet.jsp");
                rd.include(request, response);
            }

        } catch (ClassNotFoundException e) {
           
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().write("Transaction Failed. Please try again later.");
            RequestDispatcher rd = request.getRequestDispatcher("AddMoneyToWallet.jsp");
            rd.include(request, response);
        } catch (SQLException e) {
            
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().write("Transaction Failed. Please try again later.");
            RequestDispatcher rd = request.getRequestDispatcher("AddMoneyToWallet.jsp");
            rd.include(request, response);
        }
    }
}
