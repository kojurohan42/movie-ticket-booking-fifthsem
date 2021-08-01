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

echo "<h3>Future Cinemas</h3>
<p>Kathmandu,Nepal</p>
<p>989898989</p>
<table>
<tr>
<td>Username:</td>
<td>".$_POST['username']."</td>
</tr>
<tr>
<td>Movie name:</td>
<td>".$_POST['movieName']."</td>
</tr>
<tr>
<td>Theater:</td>
<td>".$_POST['theater']."</td>
</tr>
<tr>
<td>Date:</td>
<td>".$_POST['date']."</td>
</tr>
<tr>
<td>Time:</td>
<td>".$_POST['time']."</td>
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