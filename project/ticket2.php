<?php include 'db.php'?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/style3.css" />
	<style>
		.wrapper{
		display:grid;
		grid-template-columns: repeat(9, 0.5fr);
		grid-gap: 1em;
		grid-auto-rows: minmax(5px, auto);

		}
		.wrapper1{
			display:grid;
			grid-template-columns:repeat(11, 0fr);
			grid-gap: 1em;
			grid-auto-rows: minmax(5px, auto);
		}
		.wrapper > div{

			padding:0.5em;
		}
		
		.wrapper>p{
			background:#eee;
			padding:0em;
		}

	</style>
	<?php 
	$movieId=$_SESSION['movieId'];
$movieName=$_POST['movieName'];
$date=$_POST['date'];

$time=$_POST['timeSlot'];

$theater=$_POST['theater'];
$username=$_SESSION['username'];

?>
  </head>
  <body>
    

    <ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>N/A</small>
      </li>
      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>
      <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
      </li>
    </ul>

    <div class="container">
      <div class="screen"></div>
<?php
	$show=$conn->query("select showOrderId, price from showorder where movieName='".$movieName."' and date='".$date."' and timeslot='".$time."' and theater='".$theater."'");
    while ($showTime=$show->fetch_object()) {
      $showOrderId=$showTime->showOrderId;
	  $price = $showTime->price;
       
    } 
 
   
  
        
$te="";
for($i=1; $i<=4; $i++){
	if($i==1)
	$te="A";
	else if($i==2)
	$te="B";
	else if($i==3)
	$te="C";
	else
	$te="D";?>
<div class="row">
<?php for($j=1; $j<=9; $j++){
      
		$time1=$te.$j;
		$sql="select * from hall where showOrderId='".$showOrderId."' and seat='".$time1."'";
		$result= mysqli_query($conn, $sql);
		$res=mysqli_fetch_assoc($result);
		if($res)
        {
			?>
			<div class="seat occupied"></div>
			
			<?php
		}
		else{
			?>
            <div class="seat">  </div>
			
			<?php
		}   
    
         ?>
         
	<?php
    }

	
?>	
</div>  
<?php
}  

?>
	</div>
	<?php 
	
	echo "<form action='ticketConfirmation.php' method='post' >
						<input type='hidden' name='cost' value='".$price."'>
	 					<input type='hidden' name='movieId' value='".$movieId."'>
                        <input type='hidden' name='showOrderId' value='".$showOrderId."'>
						<input type='text' name='count' id='count' value=''>
							
						<input type='hidden' name='total' id='total' value=''>
						<input type='hidden' name='seat' id='seat' value=''>
                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Confirm Ticket' name='submit'>
                      </form>";

					

?>


    <script src="js/script.js"></script>
	
  </body>
</html>