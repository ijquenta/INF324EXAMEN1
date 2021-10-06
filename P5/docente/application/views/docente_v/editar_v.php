<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



    <title>Editar docente</title>
</head>

<body>
    <h1>Editar los datos del docente: <?php echo $nombre." ".$paterno; ?></h1>
    <form action="<?php echo base_url(); ?>docente/actualizar/<?php echo $ci; ?>" method="POST">




        <label>USUARIO</label>
        <input type="text" name="user" value="<?php echo $user;?>">

        <br>


        <label>CONTRASEÑA</label>
        <input type="password" name="password" value="<?php echo $password;?>">
        <br>

        <label>ROL</label>
        <input type="text" name="id_rol" value="<?php echo $id_rol;?>">
        <br>
        <br>

        <label>NONBRE</label>
        <input type="text" name="nombre" value="<?php echo $nombre;?>">
        <br>
        <br>

        <label>PATERNO</label>
        <input type="text" name="paterno" value="<?php echo $paterno;?>">
        <br>
        <br>

        <label>FECHA NACIMIENTO</label>
        <input type="text" name="fechanaci" value="<?php echo $fechanaci;?>">
        <br>

        <br>

        <label>DEPARTAMENTO</label>
        <input type="text" name="departamento" value="<?php echo $departamento;?>">
        <br>

        <br>

        <label>CARGA HORARIA</label>
        <input type="text" name="cargah" value="<?php echo $cargah;?>">
        <br>

        <br>

        <label>MATERIA</label>
        <input type="text" name="sigla" value="<?php echo $sigla;?>">
        <br>


        <button type="submit">Guardar</button>
    </form>
    <form action="<?php echo base_url(); ?>Docentes/">
        <button type="submit">Cancelar</button>
    </form>

</body>

</html>
