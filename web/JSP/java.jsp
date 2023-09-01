<%-- 
    Document   : java
    Created on : 29/08/2023, 7:11:05 p. m.
    Author     : johan
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado de Calculadora</title>
    </head>
    <body>
        <h1>Resultado de Calculadora</h1>
        <% 
            int precioGrande = 10000;
            int precioMediano = 5000;
            int precioPequeño = 3000;
            double descuento = 0.1;
        
            int cantidadPerros = Integer.parseInt(request.getParameter("cantidadPerros"));
            int cantidadGrande = Integer.parseInt(request.getParameter("cantidadGrande"));
            int cantidadMediano = Integer.parseInt(request.getParameter("cantidadMediano"));
            int cantidadPequeño = Integer.parseInt(request.getParameter("cantidadPequeño"));
        
            int totalPerros = cantidadGrande + cantidadMediano + cantidadPequeño;
        
            int costoTotal = (cantidadGrande * precioGrande) + (cantidadMediano * precioMediano) + (cantidadPequeño * precioPequeño);
        
            if (totalPerros > 2) {
                costoTotal -= (costoTotal * descuento);
            }
            

/*<form action="JSP/java.jsp" method="post">
            <label for="cantidadPerros">Cantidad de Perros:</label>
            <input type="number" id="cantidadPerros" name="cantidadPerros" required><br><br>

            <h3>Detalles de los Perros</h3>

            <table>
                <tr>
                    <th>Tipo</th>
                    <th>Cantidad</th>
                </tr>
                <tr>
                    <td>Grande</td>
                    <td><input type="number" name="cantidadGrande" value="0"></td>
                </tr>
                <tr>
                    <td>Mediano</td>
                    <td><input type="number" name="cantidadMediano" value="0"></td>
                </tr>
                <tr>
                    <td>Pequeño</td>
                    <td><input type="number" name="cantidadPequeño" value="0"></td>
                </tr>
            </table>

            <button type="submit">Calcular</button>
        </form>*/
                
        %>

        <p>Cantidad de Perros: <%= cantidadPerros %></p>
        <p>Cantidad de Paseos: <%= totalPerros %></p>
        <p>Costo Total: <%= costoTotal %></p>
    </body>
</html>
