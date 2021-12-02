<?php
for($i=0;i<9;i++){
	$time1="D".$i;
	$sql="insert into hall1 (seatnumber) values('$time1')";
	$result= mysqli_query($conn,$time1);
}
?>