<%-- 
    Document   : index
    Created on : 22-Mar-2014, 17:45:21
    Author     : ERICKSAA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
    </head>
    <body>
        <h1>Registro de alumnos</h1><br>
        <%
            if (request.getParameter("error") != null) {
                if (request.getParameter("error").matches("errorg") || (request.getParameter("error").matches("erroro"))) {
                    if (request.getParameter("error").matches("errorg")) {%>
        <script>
            alert("debe seleccionar un grado");
        </script>

        <%} else if (request.getParameter("error").matches("erroro")) {%>
        <script>
            alert("debe seleccionar una accion a realizar Crear, Buscar, Modificar, Eliminar");
        </script>
        <% }
                }
            }%>
        <form action="EstudianteServlet">
            <table>
                <tr>
                    <td>Codigo de estudiante: </td><td><input type="number" name="Cod_estudiante" placeholder="Solo numeros" required="hola" title="solo se reciben numeros">*</td>
                </tr><tr>
                    <td>Nombres: </td><td><input type="text" name="nombres" required="required"  pattern="^[A-Za-z ]{1,15}$" placeholder="Solo letras" title="solo se pueden ingresar letras">*</td>
                </tr><tr>
                    <td>Apellidos: </td><td><input type="text" name="apellidos" required="required" pattern="^[A-Za-z ]{1,15}$" placeholder="Solo letras" title="solo se pueden ingresar letras">*</td>
                </tr><tr>
                    <td>Grado: </td><td><select name="Grado">
                            <option value="-1">seleccione una opcion</option>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                        </select> </td>
                </tr>

            </table>
            <br><br>
            <table>
                <tr>
                    
                </tr>
                <tr>
                    <td></td><td><input type="image" src="Imagenes\boton-registrar.jpg" value="Crear" name="opcion"></td><td></td><td></td>
                </tr>
            </table>
            <%
            if (request.getParameter("crear") != null) {
                if (request.getParameter("crear").matches("ok")) {%>
        <script>
            alert("El estudiante ha sido creado de manera exitosa");
        </script>

        <%} else if (request.getParameter("crear").matches("no")) {%>
        <script>
            alert("El estudiante no pudo ser creado por favor intente de nuevo");
        </script>
        <% }
                }
            %>
        </form>
    </body>
</html>
