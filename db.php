<?php
//aqui guardo los datos dentro de la session y los mensajes
session_start();

//conexión a la BD
$conn = mysqli_connect(
  'localhost',
  'root',
  '',
  'colegio'
) or die(mysqli_erro($mysqli));

?>