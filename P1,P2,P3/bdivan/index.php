<!DOCTYPE html>
<html lang="es">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Estilos/estilo_login.css"> <!-- insertamos la hoja de estilo para el login -->

<head>
    <title>FCPN</title>
</head>

<body>

    <form action="validar.php" method="post"> <!-- al ingresar nos mandara al archivo validar.php para la verificacion del usuario -->
        <h1>Login</h1>
        <img src="Estilos/icono_users.png" alt="user" width="150px" height="150px">
        <h2>Facultad Ciencias Puras y naturales</h2>
        <p>Usuario</p>
        <input type="text" placeholder="ingrese su usuario" name="usuario"> <br>
        <p>Contraseña </p>
        <input type="password" placeholder="ingrese su contraseña" name="contraseña"> <br>
        <input type="submit" value="Ingresar">
    </form>
</body>
</html>