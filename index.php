<?php include("db.php"); ?>

<?php include('includes/header.php'); ?>

<link href="estilos.css" rel="stylesheet" type="text/css">

<main class="container p-4">
  <div class="row">
    <div class="col-md-4">
    <div class="card card-body" id="lista1"><center>Listado de Profesores y Estudiantes</center></div><br>
    <div class="col-md-8" style="text-align:center;" id="table">
      <table class="table table-bordered" style="width:100%;text-align:left;background-color:gold;">
        <thead>
          <tr>
            <th style="background-color:blue">Id</th>
            <th style="background-color:blue">Docente</th>
            <th style="background-color:blue">Ver</th>
          </tr>
        </thead>
        <tbody>
        <!-- aqui va la conexión a la bd para hacer la consulta-->
          <?php
          $query = "SELECT * FROM profesor";
          $result_tasks = mysqli_query($conn, $query);    

          while($row = mysqli_fetch_assoc($result_tasks)) { ?>
          <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['nombre']; ?></td>          
            <td>
              <form action="lista.php" method="post">
                <button class="btn btn-secondary"><i class="fas fa-marker"></i></button>
                <input type="hidden" name="id_pro" value="<?php echo $row['id'] ?>">
              </form>
            </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
    <div class="col-md-8" style="text-align:center;" id="table_e">
      <table class="table table-bordered" style="width:100%;text-align:left;background-color:gold;">
        <thead>
          <tr>
            <th style="background-color:blue; width: 1000px;">Id</th>
            <th style="background-color:blue; width: 1000px;">Estudiante</th>
            <th style="background-color:blue; width: 1000px;">Ver</th>
          </tr>
        </thead>
        <tbody>
        <!-- aqui va la conexión a la bd para hacer la consulta-->
          <?php
          $query = "SELECT * FROM estudiante";
          $result_tasks = mysqli_query($conn, $query);    

          while($row = mysqli_fetch_assoc($result_tasks)) { ?>
          <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['nombre']; ?></td>          
            <td>
              <form action="lista_estudiantes.php" method="post">
                <button class="btn btn-secondary"><i class="fas fa-marker"></i></button>
                <input type="hidden" name="id_estu" value="<?php echo $row['id'] ?>">
              </form>
            </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</main>

<?php include('includes/footer.php'); ?>