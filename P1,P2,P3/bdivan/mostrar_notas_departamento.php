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
         $fil = mysqli_fetch_array($resultado);
         mysqli_close($conexion);
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
            <h1>UNIVERSIDAD MAYOR DE SAN ANDRES</h1>
            <h1>FACULTAD DE CIENCIAS PURAS Y NATURALES</h1>
            <h1 class="elegido">La media de notas de los estudiantes por departamento:</h1>
        </div>

    </div>

    <div id="general">
        <div id="menu">
            <h2>Docente: <?php echo "Lic. ".ucwords($fil['nombre'])." ".ucwords($fil['paterno'])?></h2>
            <ul class="circulo">

                <li>
                    <p><a class="otro">MEDIA DE NOTAS POR DEPARTAMENTO</a></p>
                </li>
                <li>
                    <p><a class="otro" href="docentes.php">volver</a></p>
                </li>
                <li>
                    <img src="Estilos/cerrar_sesion.png" alt="cerrar" width="20px" height="20px">
                    <p><a class="otro" href="cerrar_sesion.php">CERRAR SESION</a></p>
                </li>

            </ul>

        </div>
        <?php 
            include('conexion.inc.php');
           
            $sql_consulta = "SELECT round(tmp1.BE,2)BE, round(tmp2.CB,2)CB, round(tmp3.CH,2)CH, round(tmp4.LP,2)LP,round(tmp5.ORU,2)ORU, round(tmp6.PD,2)PD, round(tmp7.PT,2)PT,round(tmp8.SC,2)SC, round(tmp9.TJ,2)TJ
                             FROM (select AVG(n.notafinal)BE from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '01' and p.ci = e.ci)tmp1,
                                 (select AVG(n.notafinal)CB from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '02' and p.ci = e.ci)tmp2,
                                 (select AVG(n.notafinal)CH from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '03' and p.ci = e.ci)tmp3,
                                 (select AVG(n.notafinal)LP from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '04' and p.ci = e.ci)tmp4,
                                 (select AVG(n.notafinal)ORU from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '05' and p.ci = e.ci)tmp5,
                                 (select AVG(n.notafinal)PD from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '06' and p.ci = e.ci)tmp6,
                                 (select AVG(n.notafinal)PT from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '07' and p.ci = e.ci)tmp7,
                                 (select AVG(n.notafinal)SC from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '08' and p.ci = e.ci)tmp8,
                                 (select AVG(n.notafinal)TJ from nota n, estudiante e, persona p where n.ci = e.ci and p.departamento = '09' and p.ci = e.ci)tmp9"; 
            $resultado = mysqli_query($conexion,$sql_consulta); // almacenamos a conexion y el sql
            ?>
        <div>

            <div id="bloquenotas">
                <table>
                    <div>
                        <thead>
                            <tr>
                                <th>BE</th>
                                <th>CB</th>
                                <th>CH</th>
                                <th>LP</th>
                                <th>OR</th>
                                <th>PD</th>
                                <th>PT</th>
                                <th>SC</th>
                                <th>TJ</th>

                            </tr>
                        </thead>
                    </div>
                    <?php
            while($filas = mysqli_fetch_array($resultado)){
                //print_r($filas);
                echo "<tr>";
                echo "<th>".$filas['BE']." %"."</th>";
                echo "<th>".$filas['CB']." %"."</th>";
                echo "<th>".$filas['CH']." %"."</th>";
                echo "<th>".$filas['LP']." %"."</th>";
                echo "<th>".$filas['ORU']." %"."</th>";
                echo "<th>".$filas['PD']." %"."</th>";
                echo "<th>".$filas['PT']." %"."</th>";
                echo "<th>".$filas['SC']." %"."</th>";
                echo "<th>".$filas['TJ']." %"."</th>";
                echo "</tr>";
            }
            ?>
                </table>
            </div>

        </div>

    </div>
</body>


</html>