<?php
session_start();
$ci_usuario = $_SESSION['ciu'];
?>
<?php
            
            include('conexion.inc.php');
           
            $sql_consulta = "SELECT nombre, paterno 
                             FROM persona 
                             where ci like '$ci_usuario'"; 
            $resultado = mysqli_query($conexion,$sql_consulta); // almacenamos a conexion y el sql
            $filas = mysqli_fetch_array($resultado);
            mysqli_close($conexion);
            //print_r($filas);        
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FCPN</title>
    <link rel="stylesheet" href="Estilos/estilo_usuario.css" type="text/css">
</head>

<body>
    <div class="cabecera">

        <div style="float:left;">
            <img src="Estilos/logofcpn.png" alt="logo" width="190px" height="190px">
        </div>
        <div style="float: center;">
            <h1>Universidad Mayor de San Andres</h1>
            <h1>Facultad de Ciencias Puras y Naturales</h1>
            <h1 class="elegido">Bienvenido</h1>
        </div>

    </div>

    <div id="general">
        <div id="menu">
            <h3>ESTUDIANTE: </h3>
            <ul class="circulo">
                <li>
                    <img src="Estilos/graduado.png" alt="cerrar" width="20px" height="20px">
                    <p><a
                            class="elegido"><?php echo "UNIV. ".ucwords($filas['nombre'])." ".ucwords($filas['paterno'])?></a>
                    </p>
                </li>
                <li>
                    <p><a class="otro" href="./carreras/informatica2.html">INFORMATICA</a></p>
                </li>
                <li>
                    <p><a class="otro" href="./carreras/matematica2.html">MATEMATICA</a></p>
                </li>
                <li>
                    <p><a class="otro" href="./carreras/estadistica2.html">ESTADISTICA</a></p>
                </li>
                <li>
                    <img src="Estilos/notas.png" alt="cerrar" width="20px" height="20px">
                    <p><a class="otro" href="mostrar_notas_estudiante.php">MOSTRAR NOTAS</a></p>
                </li>
                <li>
                    <img src="Estilos/cerrar_sesion.png" alt="cerrar" width="20px" height="20px">
                    <p><a class="otro" href="cerrar_sesion.php">CERRAR SESION</a></p>
                </li>
            </ul>
        </div>
        <div>

        </div>

    </div>
</body>

</html>