<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
   <style>

body {
    background-image:url("https://wallpapercave.com/wp/wp3753810.jpg");
    /* background-color: #9c9e99; */
    background-repeat: no-repeat;
    background-size: cover;
    font-family: Arial, sans-serif;
    margin: 0; 
    padding: 0;
  }
        
        /* .center{
            display: flex;
            justify-content:center;
            align-items: center;
            margin: 150px auto;
            background-color:lavender;
        } */
        .welcome-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        
    }
    
    .user-icon img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        border: 2px solid #333;
        padding: 5px;
        background-color: #efe3e3;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    .btn {
  display: inline-block;
  padding: 10px 20px;
  background-color: #161817;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}
.space {
            display: flex;
            gap: 25px; 
        }
    
    
    </style>
</head>
<body>
 <div class="user-icon">
        <div class="welcome-container">
       <img src="https://th.bing.com/th/id/OIP.uSnxOK1IpBriDlLxHDXetQAAAA?pid=ImgDet&w=182&h=173&c=7&dpr=1.3" alt="lg">
    <h1>Welcome </h1>
    <div class="space">
    <a href="login.html" class="btn">Login</a>
    <a href="Registration.html" class="btn">Sign Up</a>
</div>
    </div> 
</div>
</body>
</html>