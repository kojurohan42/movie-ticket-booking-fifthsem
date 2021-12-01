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
$username=$_SESSION['username'];
$seats=$_SESSION['seats'];
		
$showOrderId=$_SESSION['showOrderId'];
foreach($seats as $seat){
$sql=("insert into hall (showOrderId, username, seat) values('$showOrderId','$username','$seat')");
mysqli_query($conn, $sql);}
$showtime=$conn->query("select * from showorder where showOrderId='$showOrderId';");
$show=$showtime->fetch_object();

echo "<h3>Future Cinemas</h3>
<p>Kathmandu,Nepal</p>
<p>989898989</p>
<table>
<tr>
<td>Username:</td>
<td>".$username."</td>
</tr>
<tr>
<td>Movie name:</td>
<td>".$show->movieName."</td>
</tr>
<tr>
<td>Theater:</td>
<td>".$show->theater."</td>
</tr>
<tr>
<td>Date:</td>
<td>".$show->date."</td>
</tr>
<tr>
<td>Time:</td>
<td>".$show->timeslot."</td>
</tr>
<tr>
<td>No of seats:</td>
<td>".$_POST['seat']."</td>
</tr>
<tr>
<td>Seat no.:</td>
<td>".$_POST['seatnumber']."</td>
</tr>
<tr>
<td>Ticket Price:</td>
<td>".$_POST['ticketprice']."</td>
</tr>

</table>
 
"; 
?>
<div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div>

</body>
</html>