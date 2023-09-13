<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Gestion"%>
<%  
    if (session.getAttribute("listaper")==null){
        ArrayList<Gestion> lisaux = new ArrayList<Gestion>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Gestion> lista = (ArrayList<Gestion>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center;">
            <table border ="10" style="margin:0 auto;">
                <tr>
                    <th>
                        <h1>SEGUNDO PARCIAL TEM-742</h1>
                        <h2>Nombre: Nelson Arenas Gutierrez</h2>
                        <h3>Carnet: 9126326</h3>
                    </th>
                </tr>
        </table>
        <h1>Gestión de productos</h1>
        <a href="MainServlet?op=nuevo">Nuevo producto</a>
        <table border ="1" style="margin:0 auto;">
            <tr>
                <th BGCOLOR="YELLOW">ID</th>
                <th BGCOLOR="YELLOW">Descripcion</th>
                <th BGCOLOR="YELLOW">Cantidad</th>
                <th BGCOLOR="YELLOW">Precio</th>
                <th BGCOLOR="YELLOW">Categoria</th>
                <th BGCOLOR="YELLOW"></th>
                <th BGCOLOR="YELLOW"></th>
            </tr>
            <%
            if (lista != null){
                for(Gestion item : lista){             
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>                
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                    onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            <%
                }
                }
            %>
        </table>
        </div>
    </body>
</html>
