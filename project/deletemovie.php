  <?php include_once "header.php"; ?>

<!DOCTYPE html>
<html>
<head>  
  <link rel="stylesheet" type="text/css" href="css/registration.css">
<script src="https://kit.fontawesome.com/77089ec89d.js" crossorigin="anonymous"></script>
</head>

<body>
      <table>
      	<tr>
      		<th colspan=2>Movie List</th>
      	</tr>
      	<tr>
      		<th>Name</th>
      		<th>Delete</th>
      	</tr>
   <?php 

$res=$conn->query("select * from movielist");
while ($row=$res->fetch_object()){
	?>
      		<td><?php echo "$row->Name"; ?></td>
      		<td><a href="delete.php?idth=<?php echo $row->movieId; ?>"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
      	</tr> 
<?php
}
 ?>

      
        </table>


</body>
</html> 







