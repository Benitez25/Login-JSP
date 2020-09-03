<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LOGIN</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/styles.css" rel="stylesheet">
    </head>
    <body>
        <%
         HttpSession sesion = request.getSession();
         if(request.getParameter("exit")!=null){
             sesion.invalidate();
             response.sendRedirect("index.jsp");
         }
        %>
        
        <div class="fondo">
            <img src="img/montaña.jpg">
        </div>
        
        <div  class="login">
            <h1>LOGIN</h1>
            <form action="ServletUser" method="POST">
                <label for="">User</label>
                <input type="text" name="user" id="user" required=""> 
                <label for="">Password</label>
                <input type="password" name="pass" id="pass" required=""> 
                <input type="submit" value="Validate">
            </form>
        </div>
        
        <div class="insertLogin-Create">
            <a href="to_register.jsp">Register</a>
        </div>
    </body>
</html>
