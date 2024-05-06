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
.navbar{
    align-items: baseline;
    background-image: linear-gradient(to right,rgb(160, 160, 167),rgb(209, 209, 244));
    height: 70px;
    button{
        margin:10px;
        border: 1px solid black;
        border-radius: 10px;
        justify-content: end;
    }
}
.account_details{
	height : 200px;
	width : 100%;
    justify-content: center;
    align-items: center;
    display: flex;
    background-color:rgb(234, 234, 241) ;
    box-shadow: 3px 3px 9px 3px rgba(98, 80, 138, 0.67);

	button{
	width : 300px;
	height : 100px;
	border : 1px solid black;
	border-radius : 10px
	}
	ul{
    list-style-type: none;
}
	
}
 #list{
 height : 200px;
	width : 100%;
     align-items: center;
    display: flex;
    background-color:rgb(234, 234, 241) ;
    box-shadow: 3px 3px 9px 3px rgba(98, 80, 138, 0.67);
    	ul{
    list-style-type: none;
    margin : 10px;
}
 }
 .bankList{
 	height : auto;
	width : 100%;
	align-items : center;
    display: flex;
    margin-top : 20px;
   
    
       	ul{
    list-style-type: none;
    
}
  button{
        margin:10px;
        border: 1px solid black;
        border-radius: 10px;
        justify-content: end;
    }
 }
 .acct{
 height:auto;
 width:auto;
  background-color:rgb(234, 234, 241) ;
  border-radius : 10px;
  box-shadow: 3px 3px 3px 3px rgba(98, 80, 138, 0.67);
  margin : 10px;
  padding : 10px;
 }
 .addaccount{
 height : 100px;
 width : 200px;
 margin : 50px;
 border-radius : 10px;
 }

</style>
<body>
  <div class = "navbar">
        <h4 >BankingApplication</h4>
        <button>log out</button>

    </div>
    
    <h2 style="padding: 10px;">Welcome </h2>
    
     
  
   if(list.size()==0){%>
    <div class="account_details">
           <form action = "http://localhost:8080/WebBankApplication/addbank.jsp">
           <input type = "submit" value="addBank" class = "addaccount"/>
           </form>
    </div>
   
   
 
       <div   id = "list">
            <ul>
            <li><h4>PrimaryBankAccount : </h4></li>
            <li><h4>BankAccountBalance : ></h4></li>
            </ul>
    </div>
  
   
   <div class = "bankList" > 
  
       <div class = "acct" >
        <ul>
            <li><h6> </h6></li>
            <li><h6>AccountNumber : </h6></li>
            <li><h6>Balance       : </h6></li>
            <li><h6>IFSC          : </h6></li>
            </ul>
       
       </div>
          
 
     <form action = "http://localhost:8080/WebBankApplication/addbank.jsp">
           <input type = "submit" value="addBank" class = "addaccount"/>
           </form>
  
   </div>
</body>
</html>