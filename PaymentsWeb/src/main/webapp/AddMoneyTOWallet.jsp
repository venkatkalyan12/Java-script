<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Money To Wallet</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    label {
        font-size: 16px;
        font-weight: bold;
    }
    input[type="text"], input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Add Money To Wallet</h1>
        <hr>
        <h2>Enter The Destination Details</h2>
        <form action="AddMoneyTOWallet" method="post">
            <label>Enter The Bank Account No :</label>
            <input type="text" name="accountno"><br>
            <h2>Enter The Source Details</h2>
            <label>Enter The Amount :</label>
            <input type="text" name="wamount"><br>
            <input type="submit" value="Add Money">
        </form>
    </div>
</body>
</html>
