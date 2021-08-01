<?php 
include_once 'header.php'; 
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
	$movieId=$_SESSION['movieId'];

	$date=$_POST['date'];
	
	$time=$_POST['timeSlot'];
	
	$theater=$_POST['theater'];

	

	
	$username=$_SESSION['username'];
	
	$showOrder="";
	$seatnumber="";//id of reducing seat
	//seat counting
	$sql="select count(seatnumber) from hall2 where name='".$username."';";
	$result=mysqli_query($con,$sql);
	$row = mysqli_fetch_array($result);
	$seatCount=$row[0];
	$seatCountnum=intval($seatCount);  

	     $res=$conn->query("select * from hall2  where name='".$username."';");
          while ($row=$res->fetch_object()) {
          	$seatnumber.=$row->seatnumber.",";
	}
	$movieIdentity=$conn->query("select * from movielist where movieId=$movieId;");
	$row=$movieIdentity->fetch_object();
$movieName=$row->Name;	

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
						<div class=" col-md-8 col-lg-8 "> 
							<table class="table table-user-information">
								<tbody>

									<tr>
										<td><strong>Date </strong></td>
										<td><?php echo "".$date ?> </td>
									</tr>
									<tr>
										<td><strong>Movie Name </strong></td>
										<td><?php echo "".$row->Name;?> </td>
									</tr>
									<tr>
										<td><strong>Time </strong></td>
										<td><?php echo "". $time?></td>
									</tr>
									<tr>
										<td><strong>Movie Name </strong></td>
										<td><?php echo "". $theater?></td>
									</tr>
									<tr>
										<td><strong>Seat Booked </strong></td>
										<td><?php 
										echo "$seatCount";?> </td>
									</tr>
										<tr>
										<td><strong>Seat number </strong></td>
										<td><?php 
										echo "$seatnumber";?> </td>
									</tr>
									<tr>
										<td><strong>Ticket Price </strong></td>
										<td> <?php $ticketprice=$seatCount*300;
										echo $ticketprice?> </td>
									</tr>
								</table>
								<table>
									<form action="ticketprint.php" method="post">
										<tr><td><strong>Payment Method</strong>
										<select>
											<option>eSewa</option>
											<option>fonePay</option>
											<option>Debit Card</option>
										</select></td>
										<td> <input type="text" name="payment" placeholder="Id_no." ></td></tr>
										<input type="hidden" name="username" value=<?php echo '"'.$username.'"'; ?>>
										<input type="hidden" name="movieName" value=<?php echo '"'.$movieName.'"'; ?>>
										<input type="hidden" name="showOrderId" value=<?php echo '"'.$showOrder.'"'; ?>>


										<input type="hidden" name="date" value=<?php echo '"'.$date.'"'; ?>>

										<input type="hidden" name="time" value=<?php echo '"'.$time.'"'; ?>>

										<input type="hidden" name="theater" value=<?php echo '"'.$theater.'"'; ?>>

										<input type="hidden" name="seat" value=<?php echo '"'.$seatCount.'"'; ?>>
										<input type="hidden" name="seatnumber" value=<?php echo '"'.$seatnumber.'"'; ?>>
										<input type="hidden" name="ticketprice" value=<?php echo '"'.$ticketprice.'"'; ?>>


										<tr>
											<td colspan="2" width="100%">
												<input class="btn btn-primary btn-xs btn-block" type="submit" name="submit" value="Confirm & Buy Ticket">
											</td>
										</td>
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
