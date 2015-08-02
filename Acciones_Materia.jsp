<%-- 
    Document   : Acciones_Materia
    Created on : 14-Apr-2014, 20:12:43
    Author     : ERICKSAA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Acciones de Materia</h1>
        <form action="MateriaServlet">
         <%if(request.getParameter("error")!=null){
            if (request.getParameter("error").matches("erroro")) {%>
        <script>
            alert("debe seleccionar una accion a realizar Buscar, Modificar, Eliminar");
        </script>
        <% }
        }%>
        
        
        
        
        
        
        <%
            if (request.getParameter("Respuesta") != null) {
                if (request.getParameter("Respuesta").matches("no")) {%>
        <script>
            alert("La informacion de la materia no ha podido ser modificada");
        </script>
        <%} else if (request.getParameter("Respuesta").matches("ok")) {%>   
        <script>
            alert("La informacion de la materia ha sido modificada con exito");
        </script>
        <% }
           }%>

           
           
           
           
        <%if (request.getParameter("Elimino") != null) {
                if (request.getParameter("Elimino").matches("no")) {%>
        <script>
            alert("La informacion de la  emateria no ha podido ser eliminada");
        </script>
        <%} else if (request.getParameter("Elimino").matches("ok")) {%>   
        <script>
            alert("La informacion de la materia ha sido eliminada con exito");
        </script>
        <%}
            }%>
            
            
        
        <%if (request.getParameter("Registro") != null) {
                if (request.getParameter("Registro").matches("ok")) {%>
        <script>
            alert("La materia fue encontrada correcta mente");
        </script>
       
        <%
            String boton;
            boton = "Imagenes/Enviaraccion.png";
            
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Codigo de Materia: </td><td><input type = " + "text" + " name = " + "id_materia" + " value="+request.getParameter("Codigo")+" readonly="+""+"></td>");
            out.println("</tr><tr>");
            out.println("<td> Materia: </td><td><input type = " + "text" + " name = " + "nom_materia" + " value="+request.getParameter("Nombre")+" readonly="+""+"> </td> ");
            out.println("</tr> <tr>");
            out.println("<td> Area de Conocimiento: </td><td><input type = " + "text" + " name = " + "area_conoc" + " value="+request.getParameter("Area")+"> </td>");
            out.println("</tr><tr>");
            out.println("<td> Grado: </td > <td> <input type = " + "text" + " name = " + "grado" + " value="+request.getParameter("Grado")+"></td> ");
            out.println("</tr></table><table>");
            out.println("<tr><td> Buscar: <input type = " + "radio" + " name = " + "opcion" + " value = " + "Buscar" + "></td><td>Modificar:<input type = " + "radio" + " name = " + "opcion" + " value = " + "Modificar" + "></td><td> Eliminar: <input type = " + "radio" + " name = " + "opcion" + " value = " + "Eliminar" + "></td></tr>");
            out.println("<tr><td></td><td><input type = " + "image" + " src = " + boton + "> </td><td></td></tr>");
            out.println("</table> ");
        %>
        <%} else if(request.getParameter("Registro").matches("no")){%>
        <script>
            alert("La materia no pudo ser encontrada intente de nuevo");
        </script>

        
            <table>
                <tr>
                    <td>Codigo de Materia: </td><td><input type="text" name="id_materia" readonly=""></td>
                </tr>
                <tr>
                    <td>Materia: </td><td><input type="text" name="nom_materia"></td>
                </tr>
                <tr>
                    <td>Area de Conocimiento: </td><td><input type="text" name="area_conoc" readonly=""></td>
                </tr>
                <tr>
                    <td>Grado: </td><td><input type="text" name="grado" readonly=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>Buscar: <input type="radio" name="opcion" value="Buscar"></td><td>Modificar: <input type="radio" name="opcion" value="Modificar"></td><td>Eliminar: <input type="radio" name="opcion" value="Eliminar"></td>
                </tr>
                <tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td>
                </tr>
            </table>
        

        
        <%}}
         else {%>
        
            <table>
                <tr>
                    <td>Codigo de Materia: </td><td><input type="text" name="id_materia" readonly=""></td>
                </tr>
                <tr>
                    <td>Materia: </td><td><input type="text" name="nom_materia"></td>
                </tr>
                <tr>
                    <td>Area de Conocimiento: </td><td><input type="text" name="area_conoc" readonly=""></td>
                </tr>
                <tr>
                    <td>Grado: </td><td><input type="text" name="grado" readonly=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>Buscar: <input type="radio" name="opcion" value="Buscar"></td><td>Modificar: <input type="radio" name="opcion" value="Modificar"></td><td>Eliminar: <input type="radio" name="opcion" value="Eliminar"></td>
                </tr>
                <tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td>
                </tr>
            </table>
        
        <%}
        %>
        </form>
    </body>
</html>
