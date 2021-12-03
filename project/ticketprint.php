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
    $userId=$row["pid"];
  }
echo $userId; 

$movieId=$_SESSION['movieId'];
$movieIdentity=$conn->query("select * from movielist where movieId='".$movieId."'");
$row=$movieIdentity->fetch_object();
$movieName=$row->Name;

	
$Identity=$conn->query("select * from showorder where movieName='".$movieName."';");
$rows=$Identity->fetch_object();	
$theater=$rows->theater;
$date=$rows->date;
$times=$rows->timeslot;

header("Location:barcode.php?username=".$name."& moviename=".$movieName." & theater=".$theater."  & date=".$date." & time=".$times." & nseat=".$seatnumber." & seatnum=".$_SESSION['seatnum']." & tprice=".$ticketprice." & userId=".$userId."");?>
<div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div>

</body>
</html>