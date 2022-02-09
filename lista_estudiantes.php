<?php include("db.php"); ?>

<?php include('includes/header.php'); ?>

<link href="estilos.css" rel="stylesheet" type="text/css">

<main class="container p-4">
  <div class="row">
    <div class="col-md-4">
    <?php
        //variable para recibir el ID del profesor y hacer la consulta
        $ID_ESTU = $_POST['id_estu'];
    ?>
  <div class="card card-body" id="lista3"><center>Listado de Asignaturas</center></div><br>
    <div class="col-md-8" id="table3">
      <table class="table table-bordered" style="width:100%;text-align:left;background-color:gold;">
        <thead>
          <tr>
            <th style="background-color:blue">Estudiante</th>
            <th style="background-color:blue">Materia</th>
            <th style="background-color:blue">Curso</th>
          </tr>
        </thead>
        <tbody>
        <!--conexión a la bd para hacer la consulta-->
          <?php

            $query = "SELECT asig.nombre as asignatura, e.nombre as estudiante, c.salon as curso 
            FROM  asignatura_estudiante a, estudiante e, curso c, asignatura asig
            WHERE a.id_estudiante = ".$ID_ESTU." && a.id_estudiante = e.id GROUP BY e.nombre";
          
            $result_tasks = mysqli_query($conn, $query);  
          
            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
            <tr>
              <td><?php echo $row['estudiante']; ?></td>
              <td><?php echo $row['asignatura']; ?></td> 
              <td><?php echo $row['curso']; ?></td>         
            </tr>

            <?php } ?>
        </tbody>
      </table>
      <center><td><a href="index.php?id=<?php echo $row['id']?>" class="btn btn-primary">Volver</i></a></td></center>
    </div>
  </div>
</main>

<?php include('includes/footer.php'); ?>