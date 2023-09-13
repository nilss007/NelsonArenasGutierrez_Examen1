<%@page import="com.emergentes.modelo.Gestion"%>
<%
    Gestion reg = (Gestion) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar Producto</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="<%= reg.getDescripcion() %>"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="<%= reg.getCantidad() %>"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="<%= reg.getPrecio() %>"></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="categoria" value="<%= reg.getCategoria() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
