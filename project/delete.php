  <?php include "db.php"; ?>
  <?php 
  $id = $_GET['idth'];
  $sql="DELETE FROM `movielist` WHERE movieId=$id";
  $conn->query($sql);
  header('location:deletemovie.php');
  ?>