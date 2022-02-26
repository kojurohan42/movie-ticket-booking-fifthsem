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

$showOrderId = $_SESSION['showOrderId'];
$name = $_SESSION['username'];
// $Identity=$conn->query("select * from showorder where showOrderId='".$showOrderId."';");
// $rows=$Identity->fetch_object();	
// $theater=$rows->theater;
// $date=$rows->date;
// $times=$rows->timeslot;



$seat_ar =$_SESSION['seat_ar'];
foreach($seat_ar as $seat){

  $sqli = "INSERT INTO hall (showOrderId, username, seat) VALUES ('$showOrderId','$name', '$seat')";
  if ($conn->query($sqli) === FALSE) {
    echo "Error: " . $sqli . "<br>" . $conn->error;
}
}

header("Location:log.php");
//header("Location:barcode.php?username=".$name."& moviename=".$movieName." & theater=".$theater."  & date=".$date." & time=".$times." & nseat=".$seatnumber." & seatnum=".$_SESSION['seatnum']." & tprice=".$ticketprice." & userId=".$userId."");?>
<!-- <div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div> -->

</body>
</html>