<%-- 
    Document   : Registro_materia
    Created on : 09-Apr-2014, 20:05:25
    Author     : ERICKSAA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Materias</title>
    </head>
    <body>
        <h1>Registro de Materias</h1>
        <%
            if (request.getParameter("error") != null) {
                if (request.getParameter("error").matches("errorg")) {%>
                <script>
                    alert("debe seleccionar un grado");
                </script>
                  
        <% }
            }
        %>
        <%if(request.getParameter("registro")!=null){
            if(request.getParameter("registro").matches("ok")){%>
            <script>
                alert("La materia fue registrada correctamente");
            </script>
        <%}else{%>
        <script>
                alert("Lo sentimos la materia no fue registrada, intente de nuevo");
            </script>
        <%}
        }%>
            
            
        
        <form action="MateriaServlet">
            <table>
                <tr>
                    <td>Nombre Materia: </td><td><input type="text" name="nombre_mat" required="required"  pattern="^[A-Za-z]{1,15}$" placeholder="Solo letras" title="solo se pueden ingresar letras">*</td>
                </tr><tr>
                    <td>Area de conocimiento: </td><td><input type="text" name="area_conoc" required="required" pattern="^[A-Za-z]{1,15}$" placeholder="Solo letras" title="solo se pueden ingresar letras">*</td>
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
                    <td></td><td><input type="image" src="Imagenes\Registrar.png" value="Crear" name="opcion"></td><td></td><td></td>
                </tr>
            </table>
            <%
                if (request.getParameter("crear") != null) {
                    if (request.getParameter("crear").matches("ok")) {%>
            <script>
                alert("La materia fue creada con exito");
            </script>

            <%} else if (request.getParameter("crear").matches("no")) {%>
            <script>
                alert("La materia no se pudo crear, intente de nuevo");
            </script>
            <% }
                }
            %>
        </form>
    </body>
</html>
