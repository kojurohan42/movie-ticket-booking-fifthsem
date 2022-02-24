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

  <link rel="stylesheet" href="css/astyle.css">
  <link href="css/block.css" rel='stylesheet' type='text/css' />
  <link href="css/rotating-card.css" rel="stylesheet">
  <link href="css/newstyle.css" rel="stylesheet">
</head>
<body>
<div class="navbar">
        <div class="navbar-container">
            <div class="logo-container">
                <h1 class="logo">Future Cinemas</h1>
            </div>
            <div class="menu-container">
                <ul class="menu-list">
                    <li class="menu-list-item active"><a link href="log.php">Home</a></li>
                    <li class="menu-list-item"><a link href="myticket.php">My Tickets</a></li>
                    <li class="menu-list-item"><a href="showorder.php">Schedule</a></li>
                    <li class="menu-list-item"><a link href="#bottom">Contact</a></li>
                </ul>
            </div>
            <div class="profile-container">
                <div class="profile-text-container">
                    <ul class="profile-list">
                        <li class="profile-list-item"><a href="login.php"><?php echo $_SESSION['username']; ?></a> </li>
                        <li class="profile-list-item"><a href="logout.php?logout='1'" style="color: red;">logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
		
</body>
</html>