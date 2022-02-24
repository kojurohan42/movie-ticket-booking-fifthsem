
<!DOCTYPE html>
<html>
<head>	

	<link rel="stylesheet" type="text/css" href="css/registration.css">
	<style type="text/css">
		
		.MovieGenre{width: 100%;
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
		body, html {
			height: 100%;
			margin: 0;
		}
		.wrapper{
			text-align: center;
		}
		.bg { 
			/* The image used */
			background-image: url("img/addMovieBackground.jpg");

			/* Full height */
			height: 100%; 

			/* Center and scale the image nicely */
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
		}
		.container{
			width:40%;
		}
	</style>
</head>

<body >
	<?php include_once "header.php"; ?>
	<div class="bg">

		<div class="container">  
			<table>
			<form id="contact" action="" method="post" >
				
						<tr>

						<th><strong>Movie Name</strong></th>
						<td>  <select name="movieName" class="boxStyle"> 
						<?php $sql=$conn->query("select Name from movielist"); 
						while ($res=$sql->fetch_object()) {
							echo " <option value='".$res->Name."'>". $res->Name."</option>";
														} ?> 
													</select></td>
												</tr>
						
							<tr>
													<td><strong>Date</strong></td>
													<td><input class="boxStyle" type="date" name="date"></td>
												</tr>
			<th><strong>Show Time</strong></th>
			<td>     
			<select class="TimeSlot" name="time">
           		 <option value="8:00am">8:00am</option>
         		 <option value="11:00am">11:00am</option>
         		 <option value="2:00pm">2:00pm</option>
       		 </select></td>
			</tr>
							<tr>

			<th><strong>Theater</strong></th>
			<td>     
			<select class="theater" name="theater">
           		 <option value="hall1">hall1</option>
         		 <option value="hall2">hall2</option>
       		 </select></td>
			</tr>
			<tr>
				<th>Price</th>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<input style="font-size: larger;background-color: #c2fbb8;font-family: cursive;font-weight: bold;" 
				class="MovieGenre" type="submit" name="submit"> 
			</tr>
				
				


			</form>
			</table>
			<div class="wrapper">
				<button class="btn btn-default" onclick="document.location.href='admin.php'" > <span class='glyphicon glyphicon-chevron-left'> </span>BACK TO THE ADMIN PAGE</button>
			</div>

		</div>

	</div>
</body>
</html> 
<?php 
if (isset($_POST['submit'] )&& !empty($_POST['submit']))

{
	
  $MovieName=$_POST['movieName'];
  $date=$_POST['date'];
  $timeSlot=$_POST['time'];
  $theater=$_POST['theater'];
  $pr = $_POST['price'];
$price = (int)$pr;
  if (!(empty($MovieName) || empty($date) || empty($timeSlot) || empty($theater)))
  {
  
$sql="insert into showorder (movieName, date, timeslot, theater, price)values('$MovieName', '$date', '$timeSlot', '$theater', '$price')";
mysqli_query($conn, $sql);
$sql="";

    

    $_SESSION['msg']="Movie Successfully Added";
    header ("Location: admin.php" );
    

  }
  

}
else{
  
}


?>