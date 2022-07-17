<%-- 
    Document   : muestraPasajes
    Created on : 16/07/2022, 22:47:38
    Author     : Martín
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/views/partials/header.jsp" %>
    <%
        String nombre = (String) session.getAttribute("nombre");
        String apellido = (String) session.getAttribute("apellido");
        String dni = (String) session.getAttribute("dni");
        String email = (String) session.getAttribute("email");
        String cel = (String) session.getAttribute("cel");
    %>
    <div class="container-fluid text-center">
        <h3>Nombre: <%= nombre %></h3>
        <h3>Apellido: <%= apellido %></h3>
        <h3>DNI <%= dni %></h3>
        <h3>Email: <%= email %></h3>
        <h3>Número de celular: <%= cel %></h3>

        <a href="/..">Volver al Home</a>
    </div>
<%@include file="/views/partials/footer.jsp" %>
