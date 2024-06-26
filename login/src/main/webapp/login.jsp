<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style type="text/css">
    body {
        background-image: url("https://wallpapercave.com/wp/wp3753810.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        background-color: #9c9e99;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
    }
    .login {
        height: 40px;
        width: 500px;
    }
    .align {
        display: flex;
        flex-direction: column;
        justify-content: center;
        height: 60vh;
    }
    .flex {
        display: flex;
        gap: 260px;
    }
</style>
</head>
<body>
    <div class="align">
        <div class="login">
            <form action="loginservlet" method="post">
                <h1 style="text-align: center;color: aliceblue; font-family: 'Times New Roman', Times, serif; font-size: xxx-large;"> LOGIN</h1><br>
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div><br>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div><br><br>
                <div class="flex">
                    <input class="btn btn-primary" type="submit" value="Submit">
                    <a href="forgot_password.jsp" style="font-size:medium;">Forgot password</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
