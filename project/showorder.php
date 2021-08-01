<?php include 'header.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title></title>

	<link rel="stylesheet" type="text/css" href="css/style2.css">

</head>
<body>
	<div class="main-div">
		<h3>Schedule of movies</h3>
		<div class="center-div">
			<div class="content">
				<table>
		<thead>
		<tr>
			<th>MovieName</th>
			<th>Date</th>
			<th>Theater</th>
			<th>TimeSlot</th>
		</tr>
	</thead>
		<tbody>
		<?php 

$sql="select * from showorder";
$query=mysqli_query($con,$sql);
$nums=mysqli_num_rows($query);
;
while($res = mysqli_fetch_array($query))
{?>
		<tr>
			<td><?php echo $res['movieName'];?></td>
			<td><?php echo $res['date'];?></td>
			<td><?php echo $res['theater'];?></td>
			<td><?php echo $res['timeslot'];?></td>
		</tr>
		<br>
	
	
<?php
}

?>	
</tbody>
</table>
	</div>
		</div>

	</div>	
	
</body>
</html>