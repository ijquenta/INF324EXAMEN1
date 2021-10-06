<?php


session_start();  // abrimos la session
session_destroy(); // cerramos la session
header("location:index.php"); // con header volvemos a login

?>