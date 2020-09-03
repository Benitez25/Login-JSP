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
        
        <div class="fondo">
            <img src="img/montaña.jpg">
        </div>
        
        <div  class="login">
            <h1>To register</h1>
            <form action="registerUser" method="POST">
                <label for="">User</label>
                <input type="text" name="user" id="user" required=""> 
                <label for="">Password</label>
                <input type="password" name="pass" id="pass" required=""> 
                <input type="submit" value="Register">
            </form>
        </div>
        
        <div class="insertLogin-Create">
            <a href="index.jsp">Insert</a>
        </div>
    </body>
</html>
