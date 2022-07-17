<%-- 
    Document   : compraPasajes
    Created on : 13/07/2022, 16:09:46
    Author     : Martín
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/views/partials/header.jsp" %>
        
        <%
        String o = (String) session.getAttribute("o");
        String d = (String) session.getAttribute("d");
        boolean existeVuelo = (boolean) session.getAttribute("existeVuelo");
        float precio = (float) session.getAttribute("precio");
        
        if (existeVuelo) {
        %>
        <div class="container-fluid text-center">
            <h3>Origen: <%= o %></h3>
            <h3>Destino: <%= d %></h3>
            <h3>Precio del vuelo: $<%= precio %></h3>
            <form method="POST" action="/pasajero/compraRealizada" class="bg-light p-5 rounded">
                
                <div class="form-group m3">
                    <label for="nombre">Nombre/s: </label>
                    <input type="text" name="nombre" class="form-control">
                </div>

                <div class="form-group m3">
                    <label for="apellido">Apellido/s: </label>
                    <input type="text" name="apellido" class="form-control">
                </div>

                <div class="form-group m3">
                    <label for="dni">DNI: </label>
                    <input type="text" name="dni" class="form-control">
                </div>

                <div class="form-group m3">
                    <label for="email">E-mail:</label>
                    <input type="email" name="email" class="form-control">
                </div>

                <div class="form-group m3">
                    <label for="cel">Celular: </label>
                    <input type="text" name="cel" class="form-control">
                </div>
                
                <div class="m3">
                  <button class="btn btn-dark" type="submit">Comprar</button>
                </div>
            </form>
        </div>
        <%}
        else {
        %>

        <div>
            <h1>Vuelo no disponible. </h1>
            <a href="/..">Volver al Home</a>
        </div>
        <%}%>
        
        
 <%@include file="/views/partials/footer.jsp" %>
