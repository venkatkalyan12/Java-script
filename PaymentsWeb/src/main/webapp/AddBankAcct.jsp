<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Add Bank Account</h1>
    <form action="AddBankAccServlet" method="post">
        <label for="bankno">Bank Account Number:</label>
        <input type="text" id="bankno" name="bankno" required><br><br>

        <label for="bankname">Bank Name:</label>
        <input type="text" id="bankname" name="bankname" required><br><br>

        <label for="accttypeid">Account Type ID:</label>
        <input type="text" id="accttypeid" name="accttypeid" required><br><br>

        <label for="bankifsc">Bank IFSC Code:</label>
        <input type="text" id="bankifsc" name="bankifsc" required><br><br>

        <label for="bankpin">Bank Account PIN:</label>
        <input type="password" id="bankpin" name="bankpin" required><br><br>

        <input type="submit" value="Add Bank Account">
    </form>
</body>
</html>