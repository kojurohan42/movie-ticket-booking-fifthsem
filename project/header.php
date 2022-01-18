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
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

  </head>
<body>
  <div class="topnav">
  <a >Future Cinemas</a>
  <a class="active" href="log.php">Home</a>
  <a href="myticket.php">My Tickets</a>
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