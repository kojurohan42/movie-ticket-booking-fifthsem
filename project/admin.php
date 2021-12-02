<?php include('header.php') ?>
<?php include('deleter.php') ?>
<!DOCTYPE html>
<html>
<head>
<style> 
	.features{
		text-align:center;
		margin:100px;
		padding:20px;

	}
	.features a {
  background-color: #ddd;
  color: black;
  margin:auto;
  padding: 1em 1.5em;
  text-decoration: none;
  text-transform: uppercase;
}

a:hover {
  background-color: #555;
}

a:active {
  background-color: black;
}

a:visited {
  background-color: #ccc;
}
</style>
  </head>
<body>

<div class="features">
  <a href="addmovie.php">Add movie</a>
  <a href="deletemovie.php">Remove movie</a>
  <a href="addschedule.php">Add Schedule</a>
  
  </div>

</body>
</html>