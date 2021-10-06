<?php
$usuario=$_POST['usuario'];   // recuperamos con el metodo POST el usuario
$contraseña=$_POST['contraseña']; // recuperamos con el metodo POST la contrañesa

session_start(); // inicio de session del usuario

include('conexion.inc.php'); // abrimos la conexion con la base de datos.

$sql_consulta = "SELECT * FROM usuario where user like '$usuario' and password like '$contraseña'"; // la consulta para verificar si existe el usuario.

$resultado = mysqli_query($conexion,$sql_consulta); // se crea una varable para almacenar los datos de select de la consulta

$filas = mysqli_fetch_array($resultado); // se convierte en un array para extraer con mas facilidad los datos

if($filas['id_rol'] == '1'){ // con id_rol = 1 verificamos que el rol es docente
     
    $_SESSION['ciu'] = $filas[0];  // mandamos en la variable de session el ci del docente.
    header("location:docentes.php"); // nos redirige a el archivo docentes
}
else{
    if($filas['id_rol'] == '2'){ // con id_rol = 2 verificamos que el rol es estudiante
        //print_r($filas);
        $_SESSION['ciu'] = $filas[0]; // mandamos en la variable de session el ci del estudiante.
        header("location:estudiantes.php"); // nos redirige a el archivo estudiantes
    }
    else{
        // si no se encuentra al usuario redirige nuevamente al login
        ?> 
    <?php include("index.php"); ?>
    
    <h1 class="bad">Error de autenticación. Vuelva a intentar</h1> 
    <?php     
    }
}
mysqli_free_result($resultado);
mysqli_close($conexion);