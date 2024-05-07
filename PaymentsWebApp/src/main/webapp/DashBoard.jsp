<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 
<title>Insert title here</title>

</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
}

header h1 {
    margin: 0;
    padding-left: 20px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.right{
text-align: right;
}
.left{
text-align: left;
}
.center{
text-align: center;
}

nav ul li {
    display: inline;
    margin-right: 20px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
}

main {
    padding: 20px;
}

.card {
    background-color: #f4f4f4;
    border-radius: 5px;
    padding: 10px;
    margin: 10px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #333;
    color: #fff;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
}


</style>
<body>
    <header>
    <div class="center">
        <h1>Payment Application</h1>
        </div>
        <nav>
            <ul>
            <div class="left">
            <%String userName = (String) session.getAttribute("uname");  %>
                    <h3>Welcome, <%= userName %></h3>
                </div>
                <div class="right">
                <li><a href="#">Transactions</a></li>
                <li><a href="#">Customers</a></li>
                <li><a href="#">Settings</a></li>
                </div>
            </ul>
        </nav>
    </header>

    <main>
        <section id="overview">
            <h2>Overview</h2>
            <div class="card">
                <h3>Total Transactions</h3>
                <p>500</p>
            </div>
            <div class="card">
                <h3>Revenue</h3>
                <p>$10,000</p>
            </div>
            <div class="card">
                <h3>New Customers</h3>
                <p>50</p>
            </div>
        </section>

        <section id="transactions">
            <h2>Recent Transactions</h2>
            <table>
                <tr>
                    <th>Date</th>
                    <th>Customer</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>2024-05-01</td>
                    <td>John Doe</td>
                    <td>$100</td>
                    <td>Success</td>
                </tr>
                <tr>
                    <td>2024-04-28</td>
                    <td>Jane Smith</td>
                    <td>$50</td>
                    <td>Failed</td>
                </tr>
                <!-- Add more transaction rows as needed -->
            </table>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Payment Gateway Inc.</p>
    </footer>
</body>
</html>