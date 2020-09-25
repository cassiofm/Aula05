<%-- 
    Document   : users
    Created on : 25 de set de 2020, 14:00:23
    Author     : cassio
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Pacote.Pessoa" %>
<%@page import="Pacote.User" %>
<%
   ArrayList<User> userList = (ArrayList) application.getAttribute("userList"); 
    if(userList == null){
        userList = new ArrayList();
        userList.add(new User("Administrador", "admin@domain.com", "1234"));
        userList.add(new User("Fulano", "fulano@domain.com", "1234"));
        userList.add(new User("Sicrano", "sicrano@domain.com", "1234"));
        userList.add(new User("Beltrano", "beltrano@domain.com", "1234"));
        application.setAttribute("userList", userList);
    }
    if(request.getParameter("add") !=null){
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        userList.add(new User(name, email, password));
        response.sendRedirect(request.getRequestURI());
    }   
    if(request.getParameter("remove") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        userList.remove(i);
        response.sendRedirect(request.getRequestURI());
        
    }
   
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java OO</h1>
        <h3>Usuários</h3>
        <form>
            Nome: <input type="text" name="name"/>
            email: <input type="text" name="email"/>
            password: <input type="password" name="password"/>
            email: <input type="submit" name="add" value="Adicionar"/>
        </form>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Comandos</th>
            </tr>
            <% for(int i=0; i<userList.size();i++){%>
                <% User user = userList.get(i);%>
                <tr>
                    <td><%= i %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td>
                <form>
                    <input type="submit" name="remove" value="Remover" />
                    <input type="hidden" name="i" value="<%= i %>" />
                </form> 
                    </td>
                </tr>
           <% } %>
        </table>
        <a href="index.jsp">Voltar</a>
    </body>
</html>
