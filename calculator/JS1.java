package JS;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JS1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public JS1() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String num21 = request.getParameter( "num1");
           String num22 = request.getParameter("num2");
           String num23 = request.getParameter("num3");
           
           if(num21 !=null && num22 !=null && num23 !=null) {
        	   try {
           int a1=Integer.parseInt(num21);
           int a2=Integer.parseInt(num23);
           int result=0;
           
           switch(num22) {
           case "+":result=a1+a2;
           break;
           case "-":result=a1-a2;
           break;
           case "*":result=a1*a2;
           break;
           case "/":result=a1/a2;
           break;
         
           }
           
           
           String res=String.valueOf(result);
           response.getWriter().write(res);
           }catch (Exception e) {
       	      System.out.println("Something went wrong.");
             }
      	   }
            }
        
	
	
//           response.getWriter().write( "<h1>"+num21+"</h1>");
//           response.getWriter().write( "<h1>"+num22+"</h1>");
//           response.getWriter().write( "<h1>"+num23+"</h1>");
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
