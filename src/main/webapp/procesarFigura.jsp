<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilos_resultado.css">
    <title>Resultados de la Figura</title>
</head>
<body>
    <a href="index.jsp">Volver al formulario</a>

        
<%
    // Obtener parámetros de la solicitud (asumiendo que se envían a través de un formulario)
    String[] inputs = new String[4];
    inputs[0] = request.getParameter("valor1");
    inputs[1] = request.getParameter("valor2");
    inputs[2] = request.getParameter("valor3");
    inputs[3] = request.getParameter("valor4");
    // Contar cuántos valores no nulos y no vacíos se proporcionaron
    int count = 0;
    int[] valores = new int[4];
    for (int i = 0; i < inputs.length; i++) {
        if (inputs[i] != null && !inputs[i].trim().isEmpty()) {
            valores[count++] = Integer.parseInt(inputs[i]);
        }
    }

    switch (count) {
        case 1:
            // Círculo
            double radio = valores[0];
            double diametroCirculo = 2 * radio;
            double circunferenciaCirculo = 2 * Math.PI * radio;
            double areaCirculo = Math.PI * Math.pow(radio, 2);

            %>
            <p><strong>Círculo:</strong></p>
            <p>Radio: <%= radio %></p>
            <p>Diámetro: <%= diametroCirculo %></p>
            <p>Circunferencia: <%= circunferenciaCirculo %></p>
            <p>Área: <%= areaCirculo %></p>
            <%
            break;
        case 2:
            // Rectángulo
            int baseRectangulo = valores[0];
            int alturaRectangulo = valores[1];
            int perimetroRectangulo = 2 * (baseRectangulo + alturaRectangulo);
            int areaRectangulo = baseRectangulo * alturaRectangulo;
            %>
            <p><strong>Rectángulo:</strong></p>
            <p>Base: <%= baseRectangulo %></p>
            <p>Altura: <%= alturaRectangulo %></p>
            <p>Perímetro: <%= perimetroRectangulo %></p>
            <p>Área: <%= areaRectangulo %></p>
            <%
            break;
        case 3:
            // Triángulo
            int lado1 = valores[0];
            int lado2 = valores[1];
            int lado3 = valores[2];
                
            // Método para calcular el área del triángulo usando la fórmula de Herón
            double s = (lado1 + lado2 + lado3) / 2.0;
            double areaTriangulo = Math.sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
                
            // Determinación del tipo de triángulo
            String tipoTriangulo;
            if (lado1 == lado2 && lado2 == lado3) {
                tipoTriangulo = "Equilátero";
            } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
                tipoTriangulo = "Isósceles";
            } else {
                tipoTriangulo = "Escaleno";
            }
            %>
            <p><strong>Triángulo:</strong></p>
            <p>Lado 1: <%= lado1 %></p>
            <p>Lado 2: <%= lado2 %></p>
            <p>Lado 3: <%= lado3 %></p>
            <p>Tipo: <%= tipoTriangulo %></p>
            <p>Área: <%= areaTriangulo %></p>
            <%
            break;
        case 4:
            // Cuadrado (todos los valores deben ser iguales para ser un cuadrado)
            boolean esCuadrado = true;
            for (int i = 1; i < valores.length; i++) {
                if (valores[i] != valores[0]) {
                    esCuadrado = false;
                    break;
                }
            }

            if (esCuadrado) {
                int ladoCuadrado = valores[0];
                int perimetroCuadrado = 4 * ladoCuadrado;
                int areaCuadrado = ladoCuadrado * ladoCuadrado;
                %>
                <p><strong>Cuadrado:</strong></p>
                <p>Lado: <%= ladoCuadrado %></p>
                <p>Perímetro: <%= perimetroCuadrado %></p>
                <p>Área: <%= areaCuadrado %></p>
                <%
            } else {
                out.println("<p>No es un cuadrado. Los cuatro valores no son iguales.</p>");
            }
            break;
        default:
            out.println("<p>Número de valores no reconocido.</p>");
    }
%>


