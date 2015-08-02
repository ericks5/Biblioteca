<%-- 
    Document   : Acciones_usuario
    Created on : 17-Apr-2014, 19:20:05
    Author     : ERICKSAA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acciones de los Usuarios</title>
    </head>
    <body>
        <h1>Acciones de Usuarios</h1>
        
        <%if(request.getParameter("error")!=null){%>
        <%if(request.getParameter("error").matches("erroro")){%>
        <script>
            alert("debe seleccionar una accion a realizar Buscar, Modificar, Eliminar");
        </script>
        <%}%>
        <%}%>
        
        <%if(request.getParameter("elimino")!=null){%>
        <%if(request.getParameter("elimino").matches("ok")){%>
        <script>
            alert("el usuario fue eliminado exitosamente");
        </script>
        <%} else if(request.getParameter("elimino").matches("no")){%>
        <script>
            alert("el usuario no pudo ser eliminado");
        </script>
        <%}
        }%>
        
        <%if(request.getParameter("respuesta")!=null){%>
        <%if(request.getParameter("respuesta").matches("ok")){%>
        <script>
            alert("el usuario fue modificado exitosamente");
        </script>
        <%} else if(request.getParameter("respuesta").matches("no")){%>
        <script>
            alert("el usuario no pudo ser modificado");
        </script>
        <%}
        }%>
        
        
        <%if (request.getParameter("registro") != null) {
                if (request.getParameter("registro").matches("ok")) {%>
        <script>
            alert("El usuario ha sido encontrado");
        </script>
        <%
            
            out.println(" <form action=" + "UsuarioServlet" + ">");
            String boton;
            boton = "Imagenes/Enviaraccion.png";
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Codigo de Usuario: </td><td><input type=" + "number" + " name=" + "id_user" +  " value="+request.getParameter("id_usuario")+" readonly="+""+"></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Usuario: </td><td><input type=" + "text" + " name=" + "usuario" + " value="+request.getParameter("usuario")+"></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Contraseña: </td><td><input type=" + "text" + " name=" + "contrasena" + " value="+request.getParameter("contrasena")+"></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Codigo de Estudiante: </td><td><input type=" + "number" + " name=" + "codigo" +  " value="+request.getParameter("codigo")+" readonly="+""+"></td>");
            out.println("</tr>");
            out.println("</table>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Buscar <input type=" + "radio" + " name=" + "opcion" + " value=" + "Buscar" + "></td><td>Modificar <input type=" + "radio" + " name=" + "opcion" + " value=" + "Modificar" + "></td><td>Eliminar <input type=" + "radio" + " name=" + "opcion" + " value=" + "Eliminar" + "></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td></td><td><input type=" + "image" +  " src="+boton+"></td><td></td><td></td>");
            out.println("</tr>");
            out.println("</table>");
            out.println("</form>");
        %>

        <%} else if (request.getParameter("registro").matches("no")) {%>
        <script>
            alert("No se encontro registro de este usuario, por favor intente de nuevo");
        </script>
        <form action="UsuarioServlet">
            <table>
                <tr>
                    <td>Codigo de Usuario: </td><td><input type="number" name="id_user" readonly=""></td>
                </tr>
                <tr>
                    <td>Usuario: </td><td><input type="text" name="usuario"></td>
                </tr>
                <tr>
                    <td>Contraseña: </td><td><input type="text" name="contrasena"></td>
                </tr>
                <tr>
                    <td>Codigo de Estudiante: </td><td><input type="number" name="codigo" readonly=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>Buscar <input type="radio" name="opcion" value="Buscar"></td><td>Modificar <input type="radio" name="opcion" value="Modificar"></td><td>Eliminar <input type="radio" name="opcion" value="Eliminar"></td>
                </tr>
                <tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td><td></td>
                </tr>
            </table>
        </form>
        <%}%>
        <%} else {%>
        <form action="UsuarioServlet">
            <table>
                <tr>
                    <td>Codigo de Usuario: </td><td><input type="number" name="id_user" readonly=""></td>
                </tr>
                <tr>
                    <td>Usuario: </td><td><input type="text" name="usuario"></td>
                </tr>
                <tr>
                    <td>Contraseña: </td><td><input type="text" name="contrasena"></td>
                </tr>
                <tr>
                    <td>Codigo de Estudiante: </td><td><input type="number" name="codigo" readonly=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>Buscar <input type="radio" name="opcion" value="Buscar"></td><td>Modificar <input type="radio" name="opcion" value="Modificar"></td><td>Eliminar <input type="radio" name="opcion" value="Eliminar"></td>
                </tr>
                <tr>
                    <td></td><td><input type="image" src="Imagenes\Enviaraccion.png"></td><td></td><td></td>
                </tr>
            </table>
        </form>
        <%}%>
    </body>
</html>
