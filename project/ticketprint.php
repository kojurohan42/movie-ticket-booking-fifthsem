<?php
 include_once 'header.php'; 
?>
<!DOCTYPE html>
<html>
<head><title>Ticket Print</title>
	<style>
		table{
			border-style:dotted;
		}
	</style>
</head>
<body>
<?php
$tim=$_GET['time'];

$result=$conn->query("select * from esewa where tm='".$tim."';");
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $name=$row["username"];
    $seatnumber=$row["t_seat"];
    $ticketprice=$row["t_amt"];
  }


$movieId=$_SESSION['movieId'];
$movieIdentity=$conn->query("select * from movielist where movieId=$movieId;");
$row=$movieIdentity->fetch_object();
$movieName=$row->Name;

	
$Identity=$conn->query("select * from showorder where movieName='".$movieName."';");
$rows=$Identity->fetch_object();	
$theater=$rows->theater;
$date=$rows->date;
$times=$rows->timeslot;

	 
echo "<h3>Future Cinemas</h3>
<p>Kathmandu,Nepal</p> 
<p>989898989</p>
<table>
<tr>
<td>Username:</td>
<td>".$name."</td>
</tr>
<tr>
<td>Movie name:</td>
<td>".$movieName."</td>
</tr>
<tr>
<td>Theater:</td>
<td>".$theater."</td>
</tr>
<tr>
<td>Date:</td>
<td>".$date."</td>
</tr>
<tr>
<td>Time:</td>
<td>".$times."</td>
</tr>
<tr>
<td>No of seats:</td>
<td>".$seatnumber."</td>
</tr>
<tr>
<td>Seat no.:</td>
<td>".$_SESSION['seatnum']."</td>
</tr>
<tr>
<td>Ticket Price:</td>
<td>".$ticketprice."</td>
</tr>

</table>
 
"; 
?>
<div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div>

</body>
</html>
