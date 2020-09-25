<%-- 
    Document   : index
    Created on : 22 de set de 2020, 00:53:20
    Author     : cassio
--%>

<%@page import="Pacote.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Horario Agora = new Horario(05,45,22); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Horário atual:</h1><br>
        <%= Agora.getHorario() %>
        <h3>Tarefa de 21/09/2020</h3>
    </body>
</html>
