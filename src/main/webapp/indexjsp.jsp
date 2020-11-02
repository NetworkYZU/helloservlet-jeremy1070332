<%-- 
    Document   : indexjsp
    Created on : 2020/10/19, 下午 02:39:39
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="99">
        <title>JSP Page</title>
    </head>
    <% 
        String color = request.getParameter("color");
        String[]colors = new String[]{"red","green","black","purple","white","blue"};
        
        if(color==null){
            int index=(int)Math.floor(Math.random()*colors.length);
            color=colors[index];
        }
    %>
    <body bgcolor="<%=color%>">
        <form action="#">
            Color:<input type ="color" name="color"/>
            <input type ="submit"/>
        </form>
    </body>
</html>
