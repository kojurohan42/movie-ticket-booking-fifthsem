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


$seats=$_SESSION['seatnum'];
$sqli = "INSERT INTO bookings (u_name, theater, m_name, dates, tms, nseat, seat_nums,t_price) 
           VALUES ('$name', '$theater', '$movieName', '$date', '$times', '$seatnumber' ,'$seats','$ticketprice')";
	if ($conn->query($sqli) === FALSE) {
  		echo "Error: " . $sqli . "<br>" . $conn->error;
	}
session_start();
$_SESSION['userName']=$name;
$_SESSION['moviename']=$movieName;
$_SESSION['theater']=$theater;
$_SESSION['date']=$date;
$_SESSION['time']=$times;
$_SESSION['nseat']=$seatnumber ;
$_SESSION['seatnum'];
$_SESSION['tprice']=$ticketprice; 
$_SESSION['userId']=$userId;


header("Location:index.php");
//header("Location:barcode.php?username=".$name."& moviename=".$movieName." & theater=".$theater."  & date=".$date." & time=".$times." & nseat=".$seatnumber." & seatnum=".$_SESSION['seatnum']." & tprice=".$ticketprice." & userId=".$userId."");?>
<!-- <div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div> -->

</body>
</html>