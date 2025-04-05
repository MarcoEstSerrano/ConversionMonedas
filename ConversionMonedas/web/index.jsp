<%-- 
    Document   : index.jsp
    Created on : 5 abr 2025, 7:05:49 a. m.
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- para el estilo use la ayuda de chatgpt buscando las imagenes yo mismo y comparando diseños hasta
    dar con el indicado.-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversor de Monedas
        </title>


        <style>
            body {
                background-image: url('img/principal.jpg'); /* Si la imagen está dentro de una carpeta */

                background-size: cover; /* Asegura que la imagen cubra toda la pantalla */
                background-position: center; /* Centra la imagen */
                color: #ffffff; /* Asegura que el texto sea blanco por defecto */
                font-family: 'Arial', sans-serif;
                margin: 0;
                padding: 0;
                height: 100vh;
            }

            h1 {
                text-align: center;
                font-size: 48px;
                color: #fff; /* Cambié el color a blanco para contraste */
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Agrega sombra para mejorar la legibilidad */
                margin-top: 45px;
            }

            form {
                background-color: rgba(0, 0, 0, 0.6); /* Fondo semi-transparente para que el formulario sea legible */
                padding: 30px;
                border-radius: 10px;
                width: 50%;
                margin: 0 auto;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.6);
            }

            label {
                color: #ffffff;
                font-size: 18px;
            }

            input[type="number"], select {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: none;
                border-radius: 5px;
                font-size: 16px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 15px;
                background-color: #4CAF50; /* Color verde para el botón */
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 18px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #45a049; /* Color más oscuro para hover */
            }
        </style>



    </head>
    <body>

        <h1>Simulador de Conversión de Monedas a colones<h1>
        <h1>USD: 540 colones<h1>       
        <h1>EUR: 580 colones<h1>  

                <form action ="resultado.jsp" method="post">
                    <label for="cantidad">Ingrese la cantidad en colones (CRC):</label><!-- comment -->
                    <input type ="number" name="cantidad" required><br><br><!-- esta es la mejor forma de
                    hacer la validación para que solo pueda meter numeros en lugar de letras o otro simbolo
                    usando number en type, ya que de no ser asi se complica y alarga más el codigo.-->



                    <label for="moneda">Seleccion moneda destino:</label><!-- se crea el label por orden -->
                    <select name="moneda"><!-- es mejor hacerlo con el select ya que es mas sensillo para elegir y rapido -->
                        <option value ="USD">Dólares (USD)</option>
                        <option value ="EUR">Euros (EUR)</option>


                    </select><br><br> <!-- los br son saltos de linea que ayudan a que se ordene mejor el codigo -->

                    <input type="submit" value="Convertir">    <!-- el submit para enviar el dato y el nombre de convertir en el boton -->


                </form>


                </body>
                </html>
