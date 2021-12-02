<?php
include 'header.php';?>
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
		a {

  color: black;

 padding:5px;
  text-decoration: none;
  text-transform: uppercase;
}

a:hover {
  background-color: #555;
}

a:active {
  background-color: black;
}

a:visited {
  background-color: #ccc;
}
	</style>

</head>
<body>
	<?php include_once 'header.php'; ?>
	<div class="container">
		<div class="row">
			<div class="col-xs-12  toppad" >
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<?php 
//for time slot
							//$timeSlot=$conn->query("select time from timeslot");	

//movie openssl_pkey_get_details(key)
							$movieId=$_POST['movieId'];	
							$_SESSION['movieId']=$movieId;
							$res=$conn->query("select * from movielist where movieId=$movieId;");
							$row=$res->fetch_object();
							$movieName=$row->Name;
							$_SESSION['movieName']=$movieName;
							
							?>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-4 col-lg-4 " align="center">
								<img alt="User Pic" src=<?php echo '"image/'.$row->image.'"';?> class=" img-responsive"> 
							</div>
							<div class=" col-md-8 col-lg-8 "> 
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td><strong>Movie Name </strong></td>
											<td><?php 
											
											echo $movieName;?> </td>
										</tr>
										<tr>
											<td><strong>Genre</strong></td>
											<td> <?php echo "".$row->Genre;?> </td>
										</tr>
										<tr>
											<td><strong>Director</strong></td>
											<td><?php echo "".$row->Director;?> </td>
										</tr>
										<tr>
											<tr>
												<td><strong>IMDB</strong></td>
												<td><?php echo "".$row->imdb;?> </td>
											</tr>
											<tr>
												<td><strong>Description</strong></td>
												<td><?php echo "".$row->Description;	?> </td>
											</tr>
									


											<form action="ticket2.php" method="post" >

												<tr>
													<th><strong>Date</strong></th>
													<td> <select name="date" class="boxStyle"> 
														<?php $timeSlot=$conn->query("select date from showorder where movieName='$movieName'");
														while ($showTime=$timeSlot->fetch_object()) {
															echo " <option value='".$showTime->date."'>". $showTime->date."</option>
															";
														} ?> 
													</select></td>
												</tr>
												<tr>
														
													<td><strong>Theater</strong></td>
													<td>
														<select name="theater" class="boxStyle"> 
														<?php $timeSlot=$conn->query("select theater from showorder where movieName='$movieName'");
														while ($showTime=$timeSlot->fetch_object()) {
															echo " <option value='".$showTime->theater."'>". $showTime->theater."</option>
															";
														} ?> 
														</select>
														</td>
													</tr>
												<tr>	
													<td><strong>Show Time</strong></td>
													<td>  <select name="timeSlot" class="boxStyle"> 
													 		<?php 
															$timeSlot=$conn->query("select timeslot from showorder where movieName='$movieName'");
														while ($showTime=$timeSlot->fetch_object()) {
															echo " <option value='".$showTime->timeslot."'>". $showTime->timeslot."</option>
															";
														} ?> 
													</select></td>
												</tr>
												<input type="hidden" name="movieName" value="<?php echo $movieName; ?>">

											
															<tr>
														<td colspan="2"><input class="btn btn-primary btn-xs btn-block" type="submit" name="submit" value="Select the seat"></td>
														
														
													</tr>
													<tr><td><br></td></tr>	
													
													
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
