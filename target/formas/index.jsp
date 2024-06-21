<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="Estilos.css" />
    <title>Formas</title>
</head>
<body>
    <h1>Cálculo de figuras geométricas</h1>
    <form class="form-input" action="procesarFigura.jsp" method="post">
        <label for="valor1">Lado 1</label>
        <input id="valor1" name="valor1" type="number" placeholder="Lado 1"/>

        <label for="valor2">Lado 2</label>
        <input id="valor2" name="valor2" type="number" placeholder="Lado 2"/>

        <label for="valor3">Lado 3</label>
        <input id="valor3" name="valor3" type="number" placeholder="Lado 3"/>

        <label for="valor4">Lado 4</label>
        <input id="valor4" name="valor4" type="number" placeholder="Lado 4"/>

        <input type="submit" value="Calcular" />
    </form>
</body>
</html>
