<%-- 
    Document   : Registro_usuario
    Created on : 17-Apr-2014, 16:30:57
    Author     : ERICKSAA
--%>

<%@page import="DAO.EstudianteDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Datos.Estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <%
             if (request.getParameter("error") != null) {
                 if (request.getParameter("error").matches("erroru")) {%>
        <script>
            alert("debe seleccionar un codigo");
        </script>

        <%      }
           }
        %>
        <%if (request.getParameter("registro") != null) {
                if (request.getParameter("registro").matches("ok")) {%>
        <script>
            alert("El usuario fue registrado correctamente");
        </script>
        <%} else {%>
        <script>
            alert("Lo sentimos el usuario no fue registrado, intente de nuevo");
        </script>
        <%}
            }%>
        <form action="UsuarioServlet">
            <table>
                <tr>
                    <td>Usuario: </td><td><input type="text" name="usuario" required=""></td>
                </tr>
                <tr>
                    <td>Contraseña: </td><td><input type="password" name="contrasena" required=""></td>
                </tr>
                <tr>
                    <%
                        EstudianteDAO estud = new EstudianteDAO();

                        ArrayList<Estudiante> codigos = new ArrayList<Estudiante>();
                        codigos = estud.Consultar_array();
                        out.println("<td>Codio de alumno</td><td><select name=" + "codigo" + ">");
                        out.println("<option value=" + "-1" + ">" + "Seleccione una opcion" + "</option>");
                        for (int cont = 0; cont < codigos.size(); cont++) {
                            out.println("<option value" + codigos.get(cont).getCod_estudiante() + ">" + codigos.get(cont).getCod_estudiante() + "</option>");
                        }
                        out.println("</td>");
                    %>

                </tr>
            </table>
            <table>

                <tr>
                    <td></td><td><input type="image" src="Imagenes\Registrar.png" value="Crear" name="opcion"></td><td></td><td></td>
                </tr>
            </table>
        </form>
    </body>
</html>
