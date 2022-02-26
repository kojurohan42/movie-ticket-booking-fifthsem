<?php 
error_reporting(0);
include_once 'header.php'; 

include 'setting.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ticket</title>
	<link rel="stylesheet" type="text/css" href="css/customerPanel.css">


	<style type="text/css">
		.boxStyle{width: 100%;
			border: 1px solid #ccc;
			background: #FFF;
			margin: 0 0 5px;
			padding: 10px;
			font-style: normal;
			font-variant-ligatures: normal;
			font-variant-caps: normal;
			font-variant-numeric: normal;
			font-weight: 400;
			font-stretch: normal;
			font-size: 12px;
			line-height: 16px;
			font-family: Roboto, Helvetica, Arial, sans-serif;
			
		}
	</style>

</head>
<body>

	<?php 
	$movieId=$_POST['movieId'];
	$showOrderId=$_POST['showOrderId'];
	$_SESSION['showOrderId']=$showOrderId;


	$count=$_POST['count'];
	$total = $_POST['total'];
	
	$seat=$_POST['seat'];
	$seat_ar = explode(',', $seat);
	$seat_tr=array();
	$max=count($seat_ar);
	$j=0;

	foreach($seat_ar as $i){
		if($i<9)
		$st="A".($i+1);
		else if($i>=9 && $i<18)
		$st="B".($i-8);
		else if($i>=18 && $i<27)
		$st="C".($i-17);
		else
		$st="D".($i-26);
			$seat_ar[$j]=$st;	
		$j++;
	}
	$_SESSION['seat_ar']=$seat_ar;
	
	$username=$_SESSION['username'];
	
	$showOrder="";
	$seatnumber="";//id of reducing seat
	foreach($seat_ar as $seat){
		$seatnumber.=$seat." ";
	}

	
	
	 
	$showtime=$conn->query("select * from showorder where showOrderId='$showOrderId';");
	$show=$showtime->fetch_object();
	
	$movieIdentity=$conn->query("select * from movielist where movieId=$movieId;");
	$row=$movieIdentity->fetch_object();
    $movieName=$row->Name;	

	$user=$username;
    $tseat=$count;
    $amt=$show->price * $count;
    $txamt=$amt*0.13;
    $pdc=0;
    $psc=$amt*0.01;
    $tamt=$amt+$txamt+$psc+$pdc;

    //for time user had bought ticket
    date_default_timezone_set("Asia/Kathmandu");
    $DT =date( "G:i");
    

    $sqli = "INSERT INTO esewa (username, t_seat, amt, tx_amt, psd, pdc, t_amt,tm) VALUES ('$user', '$tseat', '$amt', '$txamt', '$psc', '$pdc' ,'$tamt','$DT')";
	if ($conn->query($sqli) === FALSE) {
  		echo "Error: " . $sqli . "<br>" . $conn->error;
	}
	


?>
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">
						<?php 


							//$_SESSION['movieId']="";

						echo "".$movieName;
						?>

					</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-4 col-lg-4 " align="center">
							<img alt="User Pic" src=<?php echo '"image/'.$row->image.'"';?> class="img-responsive"> 
						</div>
						<div class=" col-md-8 col-lg-8 " style="color:antiquewhite;"> 
							<table class="table table-user-information">
								<tbody>

									<tr>
										<td><strong>Date </strong></td>
										<td><?php echo "".$show->date; ?> </td>
									</tr>
									<tr>
										<td><strong>Movie Name </strong></td>
										<td><?php echo "".$row->Name;?> </td>
									</tr>
									<tr>
										<td><strong>Time </strong></td>
										<td><?php echo "". $show->timeslot;?></td>
									</tr>
									<tr>
										<td><strong>Movie Name </strong></td>
										<td><?php echo "". $show->theater;?></td>
									</tr>
									<tr>
										<td><strong>Seat Booked </strong></td>
										<td><?php 
										echo $count;?> </td>
									</tr>	
										<tr>
										<td><strong>Seat number </strong></td>
										<td><?php 
										foreach($seat_ar as $i)
										{echo $i." ";
										}
										?> </td>
									</tr>
									<tr>
										<td><strong>Ticket Price </strong></td>
										<td> <?php $ticketprice=$amt;
										echo $ticketprice?> </td>
									</tr>
								</table>
								<table>														
										<form action=<?php echo $epay_url?> method="POST">
											<?php 
											$_SESSION['showOrderId']=$showOrderId;
											$_SESSION['seats']=$seat_ar;
											$_SESSION['seatnum']=$seatnumber;
											$_SESSION['time']=$DT;
											?>
												<input value="<?php echo $tamt?>" name="tAmt" type="hidden">
												<input value="<?php echo $amt?>" name="amt" type="hidden">
												<input value="<?php echo $txamt?>" name="txAmt" type="hidden">
												<input value="<?php echo $psc?>" name="psc" type="hidden">
												<input value="<?php echo $pdc?>" name="pdc" type="hidden">
												<input value=<?php echo $merchant_code?>  name="scd" type="hidden">
												<input value="<?php echo $pid?>" name="pid" type="hidden">
												<input value=<?php echo $successurl?> type="hidden" name="su">
												<input value=<?php echo $failedurl?> type="hidden" name="fu">
												<input value="Confirm & Buy Ticket" type="submit" class="btn btn-primary">
										</form>
									</form>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>

</html>
