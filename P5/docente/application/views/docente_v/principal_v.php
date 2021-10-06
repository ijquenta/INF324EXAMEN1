<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <title>Lista de docente</title>
    <style>
    body {
        background-color: while;
        font-family: comic sans ms;
    }

    table {
		text-align: center;
        background-color: white;
        text-align: left;
        border-collapse: collapse;
        width: 100%;
    }

    th,
    td {
        padding: 20px;
    }

    thead {
        background-color: #FB3640;
        border-bottom: solid 5px #0F362D;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #ddd;
    }

    tr:hover td {
        background-color: #247BA0;
        color: white;
    }

    .submitbtn {
        text-transform: uppercase;
        background-color: #1D3461;
        border-radius: 0;
        font-weight: bold;
        width: 90px;
        border: none;
        height: 30px;
        color: #fff;
    }

    .submitbtn:hover {
        color: #c3e3fc;
    }

    .submitbtn:hover+span.form-arrow::before {
        border: 2px solid #c3e3fc;
        border-bottom-color: transparent;
        border-left-color: transparent;
    }

    .fcc-btn {
        background-color: #247BA0;
        color: white;
        padding: 5px 15px;
        text-decoration: none;
    }

    .fcc-btn:hover {
        background-color: #FB3640;
    }
    </style>
</head>

<body>
    <h1 class="text-center">Lista de docentes</h1>

    <div>
        <table border="1px">
            <thead>
                <tr>
                    <th>CI</th>
                    <th>USUARIO</th>
                    <th>NOMBRE</th>
                    <th>PATERNO</th>
                    <th>FECHA NACIMIENTO</th>
					<th>DEPARTAMENTO</th>
					<th>CARGA HORARIA</th>
					<th>OPERACIONES</th>
                </tr>
            </thead>
            <?php foreach($data as $key => $value): //mostrar datos ?> 
            <tr>
                <td><?php echo $value->ci; ?></td>
                <td><?php echo $value->user; ?></td>
                <td><?php echo $value->nombre; ?></td>
                <td><?php echo $value->paterno; ?></td>
				<td><?php echo $value->fechanaci; ?></td>
				<td><?php echo $value->departamento; ?></td>
				<td><?php echo $value->cargah; ?></td>
                <td>
                    <a class="submitbtn" href="<?php echo base_url(); ?>docente/<?php echo $value->ci; ?>">Editar</a>

                    <a class="submitbtn"
                        href="<?php echo base_url(); ?>docente/eliminar/<?php echo $value->ci; ?>">Eliminar</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <div class="text-center">
            <a  class="submitbtn" href="<?php echo base_url(); ?>nuevo-docente">NUEVO</a>
        </div>
    </div>
</body>

</html>
