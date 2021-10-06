<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Nuevo docente</title>
</head>

<body>
    <h1>Nuevo docente</h1>
    <form action="<?php echo base_url(); ?>nuevo-docente/guardar" method="POST">
        <!-- le enviamos a guardar al controlador-->

        <label>CI</label>
        <input type="text" name="ci" placeholder="ingrese su ci">

        <br>

        <label>USUARIO</label>
        <input type="text" name="user" placeholder="ingrese su usuario">
        <br>

        <label>CONTRASEÑA</label>
        <input type="password" name="password" placeholder="ingrese su contraseña">

        <br>

        <label>ROL</label>
        <input type="text" name="id_rol" placeholder="ingrese su rol">

        <br>

        <label>NOMBRE</label>
        <input type="text" name="nombre" placeholder="ingrese su nombre">

        <br>

        <label>PATERNO</label>
        <input type="text" name="paterno" placeholder="ingrese su apellido paterno">

        <br>

        <label>FECHA NACIMIENTO</label>
        <input type="text" name="fechanaci" placeholder="ingrese su fecha de nacimiento">

        <br>

        <label>DEPARTAMENTO</label>
        <input type="text" name="departamento" placeholder="ingrese su departamento">

        <br>

        <label>CARGA HORARIA</label>
        <input type="text" name="cargah" placeholder="ingrese su cargah">

        <br>

        <label>MATERIA</label>
        <input type="text" name="materia" placeholder="ingrese su materia">

        <br>
        <button type="submit">Guardar</button>
    </form>
    <form action="<?php echo base_url(); ?>Docentes/">
        <button type="submit">Cancelar</button>
    </form>
</body>

</html>
