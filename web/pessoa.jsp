<%-- 
    Document   : pessoa
    Created on : 25 de set de 2020, 12:53:43
    Author     : cassio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Pacote.Pessoa" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teste da classe Pessoa</h1>
        <% Pessoa hhh = new Pessoa("Fulano");
        
          %>
          <div><%= hhh.getNome()%></div>
    </body>
</html>
