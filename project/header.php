<?php 
  session_start(); 
include 'db.php';
  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
 
  <title>Home</title>
  <link rel="stylesheet" type="text/css" href="style2.css">

  </head>
<body>
  <div class="topnav">
  <a >Future Cinemas</a>
  <a class="active" href="log.php">Home</a>
  <a href="showorder.php">Schedule</a>
  <a href="#bottom">Contact</a>
  <div class="login-container">
      <a href="login.php"><?php echo $_SESSION['username']; ?></a> 
      <a href="logout.php?logout='1'" style="color: red;">logout</a>
    <br>
<br>
  </div>
</div>

</body>
</html>