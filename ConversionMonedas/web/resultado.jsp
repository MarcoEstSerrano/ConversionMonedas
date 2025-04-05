<%@ page import="modelo.ConversorMoneda" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
    <!-- para el estilo use la ayuda de chatgpt buscando las imagenes yo mismo y comparando diseños hasta
    dar con el indicado.-->
   
    <style>
        /* Estilo general del cuerpo */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #ffffff; /* Texto blanco por defecto */
            background-image: url('img/convertidor.jpg'); /* Imagen de fondo */
            background-size: cover; /* Asegura que la imagen cubra toda la pantalla */
            background-position: center; /* Centra la imagen */
            height: 100vh; /* Asegura que cubra toda la altura */
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        /* Contenedor principal del resultado */
        .container {
            background-color: rgba(0, 0, 0, 0.6); /* Fondo oscuro semi-transparente */
            padding: 40px;
            border-radius: 15px;
            width: 50%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.6);
        }

        /* Título principal */
        h1 {
            font-size: 48px;
            color: #ffffff; /* Blanco para el contraste */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Sombra para mejorar la visibilidad */
            margin-bottom: 20px;
        }

        /* Resultado de la conversión */
        .resultado {
            font-size: 50px; /* Hacemos la fuente más grande */
            color: #ffcc00; /* Usamos un color amarillo para resaltar el resultado */
            font-weight: bold;
            margin-top: 20px;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7); /* Sombra más fuerte para el resultado */
            line-height: 1.5;
        }

        /* Mensaje de error */
        .error {
            color: red;
            font-size: 24px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Sombra para visibilidad */
        }

        /* Estilo del enlace "Volver" */
        a {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            color: #ffffff;
            background-color: #4CAF50;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 22px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.4);
        }

        /* Hover para el enlace */
        a:hover {
            background-color: #45a049; /* Color más oscuro en hover */
        }
    </style>
</head>
<body>

<% 
    String cantidadStr = request.getParameter("cantidad");
    String moneda = request.getParameter("moneda");
    double resultado = 0; //double porque tiene que ser decimal.
    boolean error = false;
    
    //uso codigo java aprovechando la flexibilidad de jsp
    
    //en el reques.getParameter aprovecho para usar las variables cantidad y moneda que no han sido inicializadas
    //pero segun entiendo no hace falta.

    try {
        double cantidadCRC = Double.parseDouble(cantidadStr); // porque hay que informarle al codigo que tipo de dato necesitamos.
        resultado = ConversorMoneda.convertir(cantidadCRC, moneda); //traemos la funcion de la clase java creada en el paquete modelo usando
        //los mismos nombres de variables para no confundirme.
    } catch (NumberFormatException e) {
        error = true;
    }
%>

<!-- Contenedor para mostrar los resultados -->
<div class="container"> <!-- un div para el orden del codigo -->
    <h1>Resultado de la Conversión</h1>

    <% if (error) { %>
        <p class="error">Error: Ingrese una cantidad válida en números.</p> <!-- de una anticipando el error -->
    <% } else { %>
        <p class="resultado"><%= cantidadStr %> CRC = <%= String.format("%.2f", resultado) %> <%= moneda %></p> <!-- el format"%.2f" ayuda a que el
        resultado se vea en decimal pero que no pase de los dos primeros numeros luego del punto.-->
    <% } %>

    <a href="index.jsp">Volver</a>
</div>

</body>
</html>
