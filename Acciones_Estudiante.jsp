<%-- 
    Document   : Acciones
    Created on : 25-mar-2014, 19:03:13
    Author     : ESTACION 13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Acciones de Alumno</h1>
        
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
            alert("La informacion del estudiante no ha podido ser modificada");
        </script>
        <%} else if (request.getParameter("Respuesta").matches("ok")) {%>   
        <script>
            alert("La informacion del estudiante ha sido modificada con exito");
        </script>
        <% }
           }%>

           
           
           
           
        <%if (request.getParameter("Elimino") != null) {
                if (request.getParameter("Elimino").matches("no")) {%>
        <script>
            alert("La informacion del estudiante no ha podido ser eliminada");
        </script>
        <%} else if (request.getParameter("Elimino").matches("ok")) {%>   
        <script>
            alert("La informacion del estudiante ha sido eliminada con exito");
        </script>
        <%}
            }%>
            
             
            
            

        <%
            if (request.getParameter("registro") != null) {
                if (request.getParameter("registro").matches("ok")) {%>
        <script>
            alert("El estudiante ha sido encontrado");
        </script>

        <%
            String boton;
            boton = "Imagenes/Enviaraccion.png";
            out.println("<form action=" + "EstudianteServlet" + ">");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Codigo Estudiante: </td><td><input type=" + "Text" + " value=" + request.getParameter("Codigo") + " name=" + "Cod_estudiante" + "  title="+"Este campo no puede ser editado"+" readonly="+""+"></td>");
            out.println("</tr><tr>");
            out.println("<td>Nombres Estudiante: </td><td><input type=" + "Text" + " value=" + request.getParameter("Nombres") + " name=" + "nombres" + "  title="+"Este campo no puede ser editado"+" readonly="+""+"></td>");
            out.println("</tr><tr>");
            out.println("<td>Apellidos Estudiante: </td><td><input type=" + "Text" + " value=" + request.getParameter("Apellidos") + " name=" + "apellidos" + "  title="+"Este campo no puede ser editado"+" readonly="+""+"></td>");
            out.println("</tr><tr>");
            out.println("<td>Grado Estudiante: </td><td><input type=" + "number" + " value=" + request.getParameter("Grado") + " name=" + "Grado" + " ></td>");

            out.println("</tr>");
            out.println("</table>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Buscar <input type=" + "radio" + " value=" + "Buscar" + " name=" + "opcion" + " id=" + "buscar" + "></td><td>Modificar <input type=" + "radio" + " value=" + "Modificar" + " name=" + "opcion" + " id=" + "modificar" + "></td><td>Eliminar <input type=" + "radio" + " value=" + "Eliminar" + " name=" + "opcion" + " id=" + "eliminar" + "></td> ");

            out.println("</tr><tr>");
            out.println("<td></td><td><input type=" + "image" + " src=" + boton + ">" + "</td><td></td>");
            out.println("</tr>");
            out.println("</table>");
            out.println("</form>");

        %>
        <%} else if (request.getParameter("registro").matches("no")) {%>
        <script>
            alert("Lo sentimos, el estudiante que esta buscando no esta registrado, intente de nuevo");
        </script>
        <form action="EstudianteServlet">
            <table>
                <tr>
                    <td>Codigo Estudiante: </td><td><input type="Text" name="Cod_estudiante" pattern="" title="Este campo no puede ser editado"></td>
                </tr><tr>
                    <td>Nombres Estudiante: </td><td><input type="Text" name="nombres"></td>
                </tr><tr>
                    <td>Apellidos Estudiante: </td><td><input type="Text" name="apellidos"></td>
                </tr><tr>
                    <td>Grado Estudiante: </td><td><input type="Text" name="Grado" pattern="" title="Este campo no puede ser editado"></td>

                </tr>
            </table> 
            <table>
                <tr>
                    <td>Buscar <input type="radio" value="Buscar" name="opcion" id="buscar"></td><td>Modificar <input type="radio" value="Modificar" name="opcion" id="modificar"></td><td>Eliminar <input type="radio" value="Eliminar" name="opcion" id="eliminar"></td> 

                </tr><tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td>
                </tr>
            </table>
        </form>
        <% }
        } else {%>
       
        <form action="EstudianteServlet">
            <table>
                <tr>
                    <td>Codigo Estudiante: </td><td><input type="Text" name="Cod_estudiante" pattern="" title="Este campo no puede ser editado"></td>
                </tr><tr>
                    <td>Nombres Estudiante: </td><td><input type="Text" name="nombres"></td>
                </tr><tr>
                    <td>Apellidos Estudiante: </td><td><input type="Text" name="apellidos"></td>
                </tr><tr>
                    <td>Grado Estudiante: </td><td><input type="Text" name="Grado" pattern="" title="Este campo no puede ser editado"></td>

                </tr>
            </table> 
            <table>
                <tr>
                    <td>Buscar <input type="radio" value="Buscar" name="opcion" id="buscar"></td><td>Modificar <input type="radio" value="Modificar" name="opcion" id="modificar"></td><td>Eliminar <input type="radio" value="Eliminar" name="opcion" id="eliminar"></td> 

                </tr><tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td>
                </tr>
            </table>
        </form>
        <%}%>
    </body>
</html>
