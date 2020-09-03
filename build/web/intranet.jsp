<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intranet</title>
    </head>
    <body>
        <%
        HttpSession sesion = request.getSession();
        String usuario;
        if(sesion.getAttribute("user")!=null){
            usuario = sesion.getAttribute("user").toString();
        }else{
            out.print("<script>location.replace('index.jsp');</script>");
        }
        %>
        <h1>Bienvenido</h1>
        <a href="index.jsp?exit=y">Exit</a>
       
    </body>
</html>